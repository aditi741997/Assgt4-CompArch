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
port(
	clk,eIF_ID,eID_EX,eEX_Mem,eMem_WB:in STD_LOGIC;
	alu1_mux,alu2_mux:in STD_LOGIC_VECTOR(1 downto 0);
	DM_fwd:in std_logic;
	Rsrc,Psrc,RW,Asrc,MW,MR,M2R,II:in std_logic;
	s_type:in std_logic_vector(1 downto 0);
	s_amt:in std_logic_vector(4 downto 0);
	Opern,Fset:in std_logic_vector(3 downto 0);
	Mul_sel:in std_logic;
	Bubble : in std_logic;
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
		fwdCMux_in, M2RMux_in, RW_in, MW_in, MR_in : in std_logic;
		wad_out:out std_logic_vector(3 downto 0);
		DM_ad:out std_logic_vector(31 downto 0);
		DM_wd:out std_logic_vector(31 downto 0);
		fwdCMux_out, M2RMux_out, RW_out, MW_out, MR_out : out std_logic;
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
	offset_in : in std_logic_vector(23 downto 0);
	rd1_in : in std_logic_vector(31 downto 0);
	rd2_in : in std_logic_vector(31 downto 0);
	imm8_in : in std_logic_vector(7 downto 0);
	imm12_in : in std_logic_vector(11 downto 0);
	wad_in : in std_logic_vector(3 downto 0);
	IIMux_in, AsrcMux_in,  fwdCMux_in, 
	M2RMux_in, RW_in, MW_in, MR_in : in std_logic;
	ALUMux1_in, ALUMux2_in : in std_logic_vector(1 downto 0);
	offset_out : out std_logic_vector(23 downto 0);
	rd1_out : out std_logic_vector(31 downto 0);
	rd2_out : out std_logic_vector(31 downto 0);
	imm8_out : out std_logic_vector(7 downto 0);
	imm12_out : out std_logic_vector(11 downto 0);
	wad_out : out std_logic_vector(3 downto 0);
	IIMux_out, AsrcMux_out, fwdCMux_out, 
	M2RMux_out, RW_out, MW_out, MR_out : out std_logic;
	ALUMux1_out, ALUMux2_out : out std_logic_vector(1 downto 0);
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
	instruction_out : out std_logic_vector(31 downto 0);
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
		M2RMux_in, RW_in : in std_logic;
		wad_out:out std_logic_vector(3 downto 0);
		alu_out:out std_logic_vector(31 downto 0);
		rd_out:out std_logic_vector(31 downto 0);
		M2RMux_out, RW_out : out std_logic;
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

component MicroMux is
port(
	in0, in1 : in std_logic;
	enable : in std_logic;
	outp : out std_logic
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

	signal offset_out_2 : 	std_logic_vector(23 downto 0);	--ID_EX output
	signal rd1_out : 	std_logic_vector(31 downto 0);
	signal rd2_out : 	std_logic_vector(31 downto 0);
	signal imm8_out_2 : 	std_logic_vector(7 downto 0);
	signal imm12_out_2 : std_logic_vector(11 downto 0);
	signal wad_out_2 : 	std_logic_vector(3 downto 0);
	signal temp_2 : std_logic_vector(10 downto 0);

	signal wad_out_3: std_logic_vector(3 downto 0);		--EX_Mem output
	signal DM_ad: std_logic_vector(31 downto 0);
	signal DM_wd: std_logic_vector(31 downto 0);
	signal temp_3 : std_logic_vector(4 downto 0);

	signal wad_out_4: std_logic_vector(3 downto 0);		--Mem_WB output
	signal alu_out_4: std_logic_vector(31 downto 0);
	signal rd_out_4: std_logic_vector(31 downto 0);
	signal temp_4 : std_logic_vector(2 downto 0);

	signal muxRF_out : std_logic_vector(3 downto 0);
	signal RD1, RD2 : std_logic_vector(31 downto 0);
	signal IIMux_out : std_logic_vector(31 downto 0);
	signal Asrc_out : std_logic_vector(31 downto 0);
	signal fwdC_out : std_logic_vector(31 downto 0);
	signal M2R_out: std_logic_vector(31 downto 0);

	signal ext8,ext12,extOff: std_logic_vector(31 downto 0);

	signal alu1_in, alu2_in, alu_out: std_logic_vector(31 downto 0);

	signal Flag_In,Flag_Out:std_logic_vector(3 downto 0);

	signal DM_out:std_logic_vector(31 downto 0);
	signal PC4 : std_logic_vector(31 downto 0);
	signal RW_out, MW_out : std_logic;



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

IFID : IF_ID port map(
	current_ins,
	offset_out_1,
	Rn_out,
	Rm_out,
	Rd_out,
	imm8_out_1,
	imm12_out_1,
	Instruction,
	eIF_ID,
	clk
);

MuxRF : MiniMux port map(
	Rm_out,
	Rd_out,
	Rsrc,
	muxRF_out
);

RF : Register_Array port map(
	Rn_out,
	muxRF_out,
	wad_out_4,
	M2R_out,
	temp_4(0),
	RD1,
	RD2,
	clk
);

Bubble_RW : MicroMux port map(
	RW,
	'0',
	Bubble,
	RW_out
);

Bubble_MW : MicroMux port map(
	MW,
	'0',
	Bubble,
	MW_out
);

IDEX : ID_EX port map(
	offset_out_1,
	RD1,
	RD2,
	imm8_out_1,
	imm12_out_1,
	Rd_out,
	II,Asrc,DM_fwd,M2R,RW_out,MW_out,MR,
	alu1_mux, alu2_mux,
	offset_out_2,
	rd1_out,
	rd2_out,  	
	imm8_out_2, 
	imm12_out_2,
	wad_out_2,
	temp_2(6),temp_2(5),temp_2(4),temp_2(3),temp_2(2),temp_2(1),temp_2(0),
	temp_2(8 downto 7), temp_2(10 downto 9),
	eID_EX,
	clk
);

ext8(7 downto 0) <= imm8_out_2;
ext8(31 downto 8) <= "000000000000000000000000";

ext12(11 downto 0) <= imm12_out_2;
ext12(31 downto 12) <= "00000000000000000000";

IIMux : Mux port map(
	ext12,
	ext8,
	temp_2(6),
	IIMux_out
);

AsrcMux : Mux port map(
	rd2_out,
	IIMux_out,
	temp_2(5),
	Asrc_out
);


ALUMux1 : Mux4 port map(
	rd1_out,
	pc_out,
	DM_ad,
	M2R_out,
	temp_2(8 downto 7),
	alu1_in
);

extOff(23 downto 0) <= offset_out_2;
extOff(24) <= offset_out_2(23);
extOff(25) <= offset_out_2(23);
extOff(26) <= offset_out_2(23);
extOff(27) <= offset_out_2(23);
extOff(28) <= offset_out_2(23);
extOff(29) <= offset_out_2(23);
extOff(30) <= offset_out_2(23);
extOff(31) <= offset_out_2(23);

ALUMux2 : Mux4 port map(
	Asrc_out,
	extOff,
	DM_ad,
	M2R_out,
	temp_2(10 downto 9),
	alu2_in
);

ALU_sa : ALU port map(
	alu1_in,
	alu2_in,
	Flag_Out(1),
	alu_out,
	Opern,
	Flag_In,
	Mul_sel
);

EXMEM : EX_Mem port map(
	alu_out,
	rd2_out,
	wad_out_2,
	temp_2(4), temp_2(3), temp_2(2), temp_2(1), temp_2(0),
	wad_out_3,
	DM_ad,
	DM_wd,
	temp_3(4), temp_3(3), temp_3(2), temp_3(1), temp_3(0),
	clk,
	eEX_Mem
);

fwdC : Mux port map(
	DM_wd,
	M2R_out,
	temp_3(4),
	fwdC_out
);

DM : Data_Memory port map(
	DM_ad,
	fwdC_out,
	temp_3(1),
	temp_3(0),
	clk,
	DM_out
);

MemWB : Mem_WB port map(
	DM_out,
	wad_out_3,
	DM_ad,
	temp_3(3), temp_3(2),
	wad_out_4,
	alu_out_4,
	rd_out_4,
	temp_4(1), temp_4(0),
	clk,
	eMem_WB
);

M2RMux : Mux port map(
	alu_out_4,
	rd_out_4,
	temp_4(1),
	M2R_out
);

Flag : Flags port map(
	Flag_In,
	Flag_Out,
	Fset,
	clk
);

PsrcM : mux port map(
	PC4,
	alu_out,
	Psrc,
	pc_in
);

Add : Adder4 port map(
	pc_out,
	"00000000000000000000000000000001",
	PC4
);

end Behavioral;

