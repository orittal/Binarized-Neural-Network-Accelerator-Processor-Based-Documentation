--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:56:29 11/24/2025
-- Design Name:   
-- Module Name:   E:/adlx/C8/SOURCE_VER/monitor_tb.vhd
-- Project Name:  SOURCE_VER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DualPortSdram
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY monitor_tb IS
END monitor_tb;
 
ARCHITECTURE behavior OF monitor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DualPortSdram
    PORT(
         clk_i : IN  std_logic;
         rst0_i : IN  std_logic;
         rd0_i : IN  std_logic;
         wr0_i : IN  std_logic;
         earlyOpBegun0_o : OUT  std_logic;
         opBegun0_o : OUT  std_logic;
         rdPending0_o : OUT  std_logic;
         done0_o : OUT  std_logic;
         rdDone0_o : OUT  std_logic;
         addr0_i : IN  std_logic_vector(22 downto 0);
         data0_i : IN  std_logic_vector(15 downto 0);
         data0_o : OUT  std_logic_vector(15 downto 0);
         status0_o : OUT  std_logic_vector(3 downto 0);
         rst1_i : IN  std_logic;
         rd1_i : IN  std_logic;
         wr1_i : IN  std_logic;
         earlyOpBegun1_o : OUT  std_logic;
         opBegun1_o : OUT  std_logic;
         rdPending1_o : OUT  std_logic;
         done1_o : OUT  std_logic;
         rdDone1_o : OUT  std_logic;
         addr1_i : IN  std_logic_vector(22 downto 0);
         data1_i : IN  std_logic_vector(15 downto 0);
         data1_o : OUT  std_logic_vector(15 downto 0);
         status1_o : OUT  std_logic_vector(3 downto 0);
         sdCke_o : OUT  std_logic;
         sdCe_bo : OUT  std_logic;
         sdRas_bo : OUT  std_logic;
         sdCas_bo : OUT  std_logic;
         sdWe_bo : OUT  std_logic;
         sdBs_o : OUT  std_logic_vector(1 downto 0);
         sdAddr_o : OUT  std_logic_vector(11 downto 0);
         sdData_io : INOUT  std_logic_vector(15 downto 0);
         sdDqmh_o : OUT  std_logic;
         sdDqml_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal rst0_i : std_logic := '0';
   signal rd0_i : std_logic := '0';
   signal wr0_i : std_logic := '0';
   signal addr0_i : std_logic_vector(22 downto 0) := (others => '0');
   signal data0_i : std_logic_vector(15 downto 0) := (others => '0');
   signal rst1_i : std_logic := '0';
   signal rd1_i : std_logic := '0';
   signal wr1_i : std_logic := '0';
   signal addr1_i : std_logic_vector(22 downto 0) := (others => '0');
   signal data1_i : std_logic_vector(15 downto 0) := (others => '0');

	--BiDirs
   signal sdData_io : std_logic_vector(15 downto 0);

 	--Outputs
   signal earlyOpBegun0_o : std_logic;
   signal opBegun0_o : std_logic;
   signal rdPending0_o : std_logic;
   signal done0_o : std_logic;
   signal rdDone0_o : std_logic;
   signal data0_o : std_logic_vector(15 downto 0);
   signal status0_o : std_logic_vector(3 downto 0);
   signal earlyOpBegun1_o : std_logic;
   signal opBegun1_o : std_logic;
   signal rdPending1_o : std_logic;
   signal done1_o : std_logic;
   signal rdDone1_o : std_logic;
   signal data1_o : std_logic_vector(15 downto 0);
   signal status1_o : std_logic_vector(3 downto 0);
   signal sdCke_o : std_logic;
   signal sdCe_bo : std_logic;
   signal sdRas_bo : std_logic;
   signal sdCas_bo : std_logic;
   signal sdWe_bo : std_logic;
   signal sdBs_o : std_logic_vector(1 downto 0);
   signal sdAddr_o : std_logic_vector(11 downto 0);
   signal sdDqmh_o : std_logic;
   signal sdDqml_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DualPortSdram PORT MAP (
          clk_i => clk_i,
          rst0_i => rst0_i,
          rd0_i => rd0_i,
          wr0_i => wr0_i,
          earlyOpBegun0_o => earlyOpBegun0_o,
          opBegun0_o => opBegun0_o,
          rdPending0_o => rdPending0_o,
          done0_o => done0_o,
          rdDone0_o => rdDone0_o,
          addr0_i => addr0_i,
          data0_i => data0_i,
          data0_o => data0_o,
          status0_o => status0_o,
          rst1_i => rst1_i,
          rd1_i => rd1_i,
          wr1_i => wr1_i,
          earlyOpBegun1_o => earlyOpBegun1_o,
          opBegun1_o => opBegun1_o,
          rdPending1_o => rdPending1_o,
          done1_o => done1_o,
          rdDone1_o => rdDone1_o,
          addr1_i => addr1_i,
          data1_i => data1_i,
          data1_o => data1_o,
          status1_o => status1_o,
          sdCke_o => sdCke_o,
          sdCe_bo => sdCe_bo,
          sdRas_bo => sdRas_bo,
          sdCas_bo => sdCas_bo,
          sdWe_bo => sdWe_bo,
          sdBs_o => sdBs_o,
          sdAddr_o => sdAddr_o,
          sdData_io => sdData_io,
          sdDqmh_o => sdDqmh_o,
          sdDqml_o => sdDqml_o
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_i_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
