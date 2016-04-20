----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:46:25 04/20/2016 
-- Design Name: 
-- Module Name:    coAdder_Mult - Behavioral 
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

entity coAdder_Mult is
port(A,B:in std_logic_vector(47 downto 0);
OTP:out std_logic_vector(47 downto 0));
end coAdder_Mult;

architecture Behavioral of coAdder_Mult is

signal Cs:std_logic_vector(32 downto 0):="000000000000000000000000000000000";

component coAdder_Basic is
end component;

begin

gen_Adder: for i in 47 downto 0 generate
				add4: coAdder_Basic port map(A(i),B(i),Cs(i),OTP(i),Cs(i+1));
				end generate gen_Adder;


end Behavioral;

