--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:01 04/04/2016
-- Design Name:   
-- Module Name:   D:/Sem3/DHD/Assgt4_SA/src/Test_DataPath.vhd
-- Project Name:  Assgt4_SA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DataPath
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
 
ENTITY Test_DataPath IS
END Test_DataPath;
 
ARCHITECTURE behavior OF Test_DataPath IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DataPath
    PORT(
         clk : IN  std_logic;
         eIF_ID : IN  std_logic;
         eID_EX : IN  std_logic;
         eEX_Mem : IN  std_logic;
         eMem_WB : IN  std_logic;
         alu1_mux : IN  std_logic_vector(1 downto 0);
         alu2_mux : IN  std_logic_vector(1 downto 0);
         DM_fwd : IN  std_logic;
         Rsrc : IN  std_logic;
         Psrc : IN  std_logic;
         RW : IN  std_logic;
         Asrc : IN  std_logic;
         MW : IN  std_logic;
         MR : IN  std_logic;
         M2R : IN  std_logic;
         II : IN  std_logic;
         s_type : IN  std_logic_vector(1 downto 0);
         s_amt : IN  std_logic_vector(4 downto 0);
         Opern : IN  std_logic_vector(3 downto 0);
         Fset : IN  std_logic_vector(3 downto 0);
         Mul_sel : IN  std_logic;
         Flags_out : OUT  std_logic_vector(3 downto 0);
         Instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal eIF_ID : std_logic := '0';
   signal eID_EX : std_logic := '0';
   signal eEX_Mem : std_logic := '0';
   signal eMem_WB : std_logic := '0';
   signal alu1_mux : std_logic_vector(1 downto 0) := (others => '0');
   signal alu2_mux : std_logic_vector(1 downto 0) := (others => '0');
   signal DM_fwd : std_logic := '0';
   signal Rsrc : std_logic := '0';
   signal Psrc : std_logic := '0';
   signal RW : std_logic := '0';
   signal Asrc : std_logic := '0';
   signal MW : std_logic := '0';
   signal MR : std_logic := '0';
   signal M2R : std_logic := '0';
   signal II : std_logic := '0';
   signal s_type : std_logic_vector(1 downto 0) := (others => '0');
   signal s_amt : std_logic_vector(4 downto 0) := (others => '0');
   signal Opern : std_logic_vector(3 downto 0) := (others => '0');
   signal Fset : std_logic_vector(3 downto 0) := (others => '0');
   signal Mul_sel : std_logic := '0';

 	--Outputs
   signal Flags_out : std_logic_vector(3 downto 0);
   signal Instruction : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DataPath PORT MAP (
          clk => clk,
          eIF_ID => eIF_ID,
          eID_EX => eID_EX,
          eEX_Mem => eEX_Mem,
          eMem_WB => eMem_WB,
          alu1_mux => alu1_mux,
          alu2_mux => alu2_mux,
          DM_fwd => DM_fwd,
          Rsrc => Rsrc,
          Psrc => Psrc,
          RW => RW,
          Asrc => Asrc,
          MW => MW,
          MR => MR,
          M2R => M2R,
          II => II,
          s_type => s_type,
          s_amt => s_amt,
          Opern => Opern,
          Fset => Fset,
          Mul_sel => Mul_sel,
          Flags_out => Flags_out,
          Instruction => Instruction
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;
		
          eIF_ID <= '1';
          eID_EX <= '1';
          eEX_Mem <= '1';
          eMem_WB <= '1';
          alu1_mux <= "00";
          alu2_mux <= "00";
          DM_fwd <= '1';
          Rsrc <= '0';
          Psrc <= '0';
          RW <= '1';
          Asrc <= '0';
          MW <= '0';
          MR <= '1';
          M2R <= '0';
          II <= '0';
          s_type <= "00";
          s_amt <= "00000";
          Opern <= "0100";
          Fset <= "0000";
          Mul_sel <= '0';

		
      wait for clk_period;		
		
		
		wait for clk_period;
		
		wait for clk_period;
		
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
