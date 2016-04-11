----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:14:02 04/11/2016 
-- Design Name: 
-- Module Name:    Data_Forward - Behavioral 
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

entity Data_Forward is
port(
	Instruction_IDEX, Instruction_EXMEM, Instruction_MEMWB : in std_logic_Vector(31 downto 0);
	fwdA, fwdB : out std_logic_vector(1 downto 0);
	fwdC : out std_logic
);
end Data_Forward;

architecture Behavioral of Data_Forward is

signal EXMEM_rw, MEMWB_rw : std_logic;
signal EXMEM_Rd, IDEX_Rn, MEMWB_Rd, IDEX_Rm : std_logic_vector(3 downto 0);

signal inst_type_EXMEM, inst_type_MEMWB : std_logic_Vector(1 downto 0);
signal opc_EXMEM, opc_MEMWB : std_logic_vector(3 downto 0);
signal ipubwl_ex, ipubwl_mem : std_logic_Vector(5 downto 0);

begin

EXMEM_Rd <= Instruction_EXMEM(15 downto 12);
IDEX_Rn <= Instruction_IDEX(19 downto 16);
MEMWB_Rd <= Instruction_MEMWB(15 downto 12);
IDEX_Rm <= Instruction_IDEX(3 downto 0);

inst_type_EXMEM <= Instruction_EXMEM(27 downto 26);
inst_type_MEMWB <= Instruction_MEMWB(27 downto 26);

opc_EXMEM <= Instruction_EXMEM(24 downto 21);
opc_MEMWB <= Instruction_MEMWB(24 downto 21);

ipubwl_ex <= Instruction_EXMEM(25 downto 20);
ipubwl_mem <= Instruction_MEMWB(25 downto 20);


DFwd_EXMEM:PROCESS(Instruction_EXMEM)
begin
	if inst_type_EXMEM = "00" then
		if opc_EXMEM(3 downto 2) = "10" then
			EXMEM_rw <= '0';
		else
			EXMEM_rw <= '1';
		end if;
	elsif inst_type_EXMEM = "01" then
		if ipubwl(0) = '1' then
			EXMEM_rw <= '1';
		else
			EXMEM_rw <= '0';
		end if;
	else
		EXMEM_rw <= '0';
	end if;
end process;

DFwd_MEMWB:PROCESS(Instruction_MEMWB)
begin
	if inst_type_MEMWB = "00" then
		if opc_MEMWB(3 downto 2) = "10" then
			MEMWB_rw <= '0';
		else
			MEMWB_rw <= '1';
		end if;
	elsif inst_type_MEMWB = "01" then
		if ipubwl(0) = '1' then
			MEMWB_rw <= '1';
		else
			MEMWB_rw <= '0';
		end if;
	else
		MEMWB_rw <= '0';
	end if;
end process;


fwA:process(Instruction_IDEX, Instruction_EXMEM, Instruction_MEMWB)
begin
	if (EXMEM_rw = '1') then
		if EXMEM_Rd = IDEX_Rn then
			fwdA <= "";
		end if;
	end if;
end process;


fwB:process(Instruction_IDEX, Instruction_EXMEM, Instruction_MEMWB)
begin
	if (EXMEM_rw = '1') then
		if EXMEM_Rd = IDEX_Rm then
		end if;
	end if;
end process;


fwC:process(Instruction_IDEX, Instruction_EXMEM, Instruction_MEMWB)
begin
end process;

end Behavioral;