--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_Level_drc.vhf
-- /___/   /\     Timestamp : 05/18/2026 17:06:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl Top_Level_drc.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER/Top_Level.sch
--Design Name: Top_Level
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

entity LA_MUSER_Top_Level is
   port ( ai              : in    std_logic_vector (4 downto 0); 
          clk             : in    std_logic; 
          in_init         : in    std_logic; 
          monitor_signals : in    std_logic_vector (31 downto 0); 
          step_en         : in    std_logic; 
          stop_n          : in    std_logic; 
          DOUT            : out   std_logic_vector (31 downto 0); 
          STATUS          : out   std_logic_vector (4 downto 0));
end LA_MUSER_Top_Level;

architecture BEHAVIORAL of LA_MUSER_Top_Level is
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

entity slvaeAO_MUSER_Top_Level is
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
end slvaeAO_MUSER_Top_Level;

architecture BEHAVIORAL of slvaeAO_MUSER_Top_Level is
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

entity monitor_slave_MUSER_Top_Level is
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
end monitor_slave_MUSER_Top_Level;

architecture BEHAVIORAL of monitor_slave_MUSER_Top_Level is
   signal D_OUT         : std_logic_vector (31 downto 0);
   signal STATUS        : std_logic_vector (31 downto 0);
   signal reg_adr_DUMMY : std_logic_vector (4 downto 0);
   component LA_MUSER_Top_Level
      port ( in_init         : in    std_logic; 
             step_en         : in    std_logic; 
             ai              : in    std_logic_vector (4 downto 0); 
             stop_n          : in    std_logic; 
             monitor_signals : in    std_logic_vector (31 downto 0); 
             clk             : in    std_logic; 
             DOUT            : out   std_logic_vector (31 downto 0); 
             STATUS          : out   std_logic_vector (4 downto 0));
   end component;
   
   component slvaeAO_MUSER_Top_Level
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
   XLXI_1 : LA_MUSER_Top_Level
      port map (ai(4 downto 0)=>reg_adr_DUMMY(4 downto 0),
                clk=>clk,
                in_init=>IN_INIT,
                monitor_signals(31 downto 0)=>D_IN(31 downto 0),
                step_en=>STEP_EN,
                stop_n=>STOP_N,
                DOUT(31 downto 0)=>D_OUT(31 downto 0),
                STATUS(4 downto 0)=>STATUS(4 downto 0));
   
   XLXI_2 : slvaeAO_MUSER_Top_Level
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

entity GPR_env_MUSER_Top_Level is
   port ( Aadr     : in    std_logic_vector (4 downto 0); 
          Badr     : in    std_logic_vector (4 downto 0); 
          C        : in    std_logic_vector (31 downto 0); 
          Cadr     : in    std_logic_vector (4 downto 0); 
          clk      : in    std_logic; 
          Dadr     : in    std_logic_vector (4 downto 0); 
          gpr_we   : in    std_logic; 
          A        : out   std_logic_vector (31 downto 0); 
          AEQZ_OUT : out   std_logic; 
          B        : out   std_logic_vector (31 downto 0); 
          D        : out   std_logic_vector (31 downto 0));
end GPR_env_MUSER_Top_Level;

architecture BEHAVIORAL of GPR_env_MUSER_Top_Level is
   attribute BOX_TYPE   : string ;
   signal gpr_we_tag : std_logic;
   signal XLXN_17    : std_logic;
   signal XLXN_62    : std_logic_vector (4 downto 0);
   signal XLXN_72    : std_logic_vector (4 downto 0);
   signal XLXN_73    : std_logic_vector (4 downto 0);
   signal A_DUMMY    : std_logic_vector (31 downto 0);
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component MUX5bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component AEQZ
      port ( DI    : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_2 : RAM32x32
      port map (ADDR(4 downto 0)=>XLXN_62(4 downto 0),
                CLK=>clk,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>gpr_we_tag,
                DO(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_3 : RAM32x32
      port map (ADDR(4 downto 0)=>XLXN_72(4 downto 0),
                CLK=>clk,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>gpr_we_tag,
                DO(31 downto 0)=>B(31 downto 0));
   
   XLXI_4 : RAM32x32
      port map (ADDR(4 downto 0)=>XLXN_73(4 downto 0),
                CLK=>clk,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>gpr_we_tag,
                DO(31 downto 0)=>D(31 downto 0));
   
   XLXI_5 : OR5
      port map (I0=>Cadr(4),
                I1=>Cadr(3),
                I2=>Cadr(2),
                I3=>Cadr(1),
                I4=>Cadr(0),
                O=>XLXN_17);
   
   XLXI_12 : AND2
      port map (I0=>XLXN_17,
                I1=>gpr_we,
                O=>gpr_we_tag);
   
   XLXI_13 : MUX5bit
      port map (A(4 downto 0)=>Aadr(4 downto 0),
                B(4 downto 0)=>Cadr(4 downto 0),
                sel=>gpr_we,
                O(4 downto 0)=>XLXN_62(4 downto 0));
   
   XLXI_14 : MUX5bit
      port map (A(4 downto 0)=>Badr(4 downto 0),
                B(4 downto 0)=>Cadr(4 downto 0),
                sel=>gpr_we,
                O(4 downto 0)=>XLXN_72(4 downto 0));
   
   XLXI_15 : MUX5bit
      port map (A(4 downto 0)=>Dadr(4 downto 0),
                B(4 downto 0)=>Cadr(4 downto 0),
                sel=>gpr_we,
                O(4 downto 0)=>XLXN_73(4 downto 0));
   
   XLXI_26 : AEQZ
      port map (DI(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZ_OUT);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FULL_DATAPATH_MUSER_Top_Level is
   port ( Ace     : in    std_logic; 
          add     : in    std_logic; 
          Asel    : in    std_logic; 
          Bce     : in    std_logic; 
          Cce     : in    std_logic; 
          CLK     : in    std_logic; 
          Dadr    : in    std_logic_vector (4 downto 0); 
          DI      : in    std_logic_vector (31 downto 0); 
          DINTsel : in    std_logic; 
          GPR_WE  : in    std_logic; 
          IRce    : in    std_logic; 
          MARce   : in    std_logic; 
          MDRce   : in    std_logic; 
          MDR_sel : in    std_logic; 
          PCce    : in    std_logic; 
          RESET   : in    std_logic; 
          right   : in    std_logic; 
          shift   : in    std_logic; 
          s1sel   : in    std_logic_vector (1 downto 0); 
          s2sel   : in    std_logic_vector (1 downto 0); 
          test    : in    std_logic; 
          AEQZ    : out   std_logic; 
          D       : out   std_logic_vector (31 downto 0); 
          DO      : out   std_logic_vector (31 downto 0); 
          func    : out   std_logic_vector (5 downto 0); 
          IR      : out   std_logic_vector (31 downto 0); 
          MMU_AO  : out   std_logic_vector (31 downto 0); 
          opcode  : out   std_logic_vector (5 downto 0));
end FULL_DATAPATH_MUSER_Top_Level;

architecture BEHAVIORAL of FULL_DATAPATH_MUSER_Top_Level is
   signal aadr     : std_logic_vector (4 downto 0);
   signal ALUF     : std_logic_vector (2 downto 0);
   signal AO       : std_logic_vector (31 downto 0);
   signal A_IN     : std_logic_vector (31 downto 0);
   signal A_OUT    : std_logic_vector (31 downto 0);
   signal badr     : std_logic_vector (4 downto 0);
   signal B_IN     : std_logic_vector (31 downto 0);
   signal B_OUT    : std_logic_vector (31 downto 0);
   signal cadr     : std_logic_vector (4 downto 0);
   signal C_OUT    : std_logic_vector (31 downto 0);
   signal DINT     : std_logic_vector (31 downto 0);
   signal MAR      : std_logic_vector (31 downto 0);
   signal PC       : std_logic_vector (31 downto 0);
   signal sext_imm : std_logic_vector (31 downto 0);
   signal S1       : std_logic_vector (31 downto 0);
   signal S2       : std_logic_vector (31 downto 0);
   signal XLXN_10  : std_logic_vector (31 downto 0);
   signal XLXN_15  : std_logic_vector (31 downto 0);
   signal XLXN_16  : std_logic_vector (31 downto 0);
   signal XLXN_131 : std_logic_vector (31 downto 0);
   signal XLXN_132 : std_logic_vector (31 downto 0);
   signal XLXN_134 : std_logic_vector (2 downto 0);
   signal XLXN_135 : std_logic_vector (2 downto 0);
   signal DO_DUMMY : std_logic_vector (31 downto 0);
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32RST
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             RST : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX4_32bit
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : in    std_logic_vector (31 downto 0); 
             D   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component SHIFTER_env
      port ( shift      : in    std_logic; 
             right      : in    std_logic; 
             DI_shifter : in    std_logic_vector (31 downto 0); 
             DO_shifter : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU
      port ( test    : in    std_logic; 
             add     : in    std_logic; 
             A       : in    std_logic_vector (31 downto 0); 
             B       : in    std_logic_vector (31 downto 0); 
             ALUF    : in    std_logic_vector (2 downto 0); 
             ALU_OUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component MMU
      port ( AO     : in    std_logic_vector (31 downto 0); 
             MMU_AO : out   std_logic_vector (31 downto 0));
   end component;
   
   component GPR_env_MUSER_Top_Level
      port ( C        : in    std_logic_vector (31 downto 0); 
             Aadr     : in    std_logic_vector (4 downto 0); 
             Badr     : in    std_logic_vector (4 downto 0); 
             Cadr     : in    std_logic_vector (4 downto 0); 
             gpr_we   : in    std_logic; 
             clk      : in    std_logic; 
             B        : out   std_logic_vector (31 downto 0); 
             D        : out   std_logic_vector (31 downto 0); 
             A        : out   std_logic_vector (31 downto 0); 
             AEQZ_OUT : out   std_logic; 
             Dadr     : in    std_logic_vector (4 downto 0));
   end component;
   
   component IR_env
      port ( CLK      : in    std_logic; 
             EN       : in    std_logic; 
             RST      : in    std_logic; 
             DI       : in    std_logic_vector (31 downto 0); 
             Aadr     : out   std_logic_vector (4 downto 0); 
             Badr     : out   std_logic_vector (4 downto 0); 
             Cadr     : out   std_logic_vector (4 downto 0); 
             imm      : out   std_logic_vector (15 downto 0); 
             sext_imm : out   std_logic_vector (31 downto 0); 
             func     : out   std_logic_vector (5 downto 0); 
             aluf     : out   std_logic_vector (2 downto 0); 
             IR       : out   std_logic_vector (31 downto 0); 
             opcode   : out   std_logic_vector (5 downto 0));
   end component;
   
   component MUX3bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (2 downto 0); 
             B   : in    std_logic_vector (2 downto 0); 
             O   : out   std_logic_vector (2 downto 0));
   end component;
   
   component const_011
      port ( out_const : out   std_logic_vector (2 downto 0));
   end component;
   
   component PC_ENVm
      port ( CLK    : in    std_logic; 
             RESET  : in    std_logic; 
             pc_en  : in    std_logic; 
             PC_IN  : in    std_logic_vector (31 downto 0); 
             PC_OUT : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXN_15(31 downto 0) <= x"00000000";
   XLXN_16(31 downto 0) <= x"00000001";
   DO(31 downto 0) <= DO_DUMMY(31 downto 0);
   DINTMUX : MUX32bit
      port map (A(31 downto 0)=>XLXN_131(31 downto 0),
                B(31 downto 0)=>XLXN_132(31 downto 0),
                sel=>DINTsel,
                O(31 downto 0)=>DINT(31 downto 0));
   
   REGA : REG32RST
      port map (CE=>Ace,
                CLK=>CLK,
                DI(31 downto 0)=>A_IN(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>A_OUT(31 downto 0));
   
   REGB : REG32RST
      port map (CE=>Bce,
                CLK=>CLK,
                DI(31 downto 0)=>B_IN(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>B_OUT(31 downto 0));
   
   REGC : REG32RST
      port map (CE=>Cce,
                CLK=>CLK,
                DI(31 downto 0)=>DINT(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>C_OUT(31 downto 0));
   
   REGMDR : REG32RST
      port map (CE=>MDRce,
                CLK=>CLK,
                DI(31 downto 0)=>XLXN_10(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>DO_DUMMY(31 downto 0));
   
   S1MUX : MUX4_32bit
      port map (A(31 downto 0)=>PC(31 downto 0),
                B(31 downto 0)=>A_OUT(31 downto 0),
                C(31 downto 0)=>B_OUT(31 downto 0),
                D(31 downto 0)=>DO_DUMMY(31 downto 0),
                sel(1 downto 0)=>s1sel(1 downto 0),
                O(31 downto 0)=>S1(31 downto 0));
   
   S2MUX : MUX4_32bit
      port map (A(31 downto 0)=>B_OUT(31 downto 0),
                B(31 downto 0)=>sext_imm(31 downto 0),
                C(31 downto 0)=>XLXN_15(31 downto 0),
                D(31 downto 0)=>XLXN_16(31 downto 0),
                sel(1 downto 0)=>s2sel(1 downto 0),
                O(31 downto 0)=>S2(31 downto 0));
   
   XLXI_4 : SHIFTER_env
      port map (DI_shifter(31 downto 0)=>S1(31 downto 0),
                right=>right,
                shift=>shift,
                DO_shifter(31 downto 0)=>XLXN_132(31 downto 0));
   
   XLXI_8 : ALU
      port map (A(31 downto 0)=>S1(31 downto 0),
                add=>add,
                ALUF(2 downto 0)=>XLXN_135(2 downto 0),
                B(31 downto 0)=>S2(31 downto 0),
                test=>test,
                ALU_OUT(31 downto 0)=>XLXN_131(31 downto 0));
   
   XLXI_9 : MMU
      port map (AO(31 downto 0)=>AO(31 downto 0),
                MMU_AO(31 downto 0)=>MMU_AO(31 downto 0));
   
   XLXI_12 : MUX32bit
      port map (A(31 downto 0)=>DINT(31 downto 0),
                B(31 downto 0)=>DI(31 downto 0),
                sel=>MDR_sel,
                O(31 downto 0)=>XLXN_10(31 downto 0));
   
   XLXI_18 : GPR_env_MUSER_Top_Level
      port map (Aadr(4 downto 0)=>aadr(4 downto 0),
                Badr(4 downto 0)=>badr(4 downto 0),
                C(31 downto 0)=>C_OUT(31 downto 0),
                Cadr(4 downto 0)=>cadr(4 downto 0),
                clk=>CLK,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                gpr_we=>GPR_WE,
                A(31 downto 0)=>A_IN(31 downto 0),
                AEQZ_OUT=>AEQZ,
                B(31 downto 0)=>B_IN(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_26 : IR_env
      port map (CLK=>CLK,
                DI(31 downto 0)=>DI(31 downto 0),
                EN=>IRce,
                RST=>RESET,
                Aadr(4 downto 0)=>aadr(4 downto 0),
                aluf(2 downto 0)=>ALUF(2 downto 0),
                Badr(4 downto 0)=>badr(4 downto 0),
                Cadr(4 downto 0)=>cadr(4 downto 0),
                func(5 downto 0)=>func(5 downto 0),
                imm=>open,
                IR(31 downto 0)=>IR(31 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0),
                sext_imm(31 downto 0)=>sext_imm(31 downto 0));
   
   XLXI_39 : MUX3bit
      port map (A(2 downto 0)=>ALUF(2 downto 0),
                B(2 downto 0)=>XLXN_134(2 downto 0),
                sel=>add,
                O(2 downto 0)=>XLXN_135(2 downto 0));
   
   XLXI_45 : REG32RST
      port map (CE=>MARce,
                CLK=>CLK,
                DI(31 downto 0)=>DINT(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>MAR(31 downto 0));
   
   XLXI_46 : MUX32bit
      port map (A(31 downto 0)=>PC(31 downto 0),
                B(31 downto 0)=>MAR(31 downto 0),
                sel=>Asel,
                O(31 downto 0)=>AO(31 downto 0));
   
   XLXI_47 : const_011
      port map (out_const(2 downto 0)=>XLXN_134(2 downto 0));
   
   XLXI_48 : PC_ENVm
      port map (CLK=>CLK,
                pc_en=>PCce,
                PC_IN(31 downto 0)=>DINT(31 downto 0),
                RESET=>RESET,
                PC_OUT(31 downto 0)=>PC(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity control_unit_MUSER_Top_Level is
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
end control_unit_MUSER_Top_Level;

architecture BEHAVIORAL of control_unit_MUSER_Top_Level is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DLX_MUSER_Top_Level is
   port ( ACK_N     : in    std_logic; 
          CLK       : in    std_logic; 
          Dadr      : in    std_logic_vector (4 downto 0); 
          DI        : in    std_logic_vector (31 downto 0); 
          RESET     : in    std_logic; 
          step_en   : in    std_logic; 
          Ace       : out   std_logic; 
          add       : out   std_logic; 
          AEQZ      : out   std_logic; 
          ALUF      : out   std_logic_vector (2 downto 0); 
          Asel      : out   std_logic; 
          as_n      : out   std_logic; 
          Bce       : out   std_logic; 
          busy      : out   std_logic; 
          Cce       : out   std_logic; 
          D         : out   std_logic_vector (31 downto 0); 
          DINce     : out   std_logic; 
          DLX_STATE : out   std_logic_vector (4 downto 0); 
          DO        : out   std_logic_vector (31 downto 0); 
          func      : out   std_logic_vector (5 downto 0); 
          GPRwe     : out   std_logic; 
          halt      : out   std_logic; 
          init      : out   std_logic; 
          IR        : out   std_logic_vector (31 downto 0); 
          IRce      : out   std_logic; 
          Itype     : out   std_logic; 
          jlink     : out   std_logic; 
          MAC_STATE : out   std_logic_vector (1 downto 0); 
          MARce     : out   std_logic; 
          MDRce     : out   std_logic; 
          MDRsel    : out   std_logic; 
          MMU_AO    : out   std_logic_vector (31 downto 0); 
          MR        : out   std_logic; 
          MW        : out   std_logic; 
          opcode    : out   std_logic_vector (5 downto 0); 
          PCce      : out   std_logic; 
          right     : out   std_logic; 
          shift     : out   std_logic; 
          stop_n    : out   std_logic; 
          S1SEL     : out   std_logic_vector (1 downto 0); 
          S2SEL     : out   std_logic_vector (1 downto 0); 
          test      : out   std_logic; 
          wr_n      : out   std_logic);
end DLX_MUSER_Top_Level;

architecture BEHAVIORAL of DLX_MUSER_Top_Level is
   signal MARce_DUMMY  : std_logic;
   signal DINce_DUMMY  : std_logic;
   signal IR_DUMMY     : std_logic_vector (31 downto 0);
   signal S1SEL_DUMMY  : std_logic_vector (1 downto 0);
   signal Bce_DUMMY    : std_logic;
   signal right_DUMMY  : std_logic;
   signal add_DUMMY    : std_logic;
   signal S2SEL_DUMMY  : std_logic_vector (1 downto 0);
   signal GPRwe_DUMMY  : std_logic;
   signal MDRsel_DUMMY : std_logic;
   signal Ace_DUMMY    : std_logic;
   signal MDRce_DUMMY  : std_logic;
   signal shift_DUMMY  : std_logic;
   signal test_DUMMY   : std_logic;
   signal PCce_DUMMY   : std_logic;
   signal AEQZ_DUMMY   : std_logic;
   signal Cce_DUMMY    : std_logic;
   signal Asel_DUMMY   : std_logic;
   signal IRce_DUMMY   : std_logic;
   component control_unit_MUSER_Top_Level
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             step_en   : in    std_logic; 
             aeqz      : in    std_logic; 
             ir        : in    std_logic_vector (31 downto 0); 
             ack_n     : in    std_logic; 
             busy      : out   std_logic; 
             IRce      : out   std_logic; 
             PCce      : out   std_logic; 
             Ace       : out   std_logic; 
             Bce       : out   std_logic; 
             Cce       : out   std_logic; 
             MARce     : out   std_logic; 
             MDRce     : out   std_logic; 
             DINce     : out   std_logic; 
             MDRsel    : out   std_logic; 
             Asel      : out   std_logic; 
             add       : out   std_logic; 
             test      : out   std_logic; 
             shift     : out   std_logic; 
             right     : out   std_logic; 
             Itype     : out   std_logic; 
             jlink     : out   std_logic; 
             GPRwe     : out   std_logic; 
             init      : out   std_logic; 
             halt      : out   std_logic; 
             s1sel     : out   std_logic_vector (1 downto 0); 
             s2sel     : out   std_logic_vector (1 downto 0); 
             ALUf      : out   std_logic_vector (2 downto 0); 
             DLX_STATE : out   std_logic_vector (4 downto 0); 
             wr_n      : out   std_logic; 
             MAC_STATE : out   std_logic_vector (1 downto 0); 
             stop_n    : out   std_logic; 
             as_n      : out   std_logic; 
             mr        : out   std_logic; 
             mw        : out   std_logic);
   end component;
   
   component FULL_DATAPATH_MUSER_Top_Level
      port ( CLK     : in    std_logic; 
             DI      : in    std_logic_vector (31 downto 0); 
             MDR_sel : in    std_logic; 
             s1sel   : in    std_logic_vector (1 downto 0); 
             PCce    : in    std_logic; 
             RESET   : in    std_logic; 
             Ace     : in    std_logic; 
             Bce     : in    std_logic; 
             Cce     : in    std_logic; 
             MDRce   : in    std_logic; 
             GPR_WE  : in    std_logic; 
             IRce    : in    std_logic; 
             shift   : in    std_logic; 
             right   : in    std_logic; 
             test    : in    std_logic; 
             add     : in    std_logic; 
             Dadr    : in    std_logic_vector (4 downto 0); 
             DINTsel : in    std_logic; 
             s2sel   : in    std_logic_vector (1 downto 0); 
             MARce   : in    std_logic; 
             Asel    : in    std_logic; 
             AEQZ    : out   std_logic; 
             opcode  : out   std_logic_vector (5 downto 0); 
             D       : out   std_logic_vector (31 downto 0); 
             func    : out   std_logic_vector (5 downto 0); 
             MMU_AO  : out   std_logic_vector (31 downto 0); 
             DO      : out   std_logic_vector (31 downto 0); 
             IR      : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   Ace <= Ace_DUMMY;
   add <= add_DUMMY;
   AEQZ <= AEQZ_DUMMY;
   Asel <= Asel_DUMMY;
   Bce <= Bce_DUMMY;
   Cce <= Cce_DUMMY;
   DINce <= DINce_DUMMY;
   GPRwe <= GPRwe_DUMMY;
   IR(31 downto 0) <= IR_DUMMY(31 downto 0);
   IRce <= IRce_DUMMY;
   MARce <= MARce_DUMMY;
   MDRce <= MDRce_DUMMY;
   MDRsel <= MDRsel_DUMMY;
   PCce <= PCce_DUMMY;
   right <= right_DUMMY;
   shift <= shift_DUMMY;
   S1SEL(1 downto 0) <= S1SEL_DUMMY(1 downto 0);
   S2SEL(1 downto 0) <= S2SEL_DUMMY(1 downto 0);
   test <= test_DUMMY;
   XLXI_6 : control_unit_MUSER_Top_Level
      port map (ack_n=>ACK_N,
                aeqz=>AEQZ_DUMMY,
                clk=>CLK,
                ir(31 downto 0)=>IR_DUMMY(31 downto 0),
                reset=>RESET,
                step_en=>step_en,
                Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                ALUf(2 downto 0)=>ALUF(2 downto 0),
                Asel=>Asel_DUMMY,
                as_n=>as_n,
                Bce=>Bce_DUMMY,
                busy=>busy,
                Cce=>Cce_DUMMY,
                DINce=>DINce_DUMMY,
                DLX_STATE(4 downto 0)=>DLX_STATE(4 downto 0),
                GPRwe=>GPRwe_DUMMY,
                halt=>halt,
                init=>init,
                IRce=>IRce_DUMMY,
                Itype=>Itype,
                jlink=>jlink,
                MAC_STATE(1 downto 0)=>MAC_STATE(1 downto 0),
                MARce=>MARce_DUMMY,
                MDRce=>MDRce_DUMMY,
                MDRsel=>MDRsel_DUMMY,
                mr=>MR,
                mw=>MW,
                PCce=>PCce_DUMMY,
                right=>right_DUMMY,
                shift=>shift_DUMMY,
                stop_n=>stop_n,
                s1sel(1 downto 0)=>S1SEL_DUMMY(1 downto 0),
                s2sel(1 downto 0)=>S2SEL_DUMMY(1 downto 0),
                test=>test_DUMMY,
                wr_n=>wr_n);
   
   XLXI_7 : FULL_DATAPATH_MUSER_Top_Level
      port map (Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                Asel=>Asel_DUMMY,
                Bce=>Bce_DUMMY,
                Cce=>Cce_DUMMY,
                CLK=>CLK,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                DI(31 downto 0)=>DI(31 downto 0),
                DINTsel=>DINce_DUMMY,
                GPR_WE=>GPRwe_DUMMY,
                IRce=>IRce_DUMMY,
                MARce=>MARce_DUMMY,
                MDRce=>MDRce_DUMMY,
                MDR_sel=>MDRsel_DUMMY,
                PCce=>PCce_DUMMY,
                RESET=>RESET,
                right=>right_DUMMY,
                shift=>shift_DUMMY,
                s1sel(1 downto 0)=>S1SEL_DUMMY(1 downto 0),
                s2sel(1 downto 0)=>S2SEL_DUMMY(1 downto 0),
                test=>test_DUMMY,
                AEQZ=>AEQZ_DUMMY,
                D(31 downto 0)=>D(31 downto 0),
                DO(31 downto 0)=>DO(31 downto 0),
                func(5 downto 0)=>func(5 downto 0),
                IR(31 downto 0)=>IR_DUMMY(31 downto 0),
                MMU_AO(31 downto 0)=>MMU_AO(31 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_Level is
   port ( fpgaClk_i : in    std_logic; 
          sdClkFb_i : in    std_logic; 
          sdAddr_o  : out   std_logic_vector (12 downto 0); 
          sdBs_o    : out   std_logic_vector (1 downto 0); 
          sdCas_bo  : out   std_logic; 
          sdCe_bo   : out   std_logic; 
          sdCke_o   : out   std_logic; 
          sdClk_o   : out   std_logic; 
          sdDqmh_o  : out   std_logic; 
          sdDqml_o  : out   std_logic; 
          sdRas_bo  : out   std_logic; 
          sdWe_bo   : out   std_logic; 
          sdData_io : inout std_logic_vector (15 downto 0));
end Top_Level;

architecture BEHAVIORAL of Top_Level is
   attribute BOX_TYPE   : string ;
   signal ACK_N             : std_logic;
   signal AEQZ              : std_logic;
   signal AI                : std_logic_vector (9 downto 0);
   signal ALUD              : std_logic_vector (2 downto 0);
   signal AS_N              : std_logic;
   signal busy              : std_logic;
   signal Card_Sel          : std_logic;
   signal CLK               : std_logic;
   signal D                 : std_logic_vector (31 downto 0);
   signal DINsel            : std_logic;
   signal DLX_STATE         : std_logic_vector (4 downto 0);
   signal DO                : std_logic_vector (31 downto 0);
   signal IN_INIT           : std_logic;
   signal ir                : std_logic_vector (31 downto 0);
   signal MAC_STATE         : std_logic_vector (1 downto 0);
   signal MAO               : std_logic_vector (31 downto 0);
   signal MDO               : std_logic_vector (31 downto 0);
   signal MDRsel            : std_logic;
   signal monitored_signals : std_logic_vector (31 downto 0);
   signal RACK_N            : std_logic;
   signal REG_ADR           : std_logic_vector (4 downto 0);
   signal RESET             : std_logic;
   signal Rsel              : std_logic;
   signal R_DO              : std_logic_vector (31 downto 0);
   signal SACK_N            : std_logic;
   signal SDO               : std_logic_vector (31 downto 0);
   signal STEP_EN           : std_logic;
   signal STOP_N            : std_logic;
   signal S1SEL             : std_logic_vector (1 downto 0);
   signal S2SEL             : std_logic_vector (1 downto 0);
   signal WR_IN_N           : std_logic;
   signal WR_OUT_N          : std_logic;
   signal XLXN_24           : std_logic;
   signal XLXN_25           : std_logic;
   signal XLXN_27           : std_logic;
   signal XLXN_28           : std_logic;
   signal XLXN_29           : std_logic;
   signal XLXN_31           : std_logic;
   signal XLXN_33           : std_logic;
   signal XLXN_34           : std_logic;
   signal XLXN_35           : std_logic;
   signal XLXN_36           : std_logic;
   signal XLXN_37           : std_logic;
   signal XLXN_38           : std_logic;
   signal XLXN_39           : std_logic;
   signal XLXN_40           : std_logic;
   signal XLXN_41           : std_logic;
   signal XLXN_45           : std_logic;
   signal XLXN_46           : std_logic;
   signal XLXN_48           : std_logic;
   signal XLXN_61           : std_logic;
   signal XLXN_63           : std_logic;
   component IO_LOGIC_U
      port ( AS_N_i    : in    std_logic; 
             fpgaClk_i : in    std_logic; 
             in_init_i : in    std_logic; 
             RACK_N_i  : in    std_logic; 
             SACK_N_i  : in    std_logic; 
             sdClkFb_i : in    std_logic; 
             WR_N_i    : in    std_logic; 
             MA_i      : in    std_logic_vector (31 downto 0); 
             MD_i      : in    std_logic_vector (31 downto 0); 
             RD_i      : in    std_logic_vector (31 downto 0); 
             SD_i      : in    std_logic_vector (31 downto 0); 
             CLK       : out   std_logic; 
             MACK_N_o  : out   std_logic; 
             RESET     : out   std_logic; 
             Rsel_o    : out   std_logic; 
             sdCas_bo  : out   std_logic; 
             sdCe_bo   : out   std_logic; 
             sdCke_o   : out   std_logic; 
             sdClk_o   : out   std_logic; 
             sdDqmh_o  : out   std_logic; 
             sdDqml_o  : out   std_logic; 
             sdRas_bo  : out   std_logic; 
             sdWe_bo   : out   std_logic; 
             Ssel_o    : out   std_logic; 
             step_en_o : out   std_logic; 
             WR_N_o    : out   std_logic; 
             A_o       : out   std_logic_vector (9 downto 0); 
             DO        : out   std_logic_vector (31 downto 0); 
             sdAddr_o  : out   std_logic_vector (12 downto 0); 
             sdBs_o    : out   std_logic_vector (1 downto 0); 
             sdData_io : inout std_logic_vector (15 downto 0));
   end component;
   
   component monitor_slave_MUSER_Top_Level
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
   
   component DLX_MUSER_Top_Level
      port ( CLK       : in    std_logic; 
             RESET     : in    std_logic; 
             DI        : in    std_logic_vector (31 downto 0); 
             Dadr      : in    std_logic_vector (4 downto 0); 
             step_en   : in    std_logic; 
             ACK_N     : in    std_logic; 
             AEQZ      : out   std_logic; 
             add       : out   std_logic; 
             test      : out   std_logic; 
             shift     : out   std_logic; 
             right     : out   std_logic; 
             Ace       : out   std_logic; 
             Bce       : out   std_logic; 
             Cce       : out   std_logic; 
             PCce      : out   std_logic; 
             MDRce     : out   std_logic; 
             MDRsel    : out   std_logic; 
             MARce     : out   std_logic; 
             DINce     : out   std_logic; 
             Asel      : out   std_logic; 
             IRce      : out   std_logic; 
             func      : out   std_logic_vector (5 downto 0); 
             MMU_AO    : out   std_logic_vector (31 downto 0); 
             D         : out   std_logic_vector (31 downto 0); 
             opcode    : out   std_logic_vector (5 downto 0); 
             S1SEL     : out   std_logic_vector (1 downto 0); 
             S2SEL     : out   std_logic_vector (1 downto 0); 
             Itype     : out   std_logic; 
             jlink     : out   std_logic; 
             init      : out   std_logic; 
             halt      : out   std_logic; 
             ALUF      : out   std_logic_vector (2 downto 0); 
             DLX_STATE : out   std_logic_vector (4 downto 0); 
             wr_n      : out   std_logic; 
             MAC_STATE : out   std_logic_vector (1 downto 0); 
             stop_n    : out   std_logic; 
             as_n      : out   std_logic; 
             DO        : out   std_logic_vector (31 downto 0); 
             IR        : out   std_logic_vector (31 downto 0); 
             GPRwe     : out   std_logic; 
             busy      : out   std_logic; 
             MR        : out   std_logic; 
             MW        : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_23 : IO_LOGIC_U
      port map (AS_N_i=>AS_N,
                fpgaClk_i=>fpgaClk_i,
                in_init_i=>IN_INIT,
                MA_i(31 downto 0)=>MAO(31 downto 0),
                MD_i(31 downto 0)=>MDO(31 downto 0),
                RACK_N_i=>RACK_N,
                RD_i(31 downto 0)=>R_DO(31 downto 0),
                SACK_N_i=>SACK_N,
                sdClkFb_i=>sdClkFb_i,
                SD_i(31 downto 0)=>SDO(31 downto 0),
                WR_N_i=>WR_OUT_N,
                A_o(9 downto 0)=>AI(9 downto 0),
                CLK=>CLK,
                DO(31 downto 0)=>DO(31 downto 0),
                MACK_N_o=>ACK_N,
                RESET=>RESET,
                Rsel_o=>Rsel,
                sdAddr_o(12 downto 0)=>sdAddr_o(12 downto 0),
                sdBs_o(1 downto 0)=>sdBs_o(1 downto 0),
                sdCas_bo=>sdCas_bo,
                sdCe_bo=>sdCe_bo,
                sdCke_o=>sdCke_o,
                sdClk_o=>sdClk_o,
                sdDqmh_o=>sdDqmh_o,
                sdDqml_o=>sdDqml_o,
                sdRas_bo=>sdRas_bo,
                sdWe_bo=>sdWe_bo,
                Ssel_o=>Card_Sel,
                step_en_o=>STEP_EN,
                WR_N_o=>WR_IN_N,
                sdData_io(15 downto 0)=>sdData_io(15 downto 0));
   
   XLXI_34 : monitor_slave_MUSER_Top_Level
      port map (AI(9 downto 0)=>AI(9 downto 0),
                A_IN(31 downto 0)=>D(31 downto 0),
                B_IN(31 downto 0)=>MAO(31 downto 0),
                Cardsel=>Card_Sel,
                clk=>CLK,
                D_IN(31 downto 0)=>monitored_signals(31 downto 0),
                IN_INIT=>IN_INIT,
                STEP_EN=>STEP_EN,
                STOP_N=>STOP_N,
                WR_N=>WR_IN_N,
                reg_adr(4 downto 0)=>REG_ADR(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_70 : DLX_MUSER_Top_Level
      port map (ACK_N=>ACK_N,
                CLK=>CLK,
                Dadr(4 downto 0)=>REG_ADR(4 downto 0),
                DI(31 downto 0)=>DO(31 downto 0),
                RESET=>RESET,
                step_en=>STEP_EN,
                Ace=>XLXN_37,
                add=>XLXN_41,
                AEQZ=>AEQZ,
                ALUF(2 downto 0)=>ALUD(2 downto 0),
                Asel=>XLXN_28,
                as_n=>AS_N,
                Bce=>XLXN_36,
                busy=>busy,
                Cce=>XLXN_35,
                D(31 downto 0)=>D(31 downto 0),
                DINce=>DINsel,
                DLX_STATE(4 downto 0)=>DLX_STATE(4 downto 0),
                DO(31 downto 0)=>MDO(31 downto 0),
                func=>open,
                GPRwe=>XLXN_27,
                halt=>XLXN_48,
                init=>XLXN_63,
                IR(31 downto 0)=>ir(31 downto 0),
                IRce=>XLXN_29,
                Itype=>XLXN_45,
                jlink=>XLXN_46,
                MAC_STATE(1 downto 0)=>MAC_STATE(1 downto 0),
                MARce=>XLXN_31,
                MDRce=>XLXN_33,
                MDRsel=>MDRsel,
                MMU_AO(31 downto 0)=>MAO(31 downto 0),
                MR=>XLXN_25,
                MW=>XLXN_24,
                opcode=>open,
                PCce=>XLXN_34,
                right=>XLXN_38,
                shift=>XLXN_39,
                stop_n=>STOP_N,
                S1SEL(1 downto 0)=>S1SEL(1 downto 0),
                S2SEL(1 downto 0)=>S2SEL(1 downto 0),
                test=>XLXN_40,
                wr_n=>WR_OUT_N);
   
   XLXI_78 : BUF
      port map (I=>MAC_STATE(0),
                O=>monitored_signals(25));
   
   XLXI_79 : BUF
      port map (I=>MAC_STATE(1),
                O=>monitored_signals(26));
   
   XLXI_87 : BUF
      port map (I=>XLXN_41,
                O=>monitored_signals(21));
   
   XLXI_88 : BUF
      port map (I=>XLXN_40,
                O=>monitored_signals(23));
   
   XLXI_89 : BUF
      port map (I=>XLXN_39,
                O=>monitored_signals(20));
   
   XLXI_90 : BUF
      port map (I=>XLXN_38,
                O=>XLXN_61);
   
   XLXI_91 : BUF
      port map (I=>XLXN_37,
                O=>monitored_signals(12));
   
   XLXI_93 : BUF
      port map (I=>XLXN_36,
                O=>monitored_signals(13));
   
   XLXI_94 : BUF
      port map (I=>XLXN_35,
                O=>monitored_signals(14));
   
   XLXI_95 : BUF
      port map (I=>XLXN_34,
                O=>monitored_signals(7));
   
   XLXI_96 : BUF
      port map (I=>XLXN_33,
                O=>monitored_signals(10));
   
   XLXI_98 : BUF
      port map (I=>XLXN_31,
                O=>monitored_signals(11));
   
   XLXI_100 : BUF
      port map (I=>XLXN_28,
                O=>monitored_signals(15));
   
   XLXI_101 : BUF
      port map (I=>XLXN_29,
                O=>monitored_signals(8));
   
   XLXI_102 : BUF
      port map (I=>XLXN_27,
                O=>monitored_signals(9));
   
   XLXI_104 : BUF
      port map (I=>XLXN_25,
                O=>monitored_signals(5));
   
   XLXI_105 : BUF
      port map (I=>XLXN_24,
                O=>monitored_signals(6));
   
   XLXI_107 : BUF
      port map (I=>XLXN_46,
                O=>monitored_signals(22));
   
   XLXI_108 : BUF
      port map (I=>XLXN_45,
                O=>monitored_signals(24));
   
   XLXI_110 : BUF
      port map (I=>WR_OUT_N,
                O=>monitored_signals(4));
   
   XLXI_111 : BUF
      port map (I=>STEP_EN,
                O=>monitored_signals(0));
   
   XLXI_113 : BUF
      port map (I=>ACK_N,
                O=>monitored_signals(1));
   
   XLXI_114 : BUF
      port map (I=>IN_INIT,
                O=>monitored_signals(2));
   
   XLXI_115 : BUF
      port map (I=>AS_N,
                O=>monitored_signals(3));
   
   XLXI_116 : BUF
      port map (I=>S1SEL(0),
                O=>monitored_signals(16));
   
   XLXI_117 : BUF
      port map (I=>S1SEL(1),
                O=>monitored_signals(17));
   
   XLXI_119 : BUF
      port map (I=>S2SEL(0),
                O=>monitored_signals(18));
   
   XLXI_120 : BUF
      port map (I=>S2SEL(1),
                O=>monitored_signals(19));
   
   XLXI_121 : BUF
      port map (I=>DLX_STATE(0),
                O=>monitored_signals(27));
   
   XLXI_122 : BUF
      port map (I=>DLX_STATE(1),
                O=>monitored_signals(28));
   
   XLXI_123 : BUF
      port map (I=>DLX_STATE(2),
                O=>monitored_signals(29));
   
   XLXI_124 : BUF
      port map (I=>DLX_STATE(3),
                O=>monitored_signals(30));
   
   XLXI_125 : BUF
      port map (I=>DLX_STATE(4),
                O=>monitored_signals(31));
   
   XLXI_126 : OR2
      port map (I0=>XLXN_48,
                I1=>XLXN_63,
                O=>IN_INIT);
   
end BEHAVIORAL;


