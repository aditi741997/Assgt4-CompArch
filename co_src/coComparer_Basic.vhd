----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:18 04/20/2016 
-- Design Name: 
-- Module Name:    coComparer_Basic - Behavioral 
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

entity coComparer_Basic is
port(
	a : in std_logic;
	b : in std_logic;
	c_in : in std_logic;
	c_out : out std_logic
);
end coComparer_Basic;

architecture Behavioral of coComparer_Basic is
begin
	process (a,b,c_in,)
	begin
		
		if a='1' and b='0' then c_out<='1';
		elsif a='0' and b='1' then c_out<='0';
		else c_out<=c_in;
		end if;

	end process;

end Behavioral;

