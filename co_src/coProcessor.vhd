----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:43:11 04/20/2016 
-- Design Name: 
-- Module Name:    coProcessor - Behavioral 
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

entity coProcessor is
port(
	clock : in std_logic;
	instruction : in std_logic_vector(31 downto 0);
	result : out std_logic_vector(31 downto 0)
);
end coProcessor;

architecture Behavioral of coProcessor is

	component coRegister_Array is
	port(
		rad1 : in std_logic_vector(3 downto 0);
		rad2 : in std_logic_vector(3 downto 0);
		wad : in std_logic_vector(3 downto 0);
		wd : in std_logic_vector(31 downto 0);
		regwrite : in std_logic := '0';	--1 for write
		rd1 : out std_logic_vector(31 downto 0);
		rd2 : out std_logic_vector(31 downto 0);
		clock : in std_logic
	);
	end component;

	component coAdder23 is
	Port(
		a : in std_logic_vector (25 downto 0);
		b : in std_logic_vector (25 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (25 downto 0);
		c_out : out std_logic
	);
	end component;

	component coAdder8 is
	Port(
		a : in std_logic_vector (25 downto 0);
		b : in std_logic_vector (25 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (25 downto 0);
		c_out : out std_logic
	);
	end component;

	component coComparer8 is
	Port(
		a : in std_logic_vector (7 downto 0);
		b : in std_logic_vector (7 downto 0);
		s : out std_logic
	);
	end component;

	component coComparer23 is
	Port(
		a : in std_logic_vector (25 downto 0);
		b : in std_logic_vector (25 downto 0);
		s : out std_logic
	);
	end component;

	component coShiftR_ALU is
	port(
		s_amt : in integer range 0 to 255;
		inp: in std_logic_Vector(25 downto 0);
		outp : out std_logic_Vector(25 downto 0)
	);
	end component;

	component coShiftLR_Nml is
	port(
		inp : in std_logic_vector(26 downto 0);
		outp : out std_logic_vector(25 downto 0);
		s_amt : out integer range 0 to 26;
		left_right, is_zero : out std_logic
	);
	end component;
	
	component coAdder26 is
	Port(
		a : in std_logic_vector (22 downto 0);
		b : in std_logic_vector (22 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (22 downto 0);
		c_out : out std_logic
	);
	end component;

signal cp_opc, cRn, cRd, cRm : std_logic_vector(3 downto 0);
signal fp1, fp2, cWd : std_logic_vector(31 downto 0);
signal regwrite : std_logic;

signal exp1, exp2 : std_logic_vector(7 downto 0);
signal sig1, sig2, a, b : std_logic_vector(25 downto 0);
signal sign1, sign2 : std_logic;

signal small_ALU_exp1, small_ALU_exp2, exp_diff : std_logic_vector(7 downto 0);
signal comp8_result, comp23_result, small_ALU_c_out : std_logic;

signal shiftR_amt : integer;
signal shiftR_outp : std_logic_vector(25 downto 0);

signal Big_ALU_cin, Big_ALU_cout, Big_ALU_input_control : std_logic;
signal Big_ALU_output : std_logic_vector(25 downto 0);




-- Normalisn
signal BigALU_norm_in : std_logic_Vector(26 downto 0);
signal Big_ALU_out_norm : std_logic_vector(25 downto 0);
signal norm_shift_Exp : integer range 0 to 26;
signal norm_shift_lr, norm_iszero : std_logic;
signal final_ALU_mentissa : std_logic_Vector(22 downto 0);
signal final_ALU_expo,  ALU_expo_norm1 : std_logic_vector(7 downto 0);
signal norm_changeExpo : std_logic_vector(7 downto 0);
signal norm_again : std_logic;

begin
	cp_opc <= instruction(23 downto 20);
	cRn <= instruction(19 downto 16);
	cRd <= instruction(15 downto 12);
	cRm <= instruction(3 downto 0);
	sig1(2 downto 0) <= "000";
	sig1(24 downto 3) <= fp1(22 downto 0);
	sig1(25) <= '1';
	sig2(2 downto 0) <= "000";
	sig2(24 downto 3) <= fp2(22 downto 0);
	sig2(25) <= '1';
	exp1 <= fp1(30 downto 23);
	exp2 <= fp2(30 downto 23);
	sign1 <= fp1(31);
	sign2 <= fp2(31);

	RF : coRegister_Array port map(
		cRn, cRm, cRd,
		cWd, regwrite,
		fp1, fp2,
		clock
	);

	Comp8 : coComparer8 port map(
		exp1, exp2, comp8_result
	);

	Comp23 : coComparer23 port map(
		sig1, sig2, comp23_result
	);

	process(comp8_result, exp1, exp2)
	begin
		if comp8_result='1' then 
			small_ALU_exp1 <= exp2;
			small_ALU_exp2 <= exp1;
		else
			small_ALU_exp1 <= exp1;
			small_ALU_exp2 <= exp2;
		end if;
	end process;

	Small_ALU : coAdder8 port map(
		small_ALU_exp1, small_ALU_exp2,
		'1', '1', exp_diff, small_ALU_c_out
	);

	--set the value of shiftR_input <= exp_diff

	-- set a and b
	process()
	begin
		if comp8_result = '1' then 
			
		else

		end if;
	end process;

	ShiftR : coShiftR_ALU port map(
		shiftR_amt, a, shiftR_outp
	);

	Big_ALU : coAdder23 port map(
		shiftR_outp, b, Big_ALU_cin, Big_ALU_input_control,
		Big_ALU_output, Big_ALU_cout
	);
	-- set the Big_ALU c_in and input_control
	process()
	begin
	end process;

	BigALU_norm_in(26 downto 0) <= Big_ALU_output(26 downto 0);
	BigALU_norm_in(27) <= Big_ALU_cout;
-- Normalisation:

	Normalise : coShiftLR_Nml port map(
		BigALU_norm_in, Big_ALU_out_norm,
		norm_shift_exp,
		norm_shift_lr,
		norm_iszero
	);
	
	-- Big_ALU_out_norm contains G,R,S
	
	ChangeExpo:process(BigALU_norm_in)
	begin
		if (norm_iszero = '1') then
			final_ALU_mentissa <= Big_ALU_out_norm(22 downto 0);
			final_ALU_expo <= Big_ALU_out_norm(7 downto 0);
			norm_again <= '0';
			-- computation complete, no Round off
		else
			if (norm_shift_lr = '0') then
				norm_changeExpo <= std_logic_vector(to_unsigned(norm_shift_exp, 8));
				expo_norm1_cin <= '0';
			else
				norm_changeExpo <= not (std_logic_vector(to_unsigned(norm_shift_exp, 8)));
				expo_norm1_cin <= '1';
			end if;
		end if;
	end process;
	
	-- change exponent after norm1
	AddExpo : coAdder8 port map(
		small_ALU_exp2,
		norm_changeExpo,
		expo_norm1_cin,
		'0',
		ALU_expo_norm1,
		expo_norm1_cout
	);
	
	-- ALU expo norm 1 is changed expo.
	
	-- H/W rounding
	
	Rounding:process(Big_ALU_out_norm)
	begin
		if norm_iszero = '0' then
			if Big_ALU_out_norm(2) = '0' then
				--do nothing
				final_ALU_mentissa(22 downto 0) <= Big_ALU_out_norm(25 downto 3);
				final_ALU_Expo(7 downto 0) <= ALU_expo_norm1(7 downto 0);
				norm_again <= '0';
			else
				if Big_ALU_out_norm(1) = '1' then
					-- add 1 to LSB
					norm_again <= '1';
					
				else
					-- see S bit
				end if;
			end if;
		else NULL;
		end if;
	end process;
	
	Round_Mentissa: coAdder26 port map(
		Big_ALU_out_norm(25 downto 3),
		"00000000000000000000000",
		round_cin,
		'0',
		Rounded_mentissa,
		Rounded_ment_cout		
	);

end Behavioral;

