
-- VHDL Instantiation Created from source file ID_EX.vhd -- 22:13:06 04/11/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ID_EX
	PORT(
		offset_in : IN std_logic_vector(23 downto 0);
		rd1_in : IN std_logic_vector(31 downto 0);
		rd2_in : IN std_logic_vector(31 downto 0);
		imm8_in : IN std_logic_vector(7 downto 0);
		imm12_in : IN std_logic_vector(11 downto 0);
		wad_in : IN std_logic_vector(3 downto 0);
		IIMux_in : IN std_logic;
		AsrcMux_in : IN std_logic;
		fwdCMux_in : IN std_logic;
		M2RMux_in : IN std_logic;
		RW_in : IN std_logic;
		MW_in : IN std_logic;
		MR_in : IN std_logic;
		ALUMux1_in : IN std_logic_vector(1 downto 0);
		ALUMux2_in : IN std_logic_vector(1 downto 0);
		ALU_opern_in : IN std_logic_vector(3 downto 0);
		Mul_sel_in : IN std_logic;
		s_type_in : IN std_logic_vector(1 downto 0);
		s_amt_in : IN std_logic_vector(4 downto 0);
		IDEX_inst_in : IN std_logic_vector(31 downto 0);
		flag_enable_in : IN std_logic_vector(3 downto 0);
		Psrc_in : IN std_logic;
		enable : IN std_logic;
		clock : IN std_logic;          
		offset_out : OUT std_logic_vector(23 downto 0);
		rd1_out : OUT std_logic_vector(31 downto 0);
		rd2_out : OUT std_logic_vector(31 downto 0);
		imm8_out : OUT std_logic_vector(7 downto 0);
		imm12_out : OUT std_logic_vector(11 downto 0);
		wad_out : OUT std_logic_vector(3 downto 0);
		IIMux_out : OUT std_logic;
		AsrcMux_out : OUT std_logic;
		fwdCMux_out : OUT std_logic;
		M2RMux_out : OUT std_logic;
		RW_out : OUT std_logic;
		MW_out : OUT std_logic;
		MR_out : OUT std_logic;
		ALUMux1_out : OUT std_logic_vector(1 downto 0);
		ALUMux2_out : OUT std_logic_vector(1 downto 0);
		ALU_opern_out : OUT std_logic_vector(3 downto 0);
		Mul_sel_out : OUT std_logic;
		s_type_out : OUT std_logic_vector(1 downto 0);
		s_amt_out : OUT std_logic_vector(4 downto 0);
		IDEX_inst_out : OUT std_logic_vector(31 downto 0);
		flag_enable_out : OUT std_logic_vector(3 downto 0);
		Psrc_out : OUT std_logic
		);
	END COMPONENT;

	Inst_ID_EX: ID_EX PORT MAP(
		offset_in => ,
		rd1_in => ,
		rd2_in => ,
		imm8_in => ,
		imm12_in => ,
		wad_in => ,
		IIMux_in => ,
		AsrcMux_in => ,
		fwdCMux_in => ,
		M2RMux_in => ,
		RW_in => ,
		MW_in => ,
		MR_in => ,
		ALUMux1_in => ,
		ALUMux2_in => ,
		ALU_opern_in => ,
		Mul_sel_in => ,
		s_type_in => ,
		s_amt_in => ,
		IDEX_inst_in => ,
		flag_enable_in => ,
		Psrc_in => ,
		offset_out => ,
		rd1_out => ,
		rd2_out => ,
		imm8_out => ,
		imm12_out => ,
		wad_out => ,
		IIMux_out => ,
		AsrcMux_out => ,
		fwdCMux_out => ,
		M2RMux_out => ,
		RW_out => ,
		MW_out => ,
		MR_out => ,
		ALUMux1_out => ,
		ALUMux2_out => ,
		ALU_opern_out => ,
		Mul_sel_out => ,
		s_type_out => ,
		s_amt_out => ,
		IDEX_inst_out => ,
		flag_enable_out => ,
		Psrc_out => ,
		enable => ,
		clock => 
	);


