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
		input_control : in std_logic_vector (1 downto 0);
		c : out std_logic_vector (25 downto 0);
		c_out : out std_logic
	);
	end component;

	component coAdder8 is
	Port(
		a : in std_logic_vector (25 downto 0);
		b : in std_logic_vector (25 downto 0);
		c_in : in std_logic := '0';
		input_control : in std_logic_vector (1 downto 0);
		c : out std_logic_vector (25 downto 0);
		c_out : out std_logic
	);
	end component;

	signal cp_opc, cRn, cRd, cRm : std_logic_vector(3 downto 0);
	signal fp1, fp2, cWd : std_logic_vector(31 downto 0);
	signal regwrite : std_logic;

	signal exp1, exp2 : std_logic_vector(7 downto 0);
	signal sig1, sig2 : std_logic_vector(25 downto 0);

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

	exp1 <= fp1()

	RF : coRegister_Array port map(
		cRn, cRm, cRd,
		cWd, regwrite,
		fp1, fp2,
		clock
	);

	Small_ALU : coAdder8 port map(
		
	);

end Behavioral;

