----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:42 03/12/2016 
-- Design Name: 
-- Module Name:    Adder4_Unit - Behavioral 
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

entity Adder4_Unit is
port(ai,bi,ci:in std_logic;
Si,Cii:out std_logic);
end Adder4_Unit;

architecture Behavioral of Adder4_Unit is

begin
Si <= (ai xor bi) xor ci;
Cii <= (ai and bi) or (ci and (ai xor bi));
end Behavioral;

