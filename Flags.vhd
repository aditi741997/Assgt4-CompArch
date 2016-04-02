----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:32 03/11/2016 
-- Design Name: 
-- Module Name:    Flags - Behavioral 
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

entity Flags is
port(
	flag_in : in std_logic_vector(3 downto 0);	--NZCV
	flag_out : out std_logic_vector(3 downto 0) := "0000";
	enable : in std_logic_vector(3 downto 0);
	clock : in std_logic
);
end Flags;

architecture Behavioral of Flags is
	signal flag : std_logic_vector(3 downto 0) := "0000";
begin

process(clock)
begin
	if clock = '0' and clock'event then
		if enable(0) = '1' then flag(0) <= flag_in(0); else null; end if;
		if enable(1) = '1' then flag(1) <= flag_in(1); else null; end if;
		if enable(2) = '1' then flag(2) <= flag_in(2); else null; end if;
		if enable(3) = '1' then flag(3) <= flag_in(3); else null; end if;
	else null;
	end if;
end process;
	flag_out <= flag;
end Behavioral;

