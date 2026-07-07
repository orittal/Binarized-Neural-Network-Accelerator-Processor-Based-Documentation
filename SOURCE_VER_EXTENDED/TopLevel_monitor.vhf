--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TopLevel_monitor.vhf
-- /___/   /\     Timestamp : 06/25/2026 00:57:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/TopLevel_monitor.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/TopLevel_monitor.sch
--Design Name: TopLevel_monitor
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

entity LA_MUSER_TopLevel_monitor is
   port ( ai              : in    std_logic_vector (4 downto 0); 
          clk             : in    std_logic; 
          in_init         : in    std_logic; 
          monitor_signals : in    std_logic_vector (31 downto 0); 
          step_en         : in    std_logic; 
          stop_n          : in    std_logic; 
          DOUT            : out   std_logic_vector (31 downto 0); 
          STATUS          : out   std_logic_vector (4 downto 0));
end LA_MUSER_TopLevel_monitor;

architecture BEHAVIORAL of LA_MUSER_TopLevel_monitor is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity slvaeAO_MUSER_TopLevel_monitor is
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
end slvaeAO_MUSER_TopLevel_monitor;

architecture BEHAVIORAL of slvaeAO_MUSER_TopLevel_monitor is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity monitor_slave_MUSER_TopLevel_monitor is
   port ( AI      : in    std_logic_vector (9 downto 0); 
          A_IN    : in    std_logic_vector (31 downto 0); 
          B_IN    : in    std_logic_vector (31 downto 0); 
          Cardsel : in    std_logic; 
          clk     : in    std_logic; 
          D_IN    : in    std_logic_vector (31 downto 0); 
          IN_INIT : in    std_logic; 
          STEP_EN : in    std_logic; 
          STOP_N  : in    std_logic; 
          WR_N    : in    std_logic; 
          reg_adr : out   std_logic_vector (4 downto 0); 
          SACK_N  : out   std_logic; 
          SDO     : out   std_logic_vector (31 downto 0));
end monitor_slave_MUSER_TopLevel_monitor;

architecture BEHAVIORAL of monitor_slave_MUSER_TopLevel_monitor is
   signal D_OUT         : std_logic_vector (31 downto 0);
   signal STATUS        : std_logic_vector (31 downto 0);
   signal reg_adr_DUMMY : std_logic_vector (4 downto 0);
   component LA_MUSER_TopLevel_monitor
      port ( in_init         : in    std_logic; 
             step_en         : in    std_logic; 
             ai              : in    std_logic_vector (4 downto 0); 
             stop_n          : in    std_logic; 
             monitor_signals : in    std_logic_vector (31 downto 0); 
             clk             : in    std_logic; 
             DOUT            : out   std_logic_vector (31 downto 0); 
             STATUS          : out   std_logic_vector (4 downto 0));
   end component;
   
   component slvaeAO_MUSER_TopLevel_monitor
      port ( clk         : in    std_logic; 
             AI          : in    std_logic_vector (9 downto 0); 
             a           : in    std_logic_vector (31 downto 0); 
             b           : in    std_logic_vector (31 downto 0); 
             c           : in    std_logic_vector (31 downto 0); 
             d           : in    std_logic_vector (31 downto 0); 
             CARD_SEL    : in    std_logic; 
             WR_IN_N     : in    std_logic; 
             SACK_N      : out   std_logic; 
             SDO         : out   std_logic_vector (31 downto 0); 
             reg_address : out   std_logic_vector (4 downto 0));
   end component;
   
   component id_num
      port ( ID : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   reg_adr(4 downto 0) <= reg_adr_DUMMY(4 downto 0);
   XLXI_1 : LA_MUSER_TopLevel_monitor
      port map (ai(4 downto 0)=>reg_adr_DUMMY(4 downto 0),
                clk=>clk,
                in_init=>IN_INIT,
                monitor_signals(31 downto 0)=>D_IN(31 downto 0),
                step_en=>STEP_EN,
                stop_n=>STOP_N,
                DOUT(31 downto 0)=>D_OUT(31 downto 0),
                STATUS(4 downto 0)=>STATUS(4 downto 0));
   
   XLXI_2 : slvaeAO_MUSER_TopLevel_monitor
      port map (a(31 downto 0)=>D_OUT(31 downto 0),
                AI(9 downto 0)=>AI(9 downto 0),
                b(31 downto 0)=>STATUS(31 downto 0),
                c(31 downto 0)=>A_IN(31 downto 0),
                CARD_SEL=>Cardsel,
                clk=>clk,
                d(31 downto 0)=>B_IN(31 downto 0),
                WR_IN_N=>WR_N,
                reg_address(4 downto 0)=>reg_adr_DUMMY(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_3 : id_num
      port map (ID(7 downto 0)=>STATUS(31 downto 24));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity master_ver_MUSER_TopLevel_monitor is
   port ( CLK       : in    std_logic; 
          reg_adr   : in    std_logic_vector (4 downto 0); 
          RESET     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          in_init   : out   std_logic; 
          reg_out   : out   std_logic_vector (31 downto 0); 
          reg_write : out   std_logic_vector (4 downto 0); 
          state     : out   std_logic_vector (3 downto 0); 
          step_num  : out   std_logic_vector (4 downto 0));
end master_ver_MUSER_TopLevel_monitor;

architecture BEHAVIORAL of master_ver_MUSER_TopLevel_monitor is
   attribute BOX_TYPE   : string ;
   signal Data        : std_logic_vector (4 downto 0);
   signal wide        : std_logic_vector (31 downto 0);
   signal XLXN_9      : std_logic;
   signal state_DUMMY : std_logic_vector (3 downto 0);
   component BROJA
      port ( clk     : in    std_logic; 
             step    : in    std_logic; 
             reset   : in    std_logic; 
             in_init : out   std_logic; 
             cnt     : out   std_logic_vector (31 downto 0); 
             state   : out   std_logic_vector (3 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Step_CNT5
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
   
   component BUF5
      port ( I : in    std_logic_vector (4 downto 0); 
             O : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   state(3 downto 0) <= state_DUMMY(3 downto 0);
   XLXI_1 : BROJA
      port map (clk=>CLK,
                reset=>RESET,
                step=>STEP_EN,
                cnt(31 downto 0)=>wide(31 downto 0),
                in_init=>in_init,
                state(3 downto 0)=>state_DUMMY(3 downto 0));
   
   XLXI_2 : INV
      port map (I=>state_DUMMY(3),
                O=>XLXN_9);
   
   XLXI_9 : RAM32x32
      port map (ADDR(4 downto 0)=>Data(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>wide(31 downto 0),
                WE=>XLXN_9,
                DO(31 downto 0)=>reg_out(31 downto 0));
   
   XLXI_10 : Step_CNT5
      port map (CE=>STEP_EN,
                CLK=>CLK,
                RST=>RESET,
                CNT(4 downto 0)=>step_num(4 downto 0));
   
   XLXI_12 : MUX5bit
      port map (A(4 downto 0)=>wide(4 downto 0),
                B(4 downto 0)=>reg_adr(4 downto 0),
                sel=>state_DUMMY(3),
                O(4 downto 0)=>Data(4 downto 0));
   
   XLXI_13 : BUF5
      port map (I(4 downto 0)=>wide(4 downto 0),
                O(4 downto 0)=>reg_write(4 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TopLevel_monitor is
   port ( );
end TopLevel_monitor;

architecture BEHAVIORAL of TopLevel_monitor is
   attribute BOX_TYPE   : string ;
   signal ACK_N             : std_logic;
   signal AI                : std_logic_vector (9 downto 0);
   signal AS_N              : std_logic;
   signal Card_Sel          : std_logic;
   signal CLK               : std_logic;
   signal ext1              : std_logic_vector (31 downto 0);
   signal ext2              : std_logic_vector (31 downto 0);
   signal IN_INIT           : std_logic;
   signal monitored_signals : std_logic_vector (31 downto 0);
   signal reg_adr           : std_logic_vector (4 downto 0);
   signal RESET             : std_logic;
   signal SACK_N            : std_logic;
   signal SDO               : std_logic_vector (31 downto 0);
   signal STEP_EN           : std_logic;
   signal step_num          : std_logic_vector (4 downto 0);
   signal stop_n            : std_logic;
   signal WR_IN_N           : std_logic;
   signal WR_OUT_N          : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component master_ver_MUSER_TopLevel_monitor
      port ( CLK       : in    std_logic; 
             STEP_EN   : in    std_logic; 
             RESET     : in    std_logic; 
             reg_adr   : in    std_logic_vector (4 downto 0); 
             reg_out   : out   std_logic_vector (31 downto 0); 
             step_num  : out   std_logic_vector (4 downto 0); 
             state     : out   std_logic_vector (3 downto 0); 
             reg_write : out   std_logic_vector (4 downto 0); 
             in_init   : out   std_logic);
   end component;
   
   component monitor_slave_MUSER_TopLevel_monitor
      port ( IN_INIT : in    std_logic; 
             STEP_EN : in    std_logic; 
             STOP_N  : in    std_logic; 
             D_IN    : in    std_logic_vector (31 downto 0); 
             clk     : in    std_logic; 
             A_IN    : in    std_logic_vector (31 downto 0); 
             B_IN    : in    std_logic_vector (31 downto 0); 
             Cardsel : in    std_logic; 
             WR_N    : in    std_logic; 
             AI      : in    std_logic_vector (9 downto 0); 
             SACK_N  : out   std_logic; 
             SDO     : out   std_logic_vector (31 downto 0); 
             reg_adr : out   std_logic_vector (4 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component BUF5
      port ( I : in    std_logic_vector (4 downto 0); 
             O : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   XLXI_25 : VCC
      port map (P=>AS_N);
   
   XLXI_26 : VCC
      port map (P=>WR_OUT_N);
   
   XLXI_27 : master_ver_MUSER_TopLevel_monitor
      port map (CLK=>CLK,
                reg_adr(4 downto 0)=>reg_adr(4 downto 0),
                RESET=>RESET,
                STEP_EN=>STEP_EN,
                in_init=>IN_INIT,
                reg_out(31 downto 0)=>ext1(31 downto 0),
                reg_write(4 downto 0)=>monitored_signals(8 downto 4),
                state(3 downto 0)=>monitored_signals(3 downto 0),
                step_num(4 downto 0)=>step_num(4 downto 0));
   
   XLXI_34 : monitor_slave_MUSER_TopLevel_monitor
      port map (AI(9 downto 0)=>AI(9 downto 0),
                A_IN(31 downto 0)=>ext1(31 downto 0),
                B_IN(31 downto 0)=>ext2(31 downto 0),
                Cardsel=>Card_Sel,
                clk=>CLK,
                D_IN(31 downto 0)=>monitored_signals(31 downto 0),
                IN_INIT=>IN_INIT,
                STEP_EN=>STEP_EN,
                STOP_N=>stop_n,
                WR_N=>WR_IN_N,
                reg_adr(4 downto 0)=>reg_adr(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_35 : BUF
      port map (I=>STEP_EN,
                O=>monitored_signals(30));
   
   XLXI_38 : BUF
      port map (I=>IN_INIT,
                O=>monitored_signals(31));
   
   XLXI_39 : BUF5
      port map (I(4 downto 0)=>step_num(4 downto 0),
                O(4 downto 0)=>monitored_signals(13 downto 9));
   
   XLXI_40 : BUF5
      port map (I(4 downto 0)=>step_num(4 downto 0),
                O(4 downto 0)=>ext2(4 downto 0));
   
end BEHAVIORAL;


