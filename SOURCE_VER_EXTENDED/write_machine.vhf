--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : write_machine.vhf
-- /___/   /\     Timestamp : 06/25/2026 00:57:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/write_machine.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/write_machine.sch
--Design Name: write_machine
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity write_machine is
   port ( ACK_N   : in    std_logic; 
          clk     : in    std_logic; 
          RESET   : in    std_logic; 
          STEP_EN : in    std_logic; 
          AO      : out   std_logic_vector (31 downto 0); 
          AS_N    : out   std_logic; 
          IN_INIT : out   std_logic; 
          state   : out   std_logic_vector (1 downto 0); 
          STOP_N  : out   std_logic; 
          WDO     : out   std_logic_vector (31 downto 0); 
          WR_N    : out   std_logic);
end write_machine;

architecture BEHAVIORAL of write_machine is
   signal CE      : std_logic;
   component CNT32
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (31 downto 0));
   end component;
   
   component const_reg
      port ( ID : out   std_logic_vector (31 downto 0));
   end component;
   
   component write_stateMachine
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             step_en    : in    std_logic; 
             ack_n      : in    std_logic; 
             AS_N       : out   std_logic; 
             WR_N       : out   std_logic; 
             IN_INIT    : out   std_logic; 
             STOP_N     : out   std_logic; 
             counter_ce : out   std_logic; 
             curr_state : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   XLXI_1 : CNT32
      port map (CE=>CE,
                CLK=>clk,
                RST=>RESET,
                CNT(31 downto 0)=>AO(31 downto 0));
   
   XLXI_2 : const_reg
      port map (ID(31 downto 0)=>WDO(31 downto 0));
   
   XLXI_3 : write_stateMachine
      port map (ack_n=>ACK_N,
                clk=>clk,
                reset=>RESET,
                step_en=>STEP_EN,
                AS_N=>AS_N,
                counter_ce=>CE,
                curr_state(1 downto 0)=>state(1 downto 0),
                IN_INIT=>IN_INIT,
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
end BEHAVIORAL;


