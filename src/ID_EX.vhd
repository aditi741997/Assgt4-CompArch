----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:37 04/02/2016 
-- Design Name: 
-- Module Name:    ID_EX - Behavioral 
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

entity ID_EX is
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
end ID_EX;

architecture Behavioral of ID_EX is
	signal offset : std_logic_vector(23 downto 0);
	signal rd1 : std_logic_vector(31 downto 0);
	signal rd2 : std_logic_vector(31 downto 0);
	signal imm8 : std_logic_vector(7 downto 0);
	signal imm12 : std_logic_vector(11 downto 0);
	signal wad : std_logic_vector(3 downto 0);
	signal IIMux, AsrcMux, fwdCMux, M2RMux, RW, MW, MR : std_logic;
	signal ALUMux1, ALUMux2 : std_logic_vector(1 downto 0);
begin

process(clock)
begin
	if clock'event and clock = '1' and enable = '1' then
		offset <= offset_in;
		rd1 <= rd1_in;
		rd2 <= rd2_in;
		imm8 <= imm8_in;
		imm12 <= imm12_in;
		wad <= wad_in;
		IIMux <= IIMux_in;
		AsrcMux <= AsrcMux_in;
		fwdCMux <=  fwdCMux_in;
		M2RMux <= M2RMux_in;
		RW <= RW_in;
		MR <= MR_in;
		ALUMux1 <= ALUMux1_in;
		ALUMux2 <= ALUMux2_in;

		offset_out <= offset;
		rd1_out <= rd1;
		rd2_out <= rd2;
		imm8_out <= imm8;
		imm12_out <= imm12;
		wad_out <= wad;
		IIMux_out <= IIMux;
		AsrcMux_out <= AsrcMux;
		fwdCMux_out <= fwdCMux ;
		M2RMux_out <= M2RMux ;
		RW_out <= RW;
		MR_out <= MR;
		ALUMux1_out <= ALUMux1;
		ALUMux2_out <= ALUMux2;

	end if;
end process;



end Behavioral;