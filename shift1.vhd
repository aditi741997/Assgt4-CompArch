----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name:    shift1 - Behavioral 
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

entity shift1 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:inout std_logic_vector(31 downto 0));
end shift1;

architecture Behavioral of shift1 is

begin


SHIFT:process(select_bit,inp,shift_type)
begin
if select_bit = '1' then
 case shift_type is
  when "00" =>
  --logic left
  outp(0) <= '0';
  outp(31 downto 1) <= inp(30 downto 0);
  when "01" =>
  --logic right
  outp(31) <= '0';
  outp(30 downto 0) <= inp(31 downto 1);
  when "11" =>
  --arith right
  outp(31) <= inp(31);
  outp(30 downto 0) <= inp(31 downto 1);
  when "10" =>
  outp(31) <= inp(0);
  outp(30 downto 0) <= inp(31 downto 1);
  when others =>
  null;
 end case;
 else outp(31 downto 0) <= inp(31 downto 0);
 end if;
end process;

end Behavioral;

