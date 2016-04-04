----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:45 03/11/2016 
-- Design Name: 
-- Module Name:    Mux4 - Behavioral 
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

entity Mux4 is
port(
	inval0 : in std_logic_vector(31 downto 0);
	inval1 : in std_logic_vector(31 downto 0);
	inval2 : in std_logic_vector(31 downto 0);
	inval3 : in std_logic_vector(31 downto 0);
	control : in std_logic_vector(1 downto 0);
	outval : out std_logic_vector(31 downto 0)
);
end Mux4;

architecture Behavioral of Mux4 is
begin

process(inval0,inval1,inval2,inval3,control)
begin
	case control is
		when "00" => outval <= inval0;
		when "01" => outval <= inval1;
		when "10" => outval <= inval2;
		when "11" => outval <= inval3;
		when others => null;
	end case;
end process;

end Behavioral;

