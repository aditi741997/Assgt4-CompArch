----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:17 04/11/2016 
-- Design Name: 
-- Module Name:    Branch_Predictor - Behavioral 
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

entity Branch_Predictor is
port(
	curr_inst : in std_logic_Vector(31 downto 0);
	branch_pred : out std_logic
);
end Branch_Predictor;

architecture Behavioral of Branch_Predictor is

-- if the instr is branch then
-- just check the sign of offset. -ve -> return 1

signal inst_type : std_logic_Vector(1 downto 0);
signal up_Down : std_logic;


begin

inst_type <= curr_inst(27 downto 26);
up_Down <= curr_inst(23);

BP:process(curr_inst, inst_type, up_Down)
begin
if inst_type = "10" then
	if up_Down = '1' then
		branch_pred <= '0';
	else
		branch_pred <= '1';
	end if;
else
	branch_pred <= '0';
end if;
end process;

end Behavioral;

