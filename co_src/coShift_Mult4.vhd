----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:10 04/20/2016 
-- Design Name: 
-- Module Name:    coShift_Mult4 - Behavioral 
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

entity coShift_Mult4 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));

end coShift_Mult4;

architecture Behavioral of coShift_Mult4 is

begin

SHIFT:process(select_bit,inp)
begin
if select_bit = '1' then
	outp(3 downto 0) <= "0000";
	outp(47 downto 4) <= inp(43 downto 0);
else
	outp <= inp;
end if;
end process;

end Behavioral;

