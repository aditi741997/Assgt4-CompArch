----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:50 04/02/2016 
-- Design Name: 
-- Module Name:    EX_Mem - Behavioral 
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

entity EX_Mem is
port( alu_in:in std_logic_vector(31 downto 0);
		rd2:in std_logic_vector(31 downto 0);
		wad_in:in std_logic_vector(3 downto 0);
		fwdCMux_in, M2RMux_in, RW_in, MW_in, MR_in : in std_logic;
		ALU_opern_in : in std_logic_vector(3 downto 0);
		EXMEM_inst_in : in std_logic_Vector(31 downto 0);
		wad_out:out std_logic_vector(3 downto 0);
		DM_ad:out std_logic_vector(31 downto 0);
		DM_wd:out std_logic_vector(31 downto 0);
		fwdCMux_out, M2RMux_out, RW_out, MW_out, MR_out : out std_logic;
		ALU_opern_out : out std_logic_vector(3 downto 0);
		EXMEM_inst_out : out std_logic_vector(31 downto 0);
		clk,enable:in std_logic);
end EX_Mem;

architecture Behavioral of EX_Mem is

signal aluIN,rd22: std_logic_vector(31 downto 0);
signal wadIN: std_logic_vector(3 downto 0);
signal fwdCMux, M2RMux, RW, MW, MR : std_logic;
signal ALU_opern : std_logic_vector(3 downto 0);
signal EXMEM_inst : std_logic_vector(31 downto 0);

begin

EXMem:process(clk)
begin
if (rising_edge(clk) and enable = '1') then
	aluIN <= alu_in;
	rd22 <= rd2;
	wadIN <= wad_in;
	fwdCMux <= fwdCMux_in;
	M2RMux <= M2RMux_in;
	RW <= RW_in;
	MW <= MW_in;
	MR <= MR_in;
	ALU_opern <= ALU_opern_in;
	EXMEM_inst <= EXMEM_inst_in;
	

end if;
end process;
	DM_ad <= aluIN;
	DM_wd <= rd22;
	wad_out <= wadIN;
	fwdCMux_out <= fwdCMux;
	M2RMux_out <= M2RMux;
	RW_out <= RW;
	MW_out <= MW;
	MR_out <= MR;
	ALU_opern_out <= ALU_opern;
	EXMEM_inst_out <= EXMEM_inst;
	
end Behavioral;
