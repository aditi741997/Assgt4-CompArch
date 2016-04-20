----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:32 04/20/2016 
-- Design Name: 
-- Module Name:    coMultiplier - Behavioral 
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

-- OTP is 27 bit because this will be normalised by ShiftLR, which takes 27 bit input.
entity coMultiplier is
port(
	sig1,sig2 : in std_logic_Vector(23 downto 0);
	mult_out : out std_logic_Vector(26 downto 0)
);
end coMultiplier;

architecture Behavioral of coMultiplier is

signal a,b,mult_ans1:std_logic_Vector(47 downto 0);

type AV is array(23 downto 0) of std_logic_vector(47 downto 0);
-- 24 bit because it is always known that B's higher24 bits are always 0.
signal As:AV:=(others => (others => '0'));
signal Ans:AV:=(others => (others => '0'));

component coMult_Unit is
port(A:in std_logic_vector(47 downto 0);
Bi:in std_logic;
i:integer;
Oi:out std_logic_vector(47 downto 0));
end component;

component coAdder_Mult is
port(A,B:in std_logic_vector(47 downto 0);
OTP:out std_logic_vector(47 downto 0));
end component;

begin


gen_mul: for i in 23 downto 0 generate
			x:coMult_Unit port map(sig1,sig2(i),i,As(i));
			end generate gen_mul;
			
add_all: for i in 23 downto 1 generate
			x:coAdder_Mult port map(Ans(i),As(i),Ans(i-1));
			end generate add_all;
			
add_done: coAdder_Mult port map(Ans(0),As(0),mult_ans1);

mult_out(26 downto 0) <= mult_ans1(47 downto 21);


end Behavioral;

