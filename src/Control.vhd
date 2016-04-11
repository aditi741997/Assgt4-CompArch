----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:03:23 04/09/2016 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
port(
	clock : in std_logic
);
end Control;

architecture Behavioral of Control is

component DataPath is
port(
	clk,eIF_ID,eID_EX,eEX_Mem,eMem_WB:in STD_LOGIC;
	alu1_mux,alu2_mux:in STD_LOGIC_VECTOR(1 downto 0);
	DM_fwd:in std_logic;		-- fwdC
	Rsrc,Psrc,RW,Asrc,MW,MR,M2R,II:in std_logic;
	s_type:in std_logic_vector(1 downto 0);
	s_amt:in std_logic_vector(4 downto 0);
	Opern,Fset:in std_logic_vector(3 downto 0);
	Mul_sel:in std_logic;
	Bubble : in std_logic;
 	Flags_out:out std_logic_vector(3 downto 0);
	Current_Inst:out std_logic_Vector(31 downto 0);
	InstructionIFID:out std_logic_vector(31 downto 0);
	InstructionIDEX:out std_logic_vector(31 downto 0);
	InstructionEXMEM:out std_logic_vector(31 downto 0);
	InstructionMEMWB:out std_logic_vector(31 downto 0)	);
end component;

component Branch_Predictor is
port(
	curr_inst : in std_logic_Vector(31 downto 0);
	branch_pred : out std_logic
);
end component;

component Data_Forward is
port(
	Instruction_IDEX, Instruction_EXMEM, Instruction_MEMWB : in std_logic_Vector(31 downto 0);
	fwdA, fwdB : out std_logic_vector(1 downto 0);
	fwdC : out std_logic
);
end component;

	signal mul : std_logic;
	signal mux_1 : std_logic;
	signal mux_2 : std_logic;
	signal mux_3 : std_logic;
	signal mux_4 : std_logic;
	signal mux_5 : std_logic;
	signal regwrite : std_logic;
	signal mem_write : std_logic;
	signal flag_enable : std_logic_vector(3 downto 0);
	signal alu_operation : std_logic_vector(3 downto 0);
	signal om_instruction : std_logic_vector(1 downto 0);
	signal om_field : std_logic_vector(4 downto 0);
	signal curr_ins, ins_IDEX, ins_EXMEM, ins_MEMWB : std_logic_vector(31 downto 0);
	signal ins : std_logic_vector(31 downto 0);
	signal flag : std_logic_vector(3 downto 0);
	

	signal cond : std_logic_vector(3 downto 0);
	signal instruction_type : std_logic_vector(1 downto 0);
	signal immediate : std_logic;
	signal opc : std_logic_vector(3 downto 0);
	signal flag_set : std_logic;
	signal ipubwl : std_logic_vector(5 downto 0);
	signal s_amt : std_logic_vector(4 downto 0);
	signal s_typ : std_logic_vector(1 downto 0);
	signal rot : std_logic_vector(3 downto 0);
	
	signal p : std_logic := '1';
	
	signal fwdA_f, fwdB_f : std_logic_vector(1 downto 0);
	signal fwdC_f : std_logic;
	signal bubble : std_logic := '0';
	signal predicted_psrc : std_logic;

begin

	DP : DataPath port map (
		clock, '1','1','1','1',
		fwdA_f, fwdB_f,
		fwdC_f,
		mux_1, predicted_src, regwrite, mux_2, mem_write, '1', mux_3, mux_5,
		om_instruction,
		om_field,
		alu_operation, flag_enable,
		mul,
		bubble,
		flag,
		curr_ins,
		ins,
		ins_IDEX,
		ins_EXMEM,
		ins_MEMWB	);
		
	Branch_Pred : Branch_Predictor port map(
		curr_ins,
		predicted_psrc
 	);
	
	DFwd : Data_Forward port map(
		ins_IDEX,
		ins_EXMEM,
		ins_MEMWB,
		fwdA_f,
		fwdB_f,
		fwdC_f
	);
	
	cond <= ins(31 downto 28);
	instruction_type <= ins(27 downto 26);
	immediate <= ins(25);
	opc <= ins(24 downto 21);
	flag_set <= ins(20);
	ipubwl <= ins(25 downto 20);
	-- 19 to 16
	-- 15 to 12
	rot <= ins(11 downto 8);
	s_amt <= ins(11 downto 7);
	s_typ <= ins(6 downto 5);

--	alu2_mux <= "00";
--	alu1_mux <= "00";
	fwdC <= '0';
	--p <= '1';
	--process(instruction_type, immediate, mul, ipubwl, opc, instruction_type, flag_set, rot, s_amt, s_typ)
	--begin
	--	p <= '1';
	--end process;
	-- setting mux values
	process(p, instruction_type, immediate, mul, ipubwl)
	begin
		if p = '0' then --pc = pc +1
			mux_4 <= '0';
		else
			case instruction_type is
				when "00" =>
					if mul = '1' then
						mux_1 <= '0';
						mux_2 <= '0';
						mux_3 <= '0';
						mux_4 <= '0';
					else 
						if immediate = '0' then
							mux_1 <= '0'; 
							mux_2 <= '0'; 
							mux_3 <= '0'; 
							mux_4 <= '0'; 
						else
							mux_2 <= '1'; 
							mux_3 <= '0'; 
							mux_4 <= '0'; 
							mux_5 <= '1'; 
						end if;
					end if;
				when "01" =>
					if ipubwl(0) = '1' then
						mux_1 <= '1';
						mux_2 <= '1';
						mux_3 <= '1';
						mux_4 <= '0';
						mux_5 <= '0';
					else
						mux_1 <= '1';
						mux_2 <= '1';
						mux_3 <= '0';
						mux_4 <= '0';
						mux_5 <= '0';
					end if;
				when "10" =>
					mux_4 <= '1';
				when others => null;
			end case;
		end if;
	end process;

	-- setting register read/ write
	process(p, instruction_type, ipubwl, opc)
	begin
		if p = '1' then
			if instruction_type = "00" then
				if opc(3 downto 2) = "10" then
					mem_write <= '0';
					regwrite <= '0';
				else 
					mem_write <= '0';
					regwrite <= '1';
				end if;
			elsif instruction_type = "01" then
				if ipubwl(0) = '1' then
					mem_write <= '0';
					regwrite <= '1';
				else 
					mem_write <= '1';
					regwrite <= '0';
				end if;
			else
				mem_write <= '0';
				regwrite <= '0';
			end if;
		else 
			mem_write <= '0';
			regwrite <= '0';
		end if;
	end process;

	-- setting flag_enable
	process(p, instruction_type, opc, mul, flag_set)
	begin
		if p = '1' then
		case instruction_type is 	--NZCV
			when "00" =>
				if opc = "1010" or opc = "1011" then
					flag_enable <= "1111";
				elsif opc = "1000" or opc = "1001" then
					flag_enable <= "1100";
				elsif flag_set = '1' then
					if mul = '1' then flag_enable <= "1100";
					else flag_enable <= "1111";
					end if;
				else flag_enable <= "0000";
				end if;
			when others => flag_enable <= "0000";
		end case;
		else null; end if;
	end process;

	-- setting alu_operation
	process(instruction_type, ipubwl, opc)
	begin
		if instruction_type = "00" then
			alu_operation <= opc;
		elsif instruction_type = "01" then
			if ipubwl(3) = '1' then alu_operation <= "0100";
			else alu_operation <= "0010";
			end if;
		else null;
		end if;
	end process;

	-- setting shift
	process(instruction_type, mul, immediate, rot, s_amt, s_typ)
	begin
		if instruction_type = "00" then
			if mul = '1' then
				om_field <= "00000";
				om_instruction <= "00";
			else
				if immediate = '1' then
					om_field(3 downto 0) <= rot;
					om_field(4) <= '0';
					om_instruction <= "11";
				else
					om_field <= s_amt;
					om_instruction <= s_typ ;
				end if;
			end if;
		else 
			om_field <= "00000";
			om_instruction <= "00";
		end if;
	end process;

	mul <= ins(4) and not ins(5) and not ins(6) and ins(7) and not ins(27) and not ins(26) and not ins(25) and not ins(24) and not ins(23) and not ins(22);

end Behavioral;

