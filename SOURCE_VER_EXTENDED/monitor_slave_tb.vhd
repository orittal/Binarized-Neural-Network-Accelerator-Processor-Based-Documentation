-- Vhdl test bench created from schematic E:\adlx\C8\SOURCE_VER\monitor_slave.sch - Mon Nov 24 11:58:01 2025
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY monitor_slave_monitor_slave_sch_tb IS
END monitor_slave_monitor_slave_sch_tb;
ARCHITECTURE behavioral OF monitor_slave_monitor_slave_sch_tb IS 

   COMPONENT monitor_slave
   PORT( IN_INIT	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          STOP_N	:	IN	STD_LOGIC; 
          D_IN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          A_IN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          B_IN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Cardsel	:	IN	STD_LOGIC; 
          WR_N	:	IN	STD_LOGIC; 
          SACK_N	:	OUT	STD_LOGIC; 
          SDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          reg_adr	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          AI	:	IN	STD_LOGIC_VECTOR (9 DOWNTO 0));
   END COMPONENT;

   SIGNAL IN_INIT	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL STOP_N	:	STD_LOGIC;
   SIGNAL D_IN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL A_IN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL B_IN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Cardsel	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL SACK_N	:	STD_LOGIC;
   SIGNAL SDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL reg_adr	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL AI	:	STD_LOGIC_VECTOR (9 DOWNTO 0);

BEGIN

   UUT: monitor_slave PORT MAP(
		IN_INIT => IN_INIT, 
		STEP_EN => STEP_EN, 
		STOP_N => STOP_N, 
		D_IN => D_IN, 
		clk => clk, 
		A_IN => A_IN, 
		B_IN => B_IN, 
		Cardsel => Cardsel, 
		WR_N => WR_N, 
		SACK_N => SACK_N, 
		SDO => SDO, 
		reg_adr => reg_adr, 
		AI => AI
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
