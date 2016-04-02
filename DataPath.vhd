----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:49:23 04/02/2016 
-- Design Name: 
-- Module Name:    DataPath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DataPath is
port(clk,eIF_ID,eID_EX,eEX_Mem,eMem_WB:in STD_LOGIC;
	alu1_mux,alu2_mux:in STD_LOGIC_VECTOR(1 downto 0);
	DM_fwd:in std_logic;
	Rsrc,Psrc,RW,Asrc,MW,MR,M2R,II:in std_logic;
	s_type:in std_logic_vector(1 downto 0);
	s_amt:in std_logic_vector(4 downto 0);
	Opern,Fset:in std_logic_vector(3 downto 0);
	Mul_sel:in std_logic;
	Flags_out:out std_logic_vector(3 downto 0);
	Instruction:out std_logic_vector(31 downto 0)
	);
end DataPath;



architecture Behavioral of DataPath is

component Adder4 is
port(A,B:in std_logic_vector(31 downto 0);
OTP:out std_logic_vector(31 downto 0));
end component;

component ALU is
Port(
	a : in std_logic_vector (31 downto 0);
	b : in std_logic_vector (31 downto 0);
	c_in : in std_logic := '0';
	c : inout std_logic_vector (31 downto 0);
	operation : in std_logic_vector (3 downto 0);
	flag : out std_logic_vector (3 downto 0); --NZCV
	mul : in std_logic
);
end component;

component Data_Memory is
port(ad:in std_logic_vector(31 downto 0);
wdDM:in std_logic_vector(31 downto 0);
MW,MR,clk:in std_logic;
rd:out std_logic_vector(31 downto 0));
end component;

component EX_Mem is
port( alu_in:in std_logic_vector(31 downto 0);
		rd2:in std_logic_vector(31 downto 0);
		wad_in:in std_logic_vector(3 downto 0);
		wad_out:out std_logic_vector(3 downto 0);
		DM_ad:out std_logic_vector(31 downto 0);
		DM_wd:out std_logic_vector(31 downto 0);
		clk,enable:in std_logic);
end component;

component Flags is
port(
	flag_in : in std_logic_vector(3 downto 0);	--NZCV
	flag_out : out std_logic_vector(3 downto 0) := "0000";
	enable : in std_logic_vector(3 downto 0);
	clock : in std_logic
);
end component;

component ID_EX is
port(
	offset_in : in std_logic_vector(31 downto 0);
	rd1_in : in std_logic_vector(31 downto 0);
	rd2_in : in std_logic_vector(31 downto 0);
	imm8_in : in std_logic_vector(7 downto 0);
	imm12_in : in std_logic_vector(11 downto 0);
	wad_in : in std_logic_vector(3 downto 0);
	offset_out : out std_logic_vector(31 downto 0);
	rd1_out : out std_logic_vector(31 downto 0);
	rd2_out : out std_logic_vector(31 downto 0);
	imm8_out : out std_logic_vector(7 downto 0);
	imm12_out : out std_logic_vector(11 downto 0);
	wad_out : out std_logic_vector(3 downto 0);
	enable : in std_logic;
	clock : in std_logic
);
end component;

component IF_ID is
port(
	instruction_in : in std_logic_vector(31 downto 0);
	offset_out : out std_logic_vector(23 downto 0);
	Rn_out : out std_logic_vector(3 downto 0);
	Rm_out : out std_logic_vector(3 downto 0);
	Rd_out : out std_logic_vector(3 downto 0);
	imm8_out : out std_logic_vector(7 downto 0);
	imm12_out : out std_logic_vector(11 downto 0);
	enable : in std_logic;
	clock : in std_logic
);
end component;

component InMem is
port(PC:in std_logic_vector(31 downto 0);
Instr:out std_logic_vector(31 downto 0));
end component;

component Mem_WB is
port( rd:in std_logic_vector(31 downto 0);
		wad_in:in std_logic_vector(3 downto 0);
		alu_in:in std_logic_vector(31 downto 0);
		wad_out:out std_logic_vector(31 downto 0);
		alu_out:out std_logic_vector(31 downto 0);
		rd_out:out std_logic_vector(31 downto 0);
		clk,enable:in std_logic);
end component;

component Mux is
port(A,B:in std_logic_vector(31 downto 0);
control:in std_logic;
OTPT:out std_logic_vector(31 downto 0));
end component;

component Mux4 is
port(
	inval0 : in std_logic_vector(31 downto 0);
	inval1 : in std_logic_vector(31 downto 0);
	inval2 : in std_logic_vector(31 downto 0);
	inval3 : in std_logic_vector(31 downto 0);
	control : in std_logic_vector(1 downto 0);
	outval : out std_logic_vector(31 downto 0)
);
end component;

component PCtr is
port(clk:in std_logic;
in_pc:in std_logic_vector(31 downto 0);
out_pc:out std_logic_vector(31 downto 0));
end component;

component Register_Array is
port(
	rad1 : in std_logic_vector(3 downto 0);
	rad2 : in std_logic_vector(3 downto 0);
	wad : in std_logic_vector(3 downto 0);
	wd : in std_logic_vector(31 downto 0);
	regwrite : in std_logic := '0';	--1 for write
	rd1 : out std_logic_vector(31 downto 0);
	rd2 : out std_logic_vector(31 downto 0);
	clock : in std_logic
);
end component;

component shifter is
port(stype:in std_logic_vector(1 downto 0);
shift_amt:in std_logic_vector(4 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

component MiniMux is
port(A,B:in std_logic_vector(3 downto 0);
control:in std_logic;
OTPT:out std_logic_vector(3 downto 0));
end component;


	signal i0_psrc, i1_psrc, pc_in , pc_out: std_logic_vector(31 downto 0);
	
	signal current_ins : std_logic_vector(31 downto 0);
	
	signal offset_out_1 : std_logic_vector(23 downto 0);		--IF_ID output
	signal Rn_out : std_logic_vector(3 downto 0);
	signal Rm_out : std_logic_vector(3 downto 0);
	signal Rd_out : std_logic_vector(3 downto 0);
	signal imm8_out_1 : std_logic_vector(7 downto 0);
	signal imm12_out_1 : std_logic_vector(11 downto 0);

	signal offset_out_2 : 	std_logic_vector(31 downto 0);	--ID_EX output
	signal rd1_out : 	std_logic_vector(31 downto 0);
	signal rd2_out : 	std_logic_vector(31 downto 0);
	signal imm8_out_2 : 	std_logic_vector(7 downto 0);
	signal imm12_out_2 : std_logic_vector(11 downto 0);
	signal wad_out_2 : 	std_logic_vector(3 downto 0);

	signal wad_out_3: std_logic_vector(3 downto 0);		--EX_Mem output
	signal DM_ad: std_logic_vector(31 downto 0);
	signal DM_wd: std_logic_vector(31 downto 0);

	signal wad_out_4: std_logic_vector(31 downto 0);		--Mem_WB output
	signal alu_out: std_logic_vector(31 downto 0);
	signal rd_out_4: std_logic_vector(31 downto 0);


begin

PC : PCtr port map(
	clk,
	pc_in,
	pc_out
);

IM : InMem port map(
	pc_out,
	current_ins
);

MuxRF : MiniMux port map(
	
);

RF : 


end Behavioral;

