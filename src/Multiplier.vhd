----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:27 04/02/2016 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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

entity Multiplier is
port(A,B:in std_logic_vector(31 downto 0);
OTP:out std_logic_vector(31 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

type AV is array(31 downto 0) of std_logic_vector(31 downto 0);

signal As:AV:=(others => (others => '0'));
signal Ans:AV:=(others => (others => '0'));

component mult_unit is
port(A:in std_logic_vector(31 downto 0);
Bi:in std_logic;
i:integer;
Oi:out std_logic_vector(31 downto 0));
end component;

component Adder4 is
port(A,B:in std_logic_vector(31 downto 0);
OTP:out std_logic_vector(31 downto 0));
end component;

signal otps:std_logic_vector(31 downto 0):=(others => '0');

begin


gen_mul: for i in 31 downto 0 generate
			x:mult_unit port map(A,B(i),i,As(i));
			end generate gen_mul;
			
add_all: for i in 31 downto 1 generate
			x:Adder4 port map(Ans(i),As(i),Ans(i-1));
			end generate add_all;
			
add_done: Adder4 port map(Ans(0),As(0),OTP);

end Behavioral;

