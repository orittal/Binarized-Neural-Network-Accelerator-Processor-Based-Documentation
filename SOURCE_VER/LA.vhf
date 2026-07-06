--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LA.vhf
-- /___/   /\     Timestamp : 02/03/2026 17:49:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C8/SOURCE_VER/LA.vhf -w E:/adlx/C8/SOURCE_VER/LA.sch
--Design Name: LA
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

entity LA is
   port ( ai              : in    std_logic_vector (4 downto 0); 
          clk             : in    std_logic; 
          in_init         : in    std_logic; 
          monitor_signals : in    std_logic_vector (31 downto 0); 
          step_en         : in    std_logic; 
          stop_n          : in    std_logic; 
          DOUT            : out   std_logic_vector (31 downto 0); 
          STATUS          : out   std_logic_vector (4 downto 0));
end LA;

architecture BEHAVIORAL of LA is
   attribute BOX_TYPE   : string ;
   signal la_run          : std_logic;
   signal la_we           : std_logic;
   signal sts_ce          : std_logic;
   signal XLXN_16         : std_logic_vector (4 downto 0);
   signal XLXN_17         : std_logic_vector (4 downto 0);
   signal XLXN_28         : std_logic;
   signal XLXN_31         : std_logic;
   signal XLXN_35         : std_logic;
   signal XLXN_41         : std_logic;
   signal XLXN_42         : std_logic;
   signal XLXN_63         : std_logic;
   signal XLXN_67         : std_logic;
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component CNT5
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (4 downto 0));
   end component;
   
   component MUX5bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component reg5
      port ( clock    : in    std_logic; 
             enable   : in    std_logic; 
             data_in  : in    std_logic_vector (4 downto 0); 
             data_out : out   std_logic_vector (4 downto 0); 
             reset    : in    std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : RAM32x32
      port map (ADDR(4 downto 0)=>XLXN_17(4 downto 0),
                CLK=>clk,
                DI(31 downto 0)=>monitor_signals(31 downto 0),
                WE=>la_we,
                DO(31 downto 0)=>DOUT(31 downto 0));
   
   XLXI_4 : CNT5
      port map (CE=>la_we,
                CLK=>clk,
                RST=>sts_ce,
                CNT(4 downto 0)=>XLXN_16(4 downto 0));
   
   XLXI_5 : MUX5bit
      port map (A(4 downto 0)=>ai(4 downto 0),
                B(4 downto 0)=>XLXN_16(4 downto 0),
                sel=>la_we,
                O(4 downto 0)=>XLXN_17(4 downto 0));
   
   XLXI_8 : INV
      port map (I=>XLXN_35,
                O=>XLXN_31);
   
   XLXI_9 : FD
      port map (C=>clk,
                D=>XLXN_67,
                Q=>XLXN_35);
   
   XLXI_10 : AND2
      port map (I0=>XLXN_42,
                I1=>XLXN_41,
                O=>sts_ce);
   
   XLXI_11 : INV
      port map (I=>la_run,
                O=>XLXN_41);
   
   XLXI_12 : FD
      port map (C=>clk,
                D=>la_run,
                Q=>XLXN_42);
   
   XLXI_19 : AND2
      port map (I0=>stop_n,
                I1=>la_run,
                O=>la_we);
   
   XLXI_24 : reg5
      port map (clock=>clk,
                data_in(4 downto 0)=>XLXN_16(4 downto 0),
                enable=>sts_ce,
                reset=>XLXN_28,
                data_out(4 downto 0)=>STATUS(4 downto 0));
   
   XLXI_27 : OR2
      port map (I0=>step_en,
                I1=>XLXN_63,
                O=>la_run);
   
   XLXI_28 : GND
      port map (G=>XLXN_28);
   
   XLXI_34 : NAND2
      port map (I0=>XLXN_31,
                I1=>in_init,
                O=>XLXN_63);
   
   XLXI_35 : INV
      port map (I=>in_init,
                O=>XLXN_67);
   
end BEHAVIORAL;


