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
		wad_in:in std_logic_vector(31 downto 0);
		alu_in:in std_logic_vector(31 downto 0);
		wad_out:out std_logic_vector(31 downto 0);
		alu_out:out std_logic_vector(31 downto 0);
		rd_out:out std_logic_vector(31 downto 0);
		clk,enable:in std_logic);
end Mem_WB;

architecture Behavioral of Mem_WB is

begin

MEMWB:process(clk)
begin
if (rising_edge(clk) and enable = '1') then
	alu_out <= alu_in;
	wad_out <= wad_in;
	rd_out <= rd_in;
end if;
end process;

end Behavioral;