----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:36 04/20/2016 
-- Design Name: 
-- Module Name:    coShiftLR_Nml - Behavioral 
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

entity coShiftLR_Nml is
port(
	inp : in std_logic_vector(27 downto 0);
	outp : out std_logic_vector(26 downto 0);
	s_amt : out integer range 0 to 26;
	left_right, is_zero : out std_logic
);
end coShiftLR_Nml;

architecture Behavioral of coShiftLR_Nml is

signal shift : integer range 0 to 24 := 0;
signal zeroes : std_logic_Vector(26 downto 0) := (others => '0');

begin

NML:process(inp)
variable i : integer range 0 to 25;
variable done : std_logic;
begin
if inp(27) = '1' then
	shift <= 1;
	left_right <= '0';
	is_zero <= '0';
	outp(26 downto 1) <= inp(27 downto 2);
	outp(0) <= inp(1) or inp(0);
	-- last bit is sticky bit. so if the last bit was 1, S should be 1.
else
	-- find the first 1.
	if inp(26) = '1' then
		outp(26 downto 0) <= inp(26 downto 0);
		shift <= 0;
		is_zero <= '0';
		left_right <= '0';
	else
		left_right <= '1';
		i := 25;
		done := '0';
		L: while (done = '0' and i > -1) loop
			if (inp(i) = '1') then
				done := '1';
			else
				i := i - 1;
			end if;
		end loop L;
		if done = '0' then
			is_Zero <= '1';
			shift <= 0;
			outp <= zeroes;
		else
			is_zero <= '0';
			shift <= (26 - i);
			outp(26 downto (26 - i)) <= inp( (i) downto 0);
			outp((25 - i) downto 0) <= zeroes((25 - i) downto 0);
		end if;
	end if;
end if;
end process;

s_amt <= shift;

end Behavioral;

