--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:04:03 04/20/2016
-- Design Name:   
-- Module Name:   D:/Sem4/CompArch/Lab/Assgt4-CompArch/co_src/Test_coMult.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: coMultiplier
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_coMult IS
END Test_coMult;
 
ARCHITECTURE behavior OF Test_coMult IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coMultiplier
    PORT(
         sig1 : IN  std_logic_vector(23 downto 0);
         sig2 : IN  std_logic_vector(23 downto 0);
         mult_out : OUT  std_logic_vector(26 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sig1 : std_logic_vector(23 downto 0) := (others => '0');
   signal sig2 : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal mult_out : std_logic_vector(26 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coMultiplier PORT MAP (
          sig1 => sig1,
          sig2 => sig2,
          mult_out => mult_out
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		sig1 <= "110000000000000000000000";
		sig2 <= "110000000000000000000000";

      wait;
   end process;

END;
