--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FULL_DATAPATH.vhf
-- /___/   /\     Timestamp : 02/03/2026 17:49:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C8/SOURCE_VER/FULL_DATAPATH.vhf -w E:/adlx/C8/SOURCE_VER/FULL_DATAPATH.sch
--Design Name: FULL_DATAPATH
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

entity GPR_env_MUSER_FULL_DATAPATH is
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
end GPR_env_MUSER_FULL_DATAPATH;

architecture BEHAVIORAL of GPR_env_MUSER_FULL_DATAPATH is
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

entity FULL_DATAPATH is
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
end FULL_DATAPATH;

architecture BEHAVIORAL of FULL_DATAPATH is
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
   
   component GPR_env_MUSER_FULL_DATAPATH
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
   
   XLXI_18 : GPR_env_MUSER_FULL_DATAPATH
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


