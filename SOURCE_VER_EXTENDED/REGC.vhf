--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : REGC.vhf
-- /___/   /\     Timestamp : 06/25/2026 00:57:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/REGC.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/REGC.sch
--Design Name: REGC
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

entity REGC is
   port ( CE    : in    std_logic; 
          CLK   : in    std_logic; 
          DI    : in    std_logic_vector (31 downto 0); 
          RESET : in    std_logic; 
          DO    : out   std_logic_vector (31 downto 0));
end REGC;

architecture BEHAVIORAL of REGC is
   component REG32RST
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             RST : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : REG32RST
      port map (CE=>CE,
                CLK=>CLK,
                DI(31 downto 0)=>DI(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>DO(31 downto 0));
   
end BEHAVIORAL;


