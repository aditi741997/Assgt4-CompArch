----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:06 04/20/2016 
-- Design Name: 
-- Module Name:    coShiftR_ALU - Behavioral 
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

entity coShiftR_ALU is
port(
	s_amt : in integer range 0 to 255;
	inp: in std_logic_Vector(25 downto 0);
	outp : out std_logic_Vector(25 downto 0)
);
end coShiftR_ALU;

architecture Behavioral of coShiftR_ALU is


signal shift_amt_int : integer range 0 to 255;
signal ans: std_logic_vector(25 downto 0);
signal shift: std_logic_vector(7 downto 0) := "00000000";
signal zeroes :std_logic_vector(25 downto 0) := "00000000000000000000000000";

begin

--shift <= s_amt;
--shift_amt_int <= conv_integer(shift);
shift_amt_int <= s_amt;

SHIFTR:process(shift_amt_int,inp)
begin
if (shift_amt_int > 26) then
else
	if (shift_amt_int > 0) then
		ans(25 downto (26 - shift_amt_int)) <= zeroes((shift_amt_int - 1) downto 0);
		ans((25 - shift_amt_int) downto 1) <= inp(25 downto (1 + shift_amt_int));
		if (inp(shift_amt_int downto 0) = zeroes(shift_amt_int downto 0)) then
			ans(0) <= '0';
		else
			ans(0) <= '1';
		end if;
	else
		ans(25 downto 0) <= inp(25 downto 0);
	end if;
end if;
end process;

outp <= ans;

end Behavioral;

