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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coProcessor is
port(
	clock : in std_logic;
	instruction : in std_logic_vector(31 downto 0);
	reg_data_in : in std_logic_vector(31 downto 0);
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
		a : in std_logic_vector (26 downto 0);
		b : in std_logic_vector (26 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (26 downto 0);
		c_out : out std_logic
	);
	end component;

	component coAdder8 is
	Port(
		a : in std_logic_vector (7 downto 0);
		b : in std_logic_vector (7 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (7 downto 0);
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
		a : in std_logic_vector (26 downto 0);
		b : in std_logic_vector (26 downto 0);
		s : out std_logic
	);
	end component;

	component coShiftR_ALU is
	port(
		s_amt : in integer;
		inp: in std_logic_Vector(26 downto 0);
		outp : out std_logic_Vector(26 downto 0)
	);
	end component;

	component coMultiplier is
	port(
		sig1,sig2 : in std_logic_Vector(23 downto 0);
		mult_out : out std_logic_Vector(27 downto 0)
	);
	end component;

	component coShiftLR_Nml is
	port(
		inp : in std_logic_vector(27 downto 0);
		outp : out std_logic_vector(26 downto 0);
		s_amt : out integer range 0 to 26;
		left_right, is_zero : out std_logic
	);
	end component;
	
	component coAdder26 is
	Port(
		a : in std_logic_vector (23 downto 0);
		b : in std_logic_vector (23 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic;
		c : out std_logic_vector (23 downto 0);
		c_out : out std_logic
	);
	end component;

signal cp_opc, cRn, cRd, cRm, cRd_temp, ins_type : std_logic_vector(3 downto 0);
signal fp1_temp, fp2_temp, fp1, fp2, cWd : std_logic_vector(31 downto 0);
signal regwrite : std_logic;

signal exp1, exp2 : std_logic_vector(7 downto 0);
signal sig1, sig2, a, b : std_logic_vector(26 downto 0);
signal sign1, sign2, signA, signB : std_logic;
signal fp1_is_greater, fp1_is_zero, fp2_is_zero : std_logic;

signal small_ALU_exp1, small_ALU_exp2, exp_diff : std_logic_vector(7 downto 0);
signal comp8_result, comp23_result, small_ALU_c_out : std_logic;

signal shiftR_input : integer;
signal shiftR_outp : std_logic_vector(26 downto 0);

signal Big_ALU_cin, Big_ALU_cout, Big_ALU_input_control : std_logic;
signal Big_ALU_output : std_logic_vector(26 downto 0);

signal mult_out, norm_in : std_logic_vector(27 downto 0);
signal final_sign : std_logic;

signal final : std_logic_vector(31 downto 0);

signal sub_mult_cout, add_mult_cout : std_logic;
signal sub_mult_Exp, final_exp_mult: std_logic_Vector(7 downto 0);



-- Normalisn
signal BigALU_norm_in : std_logic_Vector(27 downto 0);
signal Big_ALU_out_norm : std_logic_vector(26 downto 0);
signal norm_shift_Exp : integer range 0 to 26;
signal norm_shift_lr, norm_iszero, bit4 : std_logic;
signal final_ALU_mentissa : std_logic_Vector(22 downto 0);
signal final_ALU_expo,  ALU_expo_norm1, ALU_norm2_final : std_logic_vector(7 downto 0);
signal norm_changeExpo, norm2_changeExpo : std_logic_vector(7 downto 0);
signal norm_again, round_cin, Rounded_ment_cout : std_logic;
signal Rounded_mentissa: std_logic_Vector(23 downto 0);
signal Norm_again_in : std_logic_Vector(27 downto 0);
signal Norm_again_out : std_logic_VEctor(26 downto 0);
signal norm2_shift_exp : integer range 0 to 26;
signal norm2_shift_lr, norm2_iszero, expo_norm1_cout, expo_norm2_cout, expo_norm1_cin, expo_norm2_cin : std_logic;

begin
	cp_opc <= instruction(23 downto 20);
	ins_type <= instruction(27 downto 24);
	cRn <= instruction(19 downto 16);
	cRd <= instruction(15 downto 12);
	cRm <= instruction(3 downto 0);
	bit4 <= instruction(4);

	sig1(2 downto 0) <= "000";
	sig1(25 downto 3) <= fp1(22 downto 0);
	sig1(26) <= '1';
	sig2(2 downto 0) <= "000";
	sig2(25 downto 3) <= fp2(22 downto 0);
	sig2(26) <= '1';
	exp1 <= fp1(30 downto 23);
	exp2 <= fp2(30 downto 23);
	sign1 <= fp1(31);
	sign2 <= fp2(31);

	process(fp1, fp2)
	begin
		if fp1 = "00000000000000000000000000000000" then fp1_is_zero <= '1';
		else fp1_is_zero <= '0';
		end if;
		if fp2 = "00000000000000000000000000000000" then fp2_is_zero <= '1';
		else fp2_is_zero <= '0';
		end if;
	end process;

	RF : coRegister_Array port map(
		cRn, cRm, cRd_temp,
		cWd, regwrite,
		fp1_temp, fp2_temp,
		clock
	);

	MUL : coMultiplier port map(
		sig1(26 downto 3), sig2(26 downto 3),
		mult_out
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

-- small_ALU_exp1 is bigger.

	Small_ALU : coAdder8 port map(
		small_ALU_exp1, small_ALU_exp2,
		'1', '1', exp_diff, small_ALU_c_out
	);
	
	--set the value of shiftR_input <= exp_diff
	shiftR_input <= to_integer(unsigned(exp_diff));

	-- set a and b
	process(sig1, sig2, comp8_result, comp23_result, exp_diff)
	begin
		if comp8_result = '1' then 
			a <= sig2;
			b <= sig1;
			signA <= sign2;
			signB <= sign1;
			fp1_is_greater <= '1';
		else
			if exp_diff = "00000000" then
				if comp23_result = '1' then
					a <= sig2;
					b <= sig1;
					signA <= sign2;
					signB <= sign1;
					fp1_is_greater <= '1';
				else
					a <= sig1;
					b <= sig2;
					signA <= sign1;
					signB <= sign2;
					fp1_is_greater <= '0';
				end if;
			else
				a <= sig1;
				b <= sig2;
				signA <= sign1;
				signB <= sign2;
				fp1_is_greater <= '0';
			end if;
		end if;
	end process;

	ShiftR : coShiftR_ALU port map(
		shiftR_input, a, shiftR_outp
	);

	Big_ALU : coAdder23 port map(
		shiftR_outp, b, Big_ALU_cin, Big_ALU_input_control,
		Big_ALU_output, Big_ALU_cout
	);
	-- set the Big_ALU c_in and input_control
	process(cp_opc, sign1, sign2)
	begin
		if cp_opc(3 downto 1)="001" then
			if (sign1='0' and sign2='0') or (sign1='1' and sign2='1') then
				Big_ALU_input_control <= '0';
				Big_ALU_cin <= '0';
			else
				Big_ALU_input_control <= '1';
				Big_ALU_cin <= '1';
			end if;
		else -- SUBTRACTION
			if (sign1='0' and sign2='0') or (sign1='1' and sign2='1') then
				Big_ALU_input_control <= '1';
				Big_ALU_cin <= '1';
			else
				Big_ALU_input_control <= '0';
				Big_ALU_cin <= '0';
			end if;
		end if;
	end process;

	-- setting final sign bit
	process(cp_opc, sign1, sign2, fp1_is_greater)
	begin
		if cp_opc(3 downto 1)="001" then
			if (sign1='0' and sign2='0') or (sign1='1' and sign2='1') then
				final_sign <= sign1;
			elsif sign1='0' and sign2='1' then
				final_sign <= not fp1_is_greater;
			else 
				final_sign <= fp1_is_greater;
			end if;
		elsif cp_opc(3 downto 1)="010" then -- SUBTRACTION
			if (sign1='0' and sign2='1') or (sign1='1' and sign2='0') then
				final_sign <= sign1;
			elsif sign1='0' and sign2='0' then
				final_sign <= not fp1_is_greater;
			else
				final_sign <= fp1_is_greater;
			end if;
		else --(MULTIPLICATION)
			final_sign <= sign1 xor sign2;
		end if;
	end process;

	BigALU_norm_in(26 downto 0) <= Big_ALU_output(26 downto 0);
	BigALU_norm_in(27) <= Big_ALU_cout and not Big_ALU_input_control;
	-- BigALU_norm_in stores add sub ka value (28 bit)
	-- Integrate this with the mult value

	-- setting the normalization value
	process(cp_opc, BigALU_norm_in, mult_out)
	begin
		if cp_opc(3 downto 1)="100" then
			norm_in <= mult_out;
		else norm_in <= BigALU_norm_in;
		end if;
	end process;
	
-- Normalisation:

	Normalise : coShiftLR_Nml port map(
		norm_in, Big_ALU_out_norm,
		norm_shift_exp,
		norm_shift_lr,
		norm_iszero
	);
	
	-- Big_ALU_out_norm contains G,R,S
	
	ChangeExpo:process(BigALU_norm_in, norm_iszero, Big_ALU_out_norm, norm_shift_lr, norm_shift_exp)
	begin
		if (norm_iszero = '1') then
			norm_again <= '0';
			norm_changeExpo <= Big_ALU_out_norm(7 downto 0);
			expo_norm1_cin <= '0';
			-- computation complete, no Round off
		else
			norm_again <= '1';
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
	
	-- H/W rounding :
	-- set round_cin
	Rounding:process(Big_ALU_out_norm,norm_iszero,ALU_expo_norm1)
	begin
		if norm_iszero = '0' then
			if Big_ALU_out_norm(2) = '0' then
				--do nothing
				--final_ALU_mentissa(22 downto 0) <= Big_ALU_out_norm(25 downto 3);
				--final_ALU_Expo(7 downto 0) <= ALU_expo_norm1(7 downto 0);
				norm_again <= '0';
				round_cin <= '0';
			else
				if Big_ALU_out_norm(1) = '1' then
					-- add 1 to LSB
					norm_again <= '1';
					round_cin <= '1';				
				else
					-- see S bit as R = 0 G=1
					if Big_ALU_out_norm(0) = '1' then
						norm_again <= '1';
						round_cin <= '1';
					else
						if Big_ALU_out_norm(3) = '0' then
							norm_again <= '0';
							round_cin <= '0';
							--final_ALU_mentissa(22 downto 0) <= Big_ALU_out_norm(25 downto 3);
							--final_ALU_Expo(7 downto 0) <= ALU_expo_norm1(7 downto 0);
						else
							norm_again <= '1';
							round_cin <= '1';							
						end if;
					end if;
				end if;
			end if;
		else NULL;
		end if;
	end process;
	
	Round_Mentissa: coAdder26 port map(
		Big_ALU_out_norm(26 downto 3),
		"000000000000000000000000",
		round_cin,
		'0',
		Rounded_mentissa,
		Rounded_ment_cout
	);
	-- rounded mentissa has 24 bits. to normalise again, add cout+00 in the end
	Norm_again_in(26 downto 3) <= Rounded_mentissa;
	Norm_again_in(27) <= Rounded_ment_cout;
	Norm_again_in(2 downto 0) <= "000";
	
	NormaliseAgain : coShiftLR_Nml port map(
		Norm_again_in,
		Norm_again_out,
		norm2_shift_exp,
		norm2_shift_lr,
		norm2_iszero
	);
	
	-- normalise again
	process(norm_again, Norm_again_out, norm2_shift_exp)
	begin
		if (norm_again = '1') then
		-- change expo again
			--final_ALU_mentissa(22 downto 0) <= Norm_again_out(25 downto 3);
			if (norm2_shift_lr = '0') then
				norm2_changeExpo <= std_logic_vector(to_unsigned(norm2_shift_exp, 8));
				expo_norm2_cin <= '0';
			else
				norm2_changeExpo <= not (std_logic_vector(to_unsigned(norm2_shift_exp, 8)));
				expo_norm2_cin <= '1';
			end if;
		else
			-- do nothing
			norm2_changeExpo <= "00000000";
			expo_norm2_cin <= '0';
		end if;
	end process;
	
	AddExpo2 : coAdder8 port map(
		ALU_expo_norm1,
		norm2_changeExpo,
		expo_norm2_cin,
		'0',
		ALU_norm2_final,
		expo_norm2_cout
	);
	
	Sub_Mult_Expo : coAdder8 port map(
		"01111111" , small_ALU_exp1,
		'1', '1', sub_mult_Exp, sub_mult_cout
	);
	
	Add_Mult_Expo : coAdder8 port map(
		sub_mult_Exp, small_ALU_exp2,
		'0', '0', final_exp_mult, add_mult_cout
	);

	
 -- Done with second Norm after Round off. now set final ALU expo and final ALU ment
 
	finalExpo:process(Norm_again_out,ALU_norm2_final)
	begin
		final(22 downto 0) <= Norm_again_out(25 downto 3);
		if (cp_opc(3 downto 1) = "100") then
			final(30 downto 23) <= add_mult_Exp;
		else
			final(30 downto 23) <= ALU_norm2_final;
		end if;
		final(31) <= final_sign;
	end process;
	
	
	-- setting regwrite and data inputs
	process(bit4, fp1_temp, fp2_temp, cp_opc, cRn, cRd)
	begin
		if ins_type="1110" then
			if bit4='1' then 
				if cp_opc(0)='1' then
					fp1 <= fp1_temp;
					fp2 <= fp2_temp;
					regwrite <= '0';
				else
					fp1 <= reg_data_in;
					fp2 <=fp2_temp;
					cRd_temp <= cRn;
					regwrite <= '1';
					cWd <= reg_data_in;
				end if;
			else
				fp1 <= fp1_temp;
				fp2 <= fp2_temp;
				cRd_temp <= cRd;
				regwrite <= '1';
				cWd <= final; --calculated_value
			end if;
		else regwrite <= '0';
		end if;
	end process;

end Behavioral;
