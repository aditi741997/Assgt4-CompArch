--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:47:15 04/22/2016
-- Design Name:   
-- Module Name:   C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/co_src/Test_coProcessor.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: coProcessor
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
 
ENTITY Test_coProcessor IS
END Test_coProcessor;
 
ARCHITECTURE behavior OF Test_coProcessor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coProcessor
    PORT(
         clock : IN  std_logic;
         instruction : IN  std_logic_vector(31 downto 0);
         reg_data_in : IN  std_logic_vector(31 downto 0);
         result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal instruction : std_logic_vector(31 downto 0) := (others => '0');
   signal reg_data_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coProcessor PORT MAP (
          clock => clock,
          instruction => instruction,
          reg_data_in => reg_data_in,
          result => result
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 5 ns;
      -- insert stimulus here 
      instruction <= "11101110001000010000000000000010";
      wait for clock_period;
      instruction <= "11101110010000010000000000000010";
		wait for clock_period;
		instruction <= "00000000000000000000000000000000";
      wait;
   end process;

END;
--1110 1110 0010 0001 0000 00000000 0010
