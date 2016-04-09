----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:01 03/12/2016 
-- Design Name: 
-- Module Name:    Adder4 - Behavioral 
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


-- add 4 to PC
entity Adder4 is
port(A,B:in std_logic_vector(31 downto 0);
OTP:out std_logic_vector(31 downto 0));
end Adder4;

architecture Behavioral of Adder4 is

signal Cs:std_logic_vector(32 downto 0):="000000000000000000000000000000000";

component Adder4_Unit is
port(ai,bi,ci:in std_logic;
Si,Cii:out std_logic);
end component;

begin
-- add A,B.
-- make ripple carry adder for this too
gen_Adder: for i in 31 downto 0 generate
				add4: Adder4_Unit port map(A(i),B(i),Cs(i),OTP(i),Cs(i+1));
				end generate gen_Adder;

end Behavioral;

