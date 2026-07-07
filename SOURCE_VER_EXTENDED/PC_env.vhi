
-- VHDL Instantiation Created from source file PC_env.vhd -- 19:34:56 06/23/2026
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC_env
	PORT(
		CLK : IN std_logic;
		RESET : IN std_logic;
		pc_en : IN std_logic;
		PC_IN : IN std_logic_vector(31 downto 0);          
		PC_OUT : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC_env: PC_env PORT MAP(
		CLK => ,
		RESET => ,
		pc_en => ,
		PC_IN => ,
		PC_OUT => 
	);


