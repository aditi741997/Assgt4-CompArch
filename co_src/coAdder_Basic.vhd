----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:41:26 04/20/2016 
-- Design Name: 
-- Module Name:    coAdder_Basic - Behavioral 
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

entity coAdder_Basic is
port(
	a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	input_control : in std_logic;
	c_out : out std_logic;
	s : out std_logic
);
end coAdder_Basic;

architecture Behavioral of coAdder_Basic is

begin
process (a,b,c,input_control)
	variable aa : std_logic;
begin
	
	if input_control = '1' then aa := not a;
	else aa := a;
	end if;

	c_out <= (aa and b) or ((aa xor b) and c);
	s <= aa xor b xor c;

end process;


end Behavioral;

