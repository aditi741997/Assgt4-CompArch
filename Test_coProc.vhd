-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT coProcessor
          PORT(
	clock : in std_logic;
	instruction : in std_logic_vector(31 downto 0);
	reg_data_in : in std_logic_vector(31 downto 0);
	result : out std_logic_vector(31 downto 0)
);
          END COMPONENT;

          SIGNAL clock :  std_logic;
          SIGNAL instruction, reg_data_in, result:  std_logic_vector(31 downto 0);
          

   -- Clock period definitions
   constant clock_period : time := 10 ns;


  BEGIN

  -- Component Instantiation
          uut: coProcessor PORT MAP(
			 clock => clock,
			 instruction => instruction,
			 reg_data_in => reg_data_in,
			 result => result
          );
			 
	clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 5 ns;
      -- insert stimulus here 
      instruction <= "11101110001000010000000000000010";
      wait for clock_period;
      instruction <= "11101110010000010000000000000010";
		wait for clock_period;
		instruction <= "00000000000000000000000000000000";
      wait;

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
--1110 1110 0010 0001 0000 00000000 0010