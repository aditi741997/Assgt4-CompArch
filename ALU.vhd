----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:03 03/10/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
Port(
	a : in std_logic_vector (31 downto 0);
	b : in std_logic_vector (31 downto 0);
	c_in : in std_logic := '0';
	c : inout std_logic_vector (31 downto 0);
	operation : in std_logic_vector (3 downto 0);
	flag : out std_logic_vector (3 downto 0); --NZCV
	mul : in std_logic
);
end ALU;

architecture Behavioral of ALU is

	component ALU_Basic is
	port(
		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		input_control : in std_logic_vector(1 downto 0);
		operation : in std_logic_vector(1 downto 0);
		c_out : out std_logic;
		s : out std_logic
	);
	end component;

	component Mulitplier is
	port(
		A : in std_logic_vector(31 downto 0);
		B : in std_logic_vector(31 downto 0);
		C : out std_logic_vector(31 downto 0)
	);
	end component;

	component Mux is
	port(
		inval0 : in std_logic_vector(31 downto 0);
		inval1 : in std_logic_vector(31 downto 0);
		control : in std_logic;
		outval : out std_logic_vector(31 downto 0)
	);
	end component;

	signal carry : std_logic_vector(32 downto 0) := (others => '0');
	signal input_control : std_logic_vector(1 downto 0) := "00";
	signal op : std_logic_vector(1 downto 0) := "00";
	signal temp1 : std_logic_vector(31 downto 0);
	signal temp2 : std_logic_vector(31 downto 0);
	signal res1 : std_logic_vector(31 downto 0);
	signal res2 : std_logic_vector(31 downto 0);

begin

	GEN:
	for I in 0 to 31 generate
		ALU : ALU_Basic port map (temp1(I), temp2(I), carry(I), input_control, op, carry(I+1), res1(I));
	end generate GEN;

	MULL : Mulitplier port map (a, b, res2);
	MUX32 : Mux port map (res1, res2, mul, c);

process(operation, a, b, c_in)
begin
	case operation is
		when "0100" => --ADD
			carry(0) <= '0';
			input_control <= "00";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "0010" => --SUB
			carry(0) <= '1';
			input_control <= "01";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "0011" => --RSB
			carry(0) <= '1';
			input_control <= "01";
			op <= "11";
			temp1 <= b;
			temp2 <= a;
		when "0101" => --ADC
			carry(0) <= c_in;
			input_control <= "00";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "0110" => --SBC
			carry(0) <= c_in;
			input_control <= "01";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "0111" => --RSC
			carry(0) <= c_in;
			input_control <= "01";
			op <= "11";
			temp1 <= b;
			temp2 <= a;
		when "0000" => --AND
			input_control <= "00";
			op <= "00";
			temp1 <= a;
			temp2 <= b;
		when "1100" => --ORR
			input_control <= "00";
			op <= "01";
			temp1 <= a;
			temp2 <= b;
		when "0001" => --EOR
			input_control <= "00";
			op <= "10";
			temp1 <= a;
			temp2 <= b;
		when "1110" => --BIC
			input_control <= "01";
			op <= "00";
			temp1 <= a;
			temp2 <= b;
		when "1010" => --CMP
			carry(0) <= '1';
			input_control <= "01";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "1011" => --CMN
			carry(0) <= '0';
			input_control <= "00";
			op <= "11";
			temp1 <= a;
			temp2 <= b;
		when "1001" => --TEQ
			input_control <= "00";
			op <= "10";
			temp1 <= a;
			temp2 <= b;
		when "1000" => --TST
			input_control <= "00";
			op <= "00";
			temp1 <= a;
			temp2 <= b;
		when "1101" => --MOV
			carry(0) <= '0';
			input_control <= "10";
			op <= "01";
			temp1 <= a;
			temp2 <= b;
		when "1111" => --MVM
			carry(0) <= '0';
			input_control <= "11";
			op <= "01";
			temp1 <= a;
			temp2 <= b;
		when others => null;
	end case;
	
end process;

flag(0) <= carry(32) xor carry(31);
flag(1) <= carry(32);
flag(2) <= not(c(31) or c(30) or c(29) or c(28) or c(27) or c(26) or c(25) or c(24) or c(23) or c(22) or c(21) or c(20) or c(19) or c(18) or c(17) or c(16) or c(15) or c(14) or c(13) or c(12) or c(11) or c(10) or c(9) or c(8) or c(7) or c(6) or c(5) or c(4) or c(3) or c(2) or c(1) or c(0));
flag(3) <= c(31);

end Behavioral;

