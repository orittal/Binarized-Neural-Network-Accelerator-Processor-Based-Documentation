--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : read_machine.vhf
-- /___/   /\     Timestamp : 06/25/2026 00:57:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/read_machine.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/read_machine.sch
--Design Name: read_machine
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

entity read_machine is
   port ( ACK_N   : in    std_logic; 
          clk     : in    std_logic; 
          DI      : in    std_logic_vector (31 downto 0); 
          RESET   : in    std_logic; 
          STEP_EN : in    std_logic; 
          AO      : out   std_logic_vector (31 downto 0); 
          AS_N    : out   std_logic; 
          IN_INIT : out   std_logic; 
          RDO     : out   std_logic_vector (31 downto 0); 
          sm      : out   std_logic_vector (1 downto 0); 
          STOP_N  : out   std_logic; 
          WR_N    : out   std_logic);
end read_machine;

architecture BEHAVIORAL of read_machine is
   attribute BOX_TYPE   : string ;
   signal CE       : std_logic;
   signal XLXN_32  : std_logic;
   signal sm_DUMMY : std_logic_vector (1 downto 0);
   component CNT32
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32CE
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component read_stateMachine
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
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   sm(1 downto 0) <= sm_DUMMY(1 downto 0);
   XLXI_1 : CNT32
      port map (CE=>CE,
                CLK=>clk,
                RST=>RESET,
                CNT(31 downto 0)=>AO(31 downto 0));
   
   XLXI_5 : REG32CE
      port map (CE=>XLXN_32,
                CLK=>clk,
                DI(31 downto 0)=>DI(31 downto 0),
                DO(31 downto 0)=>RDO(31 downto 0));
   
   XLXI_7 : read_stateMachine
      port map (ack_n=>ACK_N,
                clk=>clk,
                reset=>RESET,
                step_en=>STEP_EN,
                AS_N=>AS_N,
                counter_ce=>CE,
                curr_state(1 downto 0)=>sm_DUMMY(1 downto 0),
                IN_INIT=>IN_INIT,
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
   XLXI_9 : AND2
      port map (I0=>sm_DUMMY(0),
                I1=>sm_DUMMY(1),
                O=>XLXN_32);
   
end BEHAVIORAL;


