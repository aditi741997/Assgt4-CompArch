----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:16:28 04/03/2016 
-- Design Name: 
-- Module Name:    MiniMux - Behavioral 
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

entity MiniMux is
port(A,B:in std_logic_vector(3 downto 0);
control:in std_logic;
OTPT:out std_logic_vector(3 downto 0));
end MiniMux;

architecture Behavioral of MiniMux is

begin

Mux:process(control,A,B)
begin
if (control = '0') then OTPT <= A;
else OTPT <= B;
end if;
end process;

end Behavioral;

