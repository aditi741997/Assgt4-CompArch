----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:44 04/20/2016 
-- Design Name: 
-- Module Name:    coShifter_Mult - Behavioral 
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

entity coShifter_Mult is
port(shift_amt:in std_logic_vector(4 downto 0);
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end coShifter_Mult;

architecture Behavioral of coShifter_Mult is

signal sh1:std_logic_vector(47 downto 0);
signal sh2:std_logic_vector(47 downto 0);
signal sh4:std_logic_vector(47 downto 0);
signal sh8:std_logic_vector(47 downto 0);

component coShift_Mult1 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

component coShift_Mult2 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

component coShift_Mult4 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

component coShift_Mult8 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

component coShift_Mult16 is
port(select_bit:in std_logic;
inp:in std_logic_vector(47 downto 0);
outp:out std_logic_vector(47 downto 0));
end component;

begin

s1:coShift_Mult1 port map(shift_amt(0),inp,sh1);
s2:coShift_Mult2 port map(shift_amt(1),sh1,sh2);
s4:coShift_Mult4 port map(shift_amt(2),sh2,sh4);
s8:coShift_Mult8 port map(shift_amt(3),sh4,sh8);
s16:coShift_Mult16 port map(shift_amt(4),sh8,outp);



end Behavioral;

