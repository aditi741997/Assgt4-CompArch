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
		wad_in:in std_logic_vector;
		wad_out:out std_logic_vector(31 downto 0);
		DM_ad:out std_logic_vector(31 downto 0);
		DM_wd:out std_logic_vector(31 downto 0);
		wad_out:out std_logic_vector;
		clk,enable:in std_logic);
end EX_Mem;

architecture Behavioral of EX_Mem is

begin

EXMem:process(clk)
begin
if (rising_edge(clk) and enable = '1') then
	DM_ad <= alu_in;
	DM_wd <= rd2;
	wad_out <= wad_in;
end if;
end process;

end Behavioral;

