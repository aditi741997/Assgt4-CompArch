----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:20 03/13/2016 
-- Design Name: 
-- Module Name:    shift2 - Behavioral 
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

entity shift2 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end shift2;

architecture Behavioral of shift2 is


begin

SHIFT:process(select_bit,inp)
begin
if (select_bit = '1') then
 case shift_type is
  when "00" =>
  --logic left
  outp(0) <= '0';
  outp(1) <= '0';
  outp(31 downto 2) <= inp(29 downto 0);
  when "01" =>
  --logic right
  outp(31) <= '0';
  outp(30) <= '0';
  outp(29 downto 0) <= inp(31 downto 2);
  when "11" =>
  --arith right
  outp(31) <= inp(31);
  outp(30) <= inp(31);
  outp(29 downto 0) <= inp(31 downto 2);
  when "10" =>
  outp(31 downto 30) <= inp(1 downto 0);
  outp(29 downto 0) <= inp(31 downto 2);
  when others =>
  outp <= inp;
 end case;
else
 outp <= inp;
end if;

end process;

end Behavioral;

