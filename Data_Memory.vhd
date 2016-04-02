----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:31 03/12/2016 
-- Design Name: 
-- Module Name:    Data_Memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Data_Memory is
port(ad:in std_logic_vector(31 downto 0);
wdDM:in std_logic_vector(31 downto 0);
MW,MR,clk:in std_logic;
rd:out std_logic_vector(31 downto 0));
end Data_Memory;

architecture Behavioral of Data_Memory is

type DM is array(0 to 511) of std_logic_vector(31 downto 0);
signal Data:DM:=("11110000111100001111000011110000",
"01010101010101010101010101010101",
"10101010101010101010101010101010",
"00110011001100110011001100110011",others => "00000000000000000000000000000000");
signal ad_Int:integer;

begin

ad_Int <= conv_integer(ad);

MWrite:process(MW,MR,ad,wdDM,clk)
begin
 if (MR = '1') then
  rd <= Data(conv_integer(ad));
 end if;
if (MW = '1') then
	if falling_edge(clk) then
		Data(conv_integer(ad)) <= wdDM;
	end if;
end if;
end process;

end Behavioral;

