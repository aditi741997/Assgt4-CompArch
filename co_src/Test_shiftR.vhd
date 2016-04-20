--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:48:29 04/20/2016
-- Design Name:   
-- Module Name:   D:/Sem4/CompArch/Lab/Assgt4-CompArch/co_src/Test_shiftR.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: coShiftRight_ALU
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
 
ENTITY Test_shiftR IS
END Test_shiftR;
 
ARCHITECTURE behavior OF Test_shiftR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coShiftRight_ALU
    PORT(
			s_amt : in integer range 0 to 255;
			inp : IN  std_logic_vector(25 downto 0);
         outp : OUT  std_logic_vector(25 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s_amt : integer:= 0;
   signal inp : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal outp : std_logic_vector(25 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coShiftRight_ALU PORT MAP (
          s_amt => s_amt,
          inp => inp,
          outp => outp
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		s_amt <= 6;
		inp <= "10100000101010101011000000";

      wait;
   end process;

END;
