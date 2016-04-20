----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:40:39 04/20/2016 
-- Design Name: 
-- Module Name:    coAdder8 - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coComparer23 is
Port(
	a : in std_logic_vector (25 downto 0);
	b : in std_logic_vector (25 downto 0);
	s : out std_logic
);
end coComparer23;

architecture Behavioral of coComparer23 is

	component coComparer_Basic is
	port(
		a : in std_logic;
		b : in std_logic;
		c_in : in std_logic;
		c_out : out std_logic
	);
	end component;

	signal carry : std_logic_vector(26 downto 0) := (others => '0');

begin

	GEN:
	for I in 0 to 25 generate
		coAdder : coComparer_Basic port map (a(I), b(I), carry(I), carry(I+1));
	end generate GEN;

	carry(0) <= '0';
	s <= carry(26);

end Behavioral;


