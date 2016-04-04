----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name:    shifter - Behavioral 
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

entity shifter is
port(stype:in std_logic_vector(1 downto 0);
shift_amt:in std_logic_vector(4 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end shifter;

architecture Behavioral of shifter is

signal shifted:std_logic_vector(31 downto 0);
signal sh2:std_logic_vector(31 downto 0);
signal sh4:std_logic_vector(31 downto 0);
signal sh8:std_logic_vector(31 downto 0);
--signal sh16:std_logic_vector(31 downto 0);

component shift1 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:inout std_logic_vector(31 downto 0));
end component;

component shift2 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

component shift4 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

component shift8 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

component shift16 is
port(select_bit:in std_logic;
shift_type:in std_logic_vector(1 downto 0);
inp:in std_logic_vector(31 downto 0);
outp:out std_logic_vector(31 downto 0));
end component;

begin

--port maps.
s1:shift1 port map(shift_amt(0),stype,inp,shifted);
s2:shift2 port map(shift_amt(1),stype,shifted,sh2);
s4:shift4 port map(shift_amt(2),stype,sh2,sh4);
s8:shift8 port map(shift_amt(3),stype,sh4,sh8);
s16:shift16 port map(shift_amt(4),stype,sh8,outp);


end Behavioral;

