----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:20 04/02/2016 
-- Design Name: 
-- Module Name:    IF_ID - Behavioral 
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

entity IF_ID is
port(
	instruction_in : in std_logic_vector(31 downto 0);
	ALU_opern_in : in std_logic_vector(3 downto 0);
	Psrc_in : in std_logic;
	PC4_in : in std_logic_Vector(31 downto 0);
	PC4_offset_in : in std_logic_vector(31 downto 0);
	offset_out : out std_logic_vector(23 downto 0);
	Rn_out : out std_logic_vector(3 downto 0);
	Rm_out : out std_logic_vector(3 downto 0);
	Rd_out : out std_logic_vector(3 downto 0);
	imm8_out : out std_logic_vector(7 downto 0);
	imm12_out : out std_logic_vector(11 downto 0);
	instruction_out : out std_logic_vector(31 downto 0);
	ALU_opern_out : out std_logic_vector(3 downto 0);
	Psrc_out : out std_logic;
	PC4_out : out std_logic_vector(31 downto 0);
	PC4_offset_out : out std_logic_vector(31 downto 0);
	enable : in std_logic;
	clock : in std_logic
);
end IF_ID;

architecture Behavioral of IF_ID is
signal ins, PC4 : std_logic_vector(31 downto 0);
signal ALU_opern : std_logic_vector(3 downto 0);
signal Psrc : std_logic;
signal PC4_offset : std_logic_vector(31 downto 0);

begin

process(clock)
begin
	if clock'event and clock = '1' and enable = '1' then
		ins <= instruction_in;
		ALU_opern <= ALU_opern_in;
		Psrc <= Psrc_in;
		PC4 <= PC4_in;
		PC4_offset <= PC4_offset_in;	

	end if;
end process;

		offset_out <= ins(23 downto 0);
		Rn_out <= ins(19 downto 16);
		Rm_out <= ins(3 downto 0);
		Rd_out <= ins(15 downto 12);
		imm8_out <= ins(7 downto 0);
		imm12_out <= ins(11 downto 0);
		instruction_out <= ins;
		ALU_opern_out <= ALU_opern;
		Psrc_out <= Psrc;
		PC4_out <= PC4;
		PC4_offset_out <= PC4_offset;

end Behavioral;
