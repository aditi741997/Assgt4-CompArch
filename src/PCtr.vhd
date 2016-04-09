----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:19 03/12/2016 
-- Design Name: 
-- Module Name:    PCtr - Behavioral 
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

entity PCtr is
port(clk:in std_logic;
in_pc:in std_logic_vector(31 downto 0);
out_pc:out std_logic_vector(31 downto 0));
end PCtr;

architecture Behavioral of PCtr is

signal pc:std_logic_vector(31 downto 0):="00000000000000000000000000000000";


begin

 out_pc <= pc;

Clock:process(clk)
begin
if (clk = '1' and clk'event) then
 pc <= in_pc;

else
	null;
-- output present value
end if;
end process;

end Behavioral;

