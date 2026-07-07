--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FULL_BNN_Control.vhf
-- /___/   /\     Timestamp : 06/23/2026 19:08:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/FULL_BNN_Control.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/FULL_BNN_Control.sch
--Design Name: FULL_BNN_Control
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

entity FULL_BNN_Control is
   port ( ACK_N      : in    std_logic; 
          AEQZ       : in    std_logic; 
          CLK        : in    std_logic; 
          IR         : in    std_logic_vector (31 downto 0); 
          RESET      : in    std_logic; 
          step_en    : in    std_logic; 
          ACC_UPDATE : out   std_logic; 
          ACE        : out   std_logic; 
          ADD        : out   std_logic; 
          ALUF       : out   std_logic_vector (2 downto 0); 
          ASEL       : out   std_logic; 
          as_n       : out   std_logic; 
          BCE        : out   std_logic; 
          BNN_SEL    : out   std_logic_vector (1 downto 0); 
          busy       : out   std_logic; 
          CCE        : out   std_logic; 
          DINSEL     : out   std_logic; 
          DLX_STATE  : out   std_logic_vector (4 downto 0); 
          GPRWE      : out   std_logic; 
          IRCE       : out   std_logic; 
          isHALT     : out   std_logic; 
          isINIT     : out   std_logic; 
          ITYPE      : out   std_logic; 
          JLINK      : out   std_logic; 
          MAC_STATE  : out   std_logic_vector (1 downto 0); 
          MARCE      : out   std_logic; 
          MDRCE      : out   std_logic; 
          MDRSEL     : out   std_logic; 
          MR         : out   std_logic; 
          MW         : out   std_logic; 
          PCCE       : out   std_logic; 
          RIGHT      : out   std_logic; 
          SHIFTER    : out   std_logic; 
          stop_n     : out   std_logic; 
          S1SEL      : out   std_logic_vector (1 downto 0); 
          S2SEL      : out   std_logic_vector (1 downto 0); 
          TEST       : out   std_logic; 
          wr_n       : out   std_logic);
end FULL_BNN_Control;

architecture BEHAVIORAL of FULL_BNN_Control is
   signal busy_DUMMY : std_logic;
   signal MR_DUMMY   : std_logic;
   signal MW_DUMMY   : std_logic;
   component BNN_control
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             step_en    : in    std_logic; 
             busy       : in    std_logic; 
             AEQZ       : in    std_logic; 
             IR         : in    std_logic_vector (31 downto 0); 
             IRCE       : out   std_logic; 
             PCCE       : out   std_logic; 
             ACE        : out   std_logic; 
             BCE        : out   std_logic; 
             CCE        : out   std_logic; 
             MARCE      : out   std_logic; 
             MDRCE      : out   std_logic; 
             DINSEL     : out   std_logic; 
             MDRSEL     : out   std_logic; 
             ASEL       : out   std_logic; 
             ADD        : out   std_logic; 
             TEST       : out   std_logic; 
             SHIFTER    : out   std_logic; 
             RIGHT      : out   std_logic; 
             ITYPE      : out   std_logic; 
             JLINK      : out   std_logic; 
             MR         : out   std_logic; 
             MW         : out   std_logic; 
             GPR_WE     : out   std_logic; 
             isINIT     : out   std_logic; 
             isHALT     : out   std_logic; 
             ACC_UPDATE : out   std_logic; 
             S1SEL      : out   std_logic_vector (1 downto 0); 
             S2SEL      : out   std_logic_vector (1 downto 0); 
             ALUF       : out   std_logic_vector (2 downto 0); 
             BNN_SEL    : out   std_logic_vector (1 downto 0); 
             DLX_STATE  : out   std_logic_vector (4 downto 0));
   end component;
   
   component MAC
      port ( ack_n     : in    std_logic; 
             clk       : in    std_logic; 
             mr        : in    std_logic; 
             mw        : in    std_logic; 
             reset     : in    std_logic; 
             as_n      : out   std_logic; 
             busy      : out   std_logic; 
             wr_n      : out   std_logic; 
             stop_n    : out   std_logic; 
             MAC_state : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   busy <= busy_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : BNN_control
      port map (AEQZ=>AEQZ,
                busy=>busy_DUMMY,
                clk=>CLK,
                IR(31 downto 0)=>IR(31 downto 0),
                reset=>RESET,
                step_en=>step_en,
                ACC_UPDATE=>ACC_UPDATE,
                ACE=>ACE,
                ADD=>ADD,
                ALUF(2 downto 0)=>ALUF(2 downto 0),
                ASEL=>ASEL,
                BCE=>BCE,
                BNN_SEL(1 downto 0)=>BNN_SEL(1 downto 0),
                CCE=>CCE,
                DINSEL=>DINSEL,
                DLX_STATE(4 downto 0)=>DLX_STATE(4 downto 0),
                GPR_WE=>GPRWE,
                IRCE=>IRCE,
                isHALT=>isHALT,
                isINIT=>isINIT,
                ITYPE=>ITYPE,
                JLINK=>JLINK,
                MARCE=>MARCE,
                MDRCE=>MDRCE,
                MDRSEL=>MDRSEL,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                PCCE=>PCCE,
                RIGHT=>RIGHT,
                SHIFTER=>SHIFTER,
                S1SEL(1 downto 0)=>S1SEL(1 downto 0),
                S2SEL(1 downto 0)=>S2SEL(1 downto 0),
                TEST=>TEST);
   
   XLXI_2 : MAC
      port map (ack_n=>ACK_N,
                clk=>CLK,
                mr=>MR_DUMMY,
                mw=>MW_DUMMY,
                reset=>RESET,
                as_n=>as_n,
                busy=>busy_DUMMY,
                MAC_state(1 downto 0)=>MAC_STATE(1 downto 0),
                stop_n=>stop_n,
                wr_n=>wr_n);
   
end BEHAVIORAL;


