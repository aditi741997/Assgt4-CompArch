----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:50:08 04/09/2016 
-- Design Name: 
-- Module Name:    MicroMux - Behavioral 
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

entity MicroMux is
port(
	in0, in1 : in std_logic;
	enable : in std_logic;
	outp : out std_logic
);
end MicroMux;

architecture Behavioral of MicroMux is

begin

Mux:process(enable,in0, in1)
begin
if (enable = '0') then outp <= in0;
else outp <= in1;
end if;
end process;

end Behavioral;

