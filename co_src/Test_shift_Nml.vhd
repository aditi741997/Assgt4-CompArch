--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:53:01 04/20/2016
-- Design Name:   
-- Module Name:   D:/Sem4/CompArch/Lab/Assgt4-CompArch/co_src/Test_shift_Nml.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: coShiftLR_Nml
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
 
ENTITY Test_shift_Nml IS
END Test_shift_Nml;
 
ARCHITECTURE behavior OF Test_shift_Nml IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coShiftLR_Nml
    PORT(
         inp : IN  std_logic_vector(26 downto 0);
         outp : OUT  std_logic_vector(25 downto 0);
         s_amt : OUT  integer range 0 to 26;
         left_right : OUT  std_logic;
         is_zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic_vector(26 downto 0) := (others => '0');

 	--Outputs
   signal outp : std_logic_vector(25 downto 0);
   signal s_amt : integer range 0 to 26;
   signal left_right : std_logic;
   signal is_zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coShiftLR_Nml PORT MAP (
          inp => inp,
          outp => outp,
          s_amt => s_amt,
          left_right => left_right,
          is_zero => is_zero
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

   --   wait for <clock>_period*10;
		inp <= "100000000000000000000010000";
      -- insert stimulus here 
		wait for 20 ns;
		inp <= "010101000011010100001001010";
		
		wait for 20 ns;
		inp <= "000001000100000100010000010";
		
		wait for 20 ns;
		inp <= "000000000000000000000000001";
		
		wait for 20 ns;
		inp <= "000000000000000000000000000";

      wait;
   end process;

END;
