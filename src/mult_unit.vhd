----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:35 03/13/2016 
-- Design Name: 
-- Module Name:    mult_unit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mult_unit is
port(A:in std_logic_vector(31 downto 0);
Bi:in std_logic;
i:integer;
Oi:out std_logic_vector(31 downto 0));
end mult_unit;

architecture Behavioral of mult_unit is

component shifter is
port(stype:in std_logic_vector(1 downto 0);
shift_amt:in std_logic_vector(4 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

signal a0:std_logic_vector(31 downto 0);
signal x:std_logic_vector(4 downto 0);

begin

x <= std_logic_vector(to_unsigned(i,5));
ShiftI:shifter port map("00",x,A,a0);


OTP:process(Bi,i,A,a0)
begin
if (Bi = '0') then
Oi <= "00000000000000000000000000000000";
else
Oi <= a0;
end if;

end process;

end Behavioral;

