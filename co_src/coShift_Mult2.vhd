----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:40 04/20/2016 
-- Design Name: 
-- Module Name:    coShift_Mult2 - Behavioral 
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

entity coShift_Mult2 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end coShift_Mult2;

architecture Behavioral of coShift_Mult2 is

begin

SHIFT:process(select_bit,inp)
begin
if select_bit = '1' then
	outp(1 downto 0) <= "00";
	outp(47 downto 2) <= inp(45 downto 0);
else
	outp <= inp;
end if;
end process;


end Behavioral;

