----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:15 03/12/2016 
-- Design Name: 
-- Module Name:    InMem - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InMem is
port(PC:in std_logic_vector(9 downto 0);
Instr:out std_logic_vector(31 downto 0));
end InMem;

architecture Behavioral of InMem is
-- array of vectors. 
type IM is array(0 to 1023) of std_logic_vector(31 downto 0);

signal IMemory:IM:=(others => (others => '0'));
signal InstNo:integer:=0;

-- 1101: mov.

begin

InstNo <= conv_integer(PC);
Instr <= IMemory(InstNo);

--general instructions
--IMemory(0) <= "11100011101000000000000000000111";--mov
--IMemory(1) <= "11100011101000000001000000000111";--mov
--IMemory(2) <= "11100001010100000000000000000001";--cmp r0, r1
--IMemory(3) <= "11100000100000000111000000000001";--add r7, r0, r1
--IMemory(4) <= "11100011101000000010000000001000";--mov
--IMemory(5) <= "11100011101000000011000000010000";--mov
--IMemory(6) <= "11100000100000011111000000000000";--add
--IMemory(7) <= "11100101100000000010000000000000";--str r2, [r0]
--IMemory(8) <= "11100101000100011110000000000011";--ldr r14, [r1,#-3]
--IMemory(9) <= "11100000000000101100001010010001";--mul r12,r1,r2
--IMemory(10) <= "11100001010100000000000000000001";--cmp r0, r1
--IMemory(11) <= "11100000100000011111001000000000";--add r15, r1, r0, lsl #4
--IMemory(12) <= "00000000100000111011000000000010";--addeq r11, r3, r4
--IMemory(13) <= "00010000100000111011000000000010";--addne r11, r3, r4

--branch prediction
--IMemory(0) <= "11100011101000000000000000000011";--mov r0, #3
--IMemory(1) <= "11100011101000000001000000000011";--mov r1, #3
--IMemory(2) <= "11100001010100000000000000000001";--cmp r0, r1
--IMemory(3) <= "00000000100000011011000000000000";--addeq r11, r1, r0
--IMemory(4) <= "00011010000000000000000001000000";--bne #1
----IMemory(2) <= "11101010111111111111111111111100";--b #-1
--IMemory(5) <= "11100000100000000010000010000001";--add r2, r0, r1, lsl #1
--IMemory(6) <= "11100011101000000011000000010000";--mov r3, #16

--Data forwarding Path 2
--IMemory(0) <= "11100011101000000000000000000011";--mov r0, #3
--IMemory(1) <= "11100011101000000001000000000100";--mov r1, #4
--IMemory(2) <= "11100000100000000010000010000001";--add r2, r0, r1, lsl #1 
--IMemory(3) <= x"E5812000";--str r2, [r0]
--IMemory(4) <= x"E0803002";--add r3, r0, r2

IMemory(0) <= "11100011101000000000000000000100";--mov r0, #4
IMemory(1) <= "11100011101000000001000000000011";--mov r1, #3
IMemory(2) <= "11101110001100010110000000010101";-- writes in 6th
--IMemory(3) <= x"E08E2000";--add r2, r14, r0
IMemory(3) <= x"E2863002";--add r3, r6, #2
--IMemory(4) <= x"E0823001";--add r3, r2, r1


end Behavioral;

-- YESSSSSSSSSSSSSSSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- HUMAARA CHAL RAHA HAI RIGHT??
-- YAYYYYYYYYYY SWEG DEKH MERA. I AM MAILING ANSHUL SIR