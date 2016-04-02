-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT EX_Mem
	port( alu_in:in std_logic_vector(31 downto 0);
		rd2:in std_logic_vector(31 downto 0);
		wad_in:in std_logic_vector(3 downto 0);
		wad_out:out std_logic_vector(3 downto 0);
		DM_ad:out std_logic_vector(3 downto 0);
		DM_wd:out std_logic_vector(31 downto 0);
		clk,enable:in std_logic);
		END COMPONENT;          
		
		signal alu_in,rd2,DM_wd: std_logic_Vector(31 downto 0);
		signal wad_in,wad_out,DM_ad: std_logic_vector(3 downto 0);
		signal clk,enable: std_logic := '0';
		
		    constant clk_period : time := 20 ns;

		 BEGIN

  -- Component Instantiation
          uut: EX_Mem PORT MAP(
                  alu_in => alu_in,
						wad_in => wad_in,
						rd2 => rd2,
						wad_out => wad_out,
						DM_ad => DM_ad,
						DM_wd => DM_wd,
						enable => enable,
						clk => clk
          );

   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			enable <= '0';
        wait for 90 ns; -- wait until global set/reset completes
			enable <= '1';
			wad_in <= "0011";
			alu_in <= "01010101010101010101010101010101";
			rd2 <= "10011001100110011001100110011001";
			
			wait for 20 ns;
			
			wad_in <= "1111";
			alu_in <= "11111111111111111111111111111111";
			rd2 <= "00000000000000000000000000000000";

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
