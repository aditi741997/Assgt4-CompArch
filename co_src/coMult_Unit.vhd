----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:54 04/20/2016 
-- Design Name: 
-- Module Name:    coMult_Unit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coMult_Unit is
port(A:in std_logic_vector(47 downto 0);
Bi:in std_logic;
i:integer;
Oi:out std_logic_vector(47 downto 0));
end coMult_Unit;

architecture Behavioral of coMult_Unit is

component coShifter_Mult is
port(shift_amt:in std_logic_vector(4 downto 0);
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

signal a0:std_logic_vector(31 downto 0);
signal x:std_logic_vector(4 downto 0);

begin

x <= std_logic_vector(to_unsigned(i,5));
ShiftI:shifter port map(x,A,a0);

OTP:process(Bi,i,A,a0)
begin
if (Bi = '0') then
Oi <= "000000000000000000000000000000000000000000000000";
else
Oi <= a0;
end if;

end process;


end Behavioral;

