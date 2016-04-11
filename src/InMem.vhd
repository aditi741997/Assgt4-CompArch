----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:15 03/12/2016 
-- Design Name: 
-- Module Name:    InMem - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InMem is
port(PC:in std_logic_vector(31 downto 0);
Instr:out std_logic_vector(31 downto 0));
end InMem;

architecture Behavioral of InMem is
-- array of vectors. 
type IM is array(0 to 1023) of std_logic_vector(31 downto 0);

signal IMemory:IM:=(others => (others => '0'));
signal InstNo:integer:=0;

-- 1101: mov.

begin

InstNo <= conv_integer(PC);
Instr <= IMemory(InstNo);

IMemory(0) <= "11100011101000000000000000000011"; -- mov
IMemory(1) <= "11100011101000000001000000000100"; -- mov
IMemory(2) <= "11100011101000000010000000001000"; -- mov
IMemory(3) <= "11100011101000000011000000010000"; -- mov
IMemory(4) <= "11100000100000011111000000000000"; -- add
IMemory(5) <= "11100101100000000010000000000000"; -- str r2, [r0]
IMemory(6) <= "11100101000100011110000000000011";
IMemory(7) <= "11100000000000101100001010010001";
IMemory(8) <= "11100000100000011111001000000000";

end Behavioral;

