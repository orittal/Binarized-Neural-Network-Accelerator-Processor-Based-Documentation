--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : control_unit.vhf
-- /___/   /\     Timestamp : 02/05/2026 19:05:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C8/SOURCE_VER/control_unit.vhf -w E:/adlx/C8/SOURCE_VER/control_unit.sch
--Design Name: control_unit
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

entity control_unit is
   port ( ack_n     : in    std_logic; 
          aeqz      : in    std_logic; 
          clk       : in    std_logic; 
          ir        : in    std_logic_vector (31 downto 0); 
          reset     : in    std_logic; 
          step_en   : in    std_logic; 
          Ace       : out   std_logic; 
          add       : out   std_logic; 
          ALUf      : out   std_logic_vector (2 downto 0); 
          Asel      : out   std_logic; 
          as_n      : out   std_logic; 
          Bce       : out   std_logic; 
          busy      : out   std_logic; 
          Cce       : out   std_logic; 
          DINce     : out   std_logic; 
          DLX_STATE : out   std_logic_vector (4 downto 0); 
          GPRwe     : out   std_logic; 
          halt      : out   std_logic; 
          init      : out   std_logic; 
          IRce      : out   std_logic; 
          Itype     : out   std_logic; 
          jlink     : out   std_logic; 
          MAC_STATE : out   std_logic_vector (1 downto 0); 
          MARce     : out   std_logic; 
          MDRce     : out   std_logic; 
          MDRsel    : out   std_logic; 
          mr        : out   std_logic; 
          mw        : out   std_logic; 
          PCce      : out   std_logic; 
          right     : out   std_logic; 
          shift     : out   std_logic; 
          stop_n    : out   std_logic; 
          s1sel     : out   std_logic_vector (1 downto 0); 
          s2sel     : out   std_logic_vector (1 downto 0); 
          test      : out   std_logic; 
          wr_n      : out   std_logic);
end control_unit;

architecture BEHAVIORAL of control_unit is
   signal busy_DUMMY : std_logic;
   signal mr_DUMMY   : std_logic;
   signal mw_DUMMY   : std_logic;
   component CONTROL_SDLXSM
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             step_en   : in    std_logic; 
             busy      : in    std_logic; 
             AEQZ      : in    std_logic; 
             IR        : in    std_logic_vector (31 downto 0); 
             IRCE      : out   std_logic; 
             PCCE      : out   std_logic; 
             ACE       : out   std_logic; 
             BCE       : out   std_logic; 
             CCE       : out   std_logic; 
             MARCE     : out   std_logic; 
             MDRCE     : out   std_logic; 
             DINSEL    : out   std_logic; 
             MDRSEL    : out   std_logic; 
             ASEL      : out   std_logic; 
             ADD       : out   std_logic; 
             TEST      : out   std_logic; 
             SHIFTER   : out   std_logic; 
             RIGHT     : out   std_logic; 
             ITYPE     : out   std_logic; 
             JLINK     : out   std_logic; 
             MR        : out   std_logic; 
             MW        : out   std_logic; 
             GPR_WE    : out   std_logic; 
             isINIT    : out   std_logic; 
             isHALT    : out   std_logic; 
             S1SEL     : out   std_logic_vector (1 downto 0); 
             S2SEL     : out   std_logic_vector (1 downto 0); 
             ALUF      : out   std_logic_vector (2 downto 0); 
             DLX_STATE : out   std_logic_vector (4 downto 0));
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
   mr <= mr_DUMMY;
   mw <= mw_DUMMY;
   XLXI_1 : CONTROL_SDLXSM
      port map (AEQZ=>aeqz,
                busy=>busy_DUMMY,
                clk=>clk,
                IR(31 downto 0)=>ir(31 downto 0),
                reset=>reset,
                step_en=>step_en,
                ACE=>Ace,
                ADD=>add,
                ALUF(2 downto 0)=>ALUf(2 downto 0),
                ASEL=>Asel,
                BCE=>Bce,
                CCE=>Cce,
                DINSEL=>DINce,
                DLX_STATE(4 downto 0)=>DLX_STATE(4 downto 0),
                GPR_WE=>GPRwe,
                IRCE=>IRce,
                isHALT=>halt,
                isINIT=>init,
                ITYPE=>Itype,
                JLINK=>jlink,
                MARCE=>MARce,
                MDRCE=>MDRce,
                MDRSEL=>MDRsel,
                MR=>mr_DUMMY,
                MW=>mw_DUMMY,
                PCCE=>PCce,
                RIGHT=>right,
                SHIFTER=>shift,
                S1SEL(1 downto 0)=>s1sel(1 downto 0),
                S2SEL(1 downto 0)=>s2sel(1 downto 0),
                TEST=>test);
   
   XLXI_2 : MAC
      port map (ack_n=>ack_n,
                clk=>clk,
                mr=>mr_DUMMY,
                mw=>mw_DUMMY,
                reset=>reset,
                as_n=>as_n,
                busy=>busy_DUMMY,
                MAC_state(1 downto 0)=>MAC_STATE(1 downto 0),
                stop_n=>stop_n,
                wr_n=>wr_n);
   
end BEHAVIORAL;


