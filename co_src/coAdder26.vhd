----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:38 04/20/2016 
-- Design Name: 
-- Module Name:    coAdder26 - Behavioral 
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

entity coAdder26 is
Port(
	a : in std_logic_vector (23 downto 0);
	b : in std_logic_vector (23 downto 0);
	c_in : in std_logic := '0';
	input_control : in std_logic;
	c : out std_logic_vector (23 downto 0);
	c_out : out std_logic
);
end coAdder26;

architecture Behavioral of coAdder26 is

	component coAdder_Basic is
	port(
		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		input_control : in std_logic;
		c_out : out std_logic;
		s : out std_logic
	);
	end component;

	signal carry : std_logic_vector(24 downto 0) := (others => '0');

begin

	GEN:
	for I in 0 to 23 generate
		coAdder : coAdder_Basic port map (a(I), b(I), carry(I), input_control, carry(I+1), c(I));
	end generate GEN;

	carry(0) <= c_in;
	c_out <= carry(24);

end Behavioral;

