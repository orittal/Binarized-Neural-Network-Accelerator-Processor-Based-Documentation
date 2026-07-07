--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : slvaeAO.vhf
-- /___/   /\     Timestamp : 02/03/2026 17:49:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C8/SOURCE_VER/slvaeAO.vhf -w E:/adlx/C8/SOURCE_VER/slvaeAO.sch
--Design Name: slvaeAO
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

entity slvaeAO is
   port ( a           : in    std_logic_vector (31 downto 0); 
          AI          : in    std_logic_vector (9 downto 0); 
          b           : in    std_logic_vector (31 downto 0); 
          c           : in    std_logic_vector (31 downto 0); 
          CARD_SEL    : in    std_logic; 
          clk         : in    std_logic; 
          d           : in    std_logic_vector (31 downto 0); 
          WR_IN_N     : in    std_logic; 
          reg_address : out   std_logic_vector (4 downto 0); 
          SACK_N      : out   std_logic; 
          SDO         : out   std_logic_vector (31 downto 0));
end slvaeAO;

architecture BEHAVIORAL of slvaeAO is
   attribute BOX_TYPE   : string ;
   signal XLXN_18     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_20     : std_logic;
   signal XLXN_22     : std_logic;
   signal XLXN_23     : std_logic;
   signal XLXN_30     : std_logic;
   signal XLXN_33     : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component MUX4_32bit
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : in    std_logic_vector (31 downto 0); 
             D   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUF5
      port ( I : in    std_logic_vector (4 downto 0); 
             O : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   XLXI_1 : FD
      port map (C=>clk,
                D=>XLXN_23,
                Q=>XLXN_22);
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>XLXN_22,
                Q=>XLXN_20);
   
   XLXI_3 : FD
      port map (C=>clk,
                D=>XLXN_20,
                Q=>XLXN_19);
   
   XLXI_11 : MUX4_32bit
      port map (A(31 downto 0)=>a(31 downto 0),
                B(31 downto 0)=>b(31 downto 0),
                C(31 downto 0)=>c(31 downto 0),
                D(31 downto 0)=>d(31 downto 0),
                sel(1 downto 0)=>AI(6 downto 5),
                O(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_13 : AND3
      port map (I0=>WR_IN_N,
                I1=>CARD_SEL,
                I2=>XLXN_30,
                O=>XLXN_23);
   
   XLXI_15 : NAND2
      port map (I0=>XLXN_18,
                I1=>XLXN_20,
                O=>SACK_N);
   
   XLXI_16 : INV
      port map (I=>XLXN_19,
                O=>XLXN_18);
   
   XLXI_17 : AND3
      port map (I0=>AI(7),
                I1=>AI(8),
                I2=>XLXN_33,
                O=>XLXN_30);
   
   XLXI_25 : INV
      port map (I=>AI(9),
                O=>XLXN_33);
   
   XLXI_28 : BUF5
      port map (I(4 downto 0)=>AI(4 downto 0),
                O(4 downto 0)=>reg_address(4 downto 0));
   
end BEHAVIORAL;


