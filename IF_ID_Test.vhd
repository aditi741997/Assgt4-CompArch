--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:11:16 04/02/2016
-- Design Name:   
-- Module Name:   D:/Sem3/DHD/Assgt4_SA/src/IF_ID_Test.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IF_ID
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
 
ENTITY IF_ID_Test IS
END IF_ID_Test;
 
ARCHITECTURE behavior OF IF_ID_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IF_ID
    PORT(
         instruction_in : IN  std_logic_vector(31 downto 0);
         offset_out : OUT  std_logic_vector(23 downto 0);
         Rn_out : OUT  std_logic_vector(3 downto 0);
         Rm_out : OUT  std_logic_vector(3 downto 0);
         Rd_out : OUT  std_logic_vector(3 downto 0);
         imm8_out : OUT  std_logic_vector(7 downto 0);
         imm12_out : OUT  std_logic_vector(11 downto 0);
         enable : IN  std_logic;
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal instruction_in : std_logic_vector(31 downto 0) := (others => '0');
   signal enable : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal offset_out : std_logic_vector(23 downto 0);
   signal Rn_out : std_logic_vector(3 downto 0);
   signal Rm_out : std_logic_vector(3 downto 0);
   signal Rd_out : std_logic_vector(3 downto 0);
   signal imm8_out : std_logic_vector(7 downto 0);
   signal imm12_out : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IF_ID PORT MAP (
          instruction_in => instruction_in,
          offset_out => offset_out,
          Rn_out => Rn_out,
          Rm_out => Rm_out,
          Rd_out => Rd_out,
          imm8_out => imm8_out,
          imm12_out => imm12_out,
          enable => enable,
          clock => clock
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
      wait for 95 ns;	
		
		enable <= '1';
		instruction_in <= "01010101010101010101010101010101";
		
		wait for 10 ns;
		enable <= '0';
		instruction_in <= "11001100110011001100110011001100";
		
		wait for 10 ns;
		enable <= '1';


      -- insert stimulus here 

      wait;
   end process;

END;
