----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:51:50 03/10/2016 
-- Design Name: 
-- Module Name:    ALU_Basic - Behavioral 
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

entity ALU_Basic is
port(
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	input_control : in std_logic_vector(1 downto 0);
	operation : in std_logic_vector(1 downto 0);
	c_out : out std_logic;
	s : out std_logic
);
end ALU_Basic;

architecture Behavioral of ALU_Basic is

begin
process (a,b,c,input_control,operation)
	variable aa : std_logic;
	variable bb : std_logic;
begin
	
	if input_control(1) = '1' then aa := '0';
	else aa := a;
	end if;
	if input_control(0) = '1' then bb := not b;
	else bb := b;
	end if;
	c_out <= (aa and bb) or ((aa xor bb) and c);
	
	case operation is
		when "00" => s <= aa and bb;
		when "01" => s <= aa or bb;
		when "10" => s <= aa xor bb;
		when "11" => s <= aa xor bb xor c;
		when others => null;
	end case;
end process;

end Behavioral;
