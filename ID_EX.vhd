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
	offset_in : in std_logic_vector(31 downto 0);
	rd1_in : in std_logic_vector(31 downto 0);
	rd2_in : in std_logic_vector(31 downto 0);
	imm8_in : in std_logic_vector(7 downto 0);
	imm12_in : in std_logic_vector(11 downto 0);
	wad_in : in std_logic_vector(3 downto 0);
	offset_out : in std_logic_vector(31 downto 0);
	rd1_out : in std_logic_vector(31 downto 0);
	rd2_out : in std_logic_vector(31 downto 0);
	imm8_out : in std_logic_vector(7 downto 0);
	imm12_out : in std_logic_vector(11 downto 0);
	wad_out : in std_logic_vector(3 downto 0);
	enable : in std_logic;
	clock : in std_logic
);
end ID_EX;

architecture Behavioral of ID_EX is
	signal offset : std_logic_vector(31 downto 0);
	signal rd1 : std_logic_vector(31 downto 0);
	signal rd2 : std_logic_vector(31 downto 0);
	signal imm8 : std_logic_vector(7 downto 0);
	signal imm12 : std_logic_vector(11 downto 0);
	signal wad : std_logic_vector(3 downto 0);
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
		offset_out <= offset;
		rd1_out <= rd1;
		rd2_out <= rd2;
		imm8_out <= imm8;
		imm12_out <= imm12;
		wad_out <= wad;
	end if;
end process



end Behavioral;

