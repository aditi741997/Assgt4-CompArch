----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:42:27 04/20/2016 
-- Design Name: 
-- Module Name:    coRegister_Array - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coRegister_Array is
port(
	rad1 : in std_logic_vector(3 downto 0);
	rad2 : in std_logic_vector(3 downto 0);
	wad : in std_logic_vector(3 downto 0);
	wd : in std_logic_vector(31 downto 0);
	regwrite : in std_logic := '0';	--1 for write
	rd1 : out std_logic_vector(31 downto 0);
	rd2 : out std_logic_vector(31 downto 0);
	clock : in std_logic
);
end coRegister_Array;

architecture Behavioral of coRegister_Array is
	type register_array is array (15 downto 0) of std_logic_vector(31 downto 0);
	signal reg : register_array := (others => (others => '0'));
begin

process(clock)
begin
	if clock = '0' and clock'event and regwrite = '1' then 
	reg(conv_integer(wad)) <= wd;
	else null;
	end if;
end process;
	rd1 <= reg(conv_integer(rad1));
	rd2 <= reg(conv_integer(rad2));

end Behavioral;

