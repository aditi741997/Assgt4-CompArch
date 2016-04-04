----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:03:14 04/02/2016 
-- Design Name: 
-- Module Name:    Mem_WB - Behavioral 
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

entity Mem_WB is
port( rd:in std_logic_vector(31 downto 0);
		wad_in:in std_logic_vector(3 downto 0);
		alu_in:in std_logic_vector(31 downto 0);
		M2RMux_in, RW_in : in std_logic;
		wad_out:out std_logic_vector(3 downto 0);
		alu_out:out std_logic_vector(31 downto 0);
		rd_out:out std_logic_vector(31 downto 0);
		M2RMux_out, RW_out : out std_logic;
		clk,enable:in std_logic);
end Mem_WB;

architecture Behavioral of Mem_WB is

signal rd1,aluIN:std_logic_vector(31 downto 0);
signal wadIN:std_logic_vector(3 downto 0);
signal M2RMux, RW : in std_logic;

begin

MEMWB:process(clk)
begin
if (rising_edge(clk) and enable = '1') then
	rd1 <= rd;
	aluIN <= alu_in;
	wadIN <= wad_in;
	M2RMux <= M2RMux_in;
	RW <= RW_in;
	
	alu_out <= aluIN;
	wad_out <= wadIN;
	rd_out <= rd1;
	M2RMux_out <= M2RMux;
	RW_out <= RW;
end if;
end process;
