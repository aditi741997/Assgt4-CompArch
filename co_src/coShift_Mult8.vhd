----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:28:41 04/20/2016 
-- Design Name: 
-- Module Name:    coShift_Mult8 - Behavioral 
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

entity coShift_Mult8 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end coShift_Mult8;

architecture Behavioral of coShift_Mult8 is

begin

SHIFT:process(select_bit,inp)
begin
if select_bit = '1' then
	outp(7 downto 0) <= "00000000";
	outp(47 downto 8) <= inp(39 downto 0);
else
	outp <= inp;
end if;
end process;

end Behavioral;

