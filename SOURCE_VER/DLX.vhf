--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DLX.vhf
-- /___/   /\     Timestamp : 02/05/2026 19:05:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C8/SOURCE_VER/DLX.vhf -w E:/adlx/C8/SOURCE_VER/DLX.sch
--Design Name: DLX
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

entity GPR_env_MUSER_DLX is
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
end GPR_env_MUSER_DLX;

architecture BEHAVIORAL of GPR_env_MUSER_DLX is
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

entity FULL_DATAPATH_MUSER_DLX is
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
end FULL_DATAPATH_MUSER_DLX;

architecture BEHAVIORAL of FULL_DATAPATH_MUSER_DLX is
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
   
   component GPR_env_MUSER_DLX
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
   
   XLXI_18 : GPR_env_MUSER_DLX
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

entity control_unit_MUSER_DLX is
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
end control_unit_MUSER_DLX;

architecture BEHAVIORAL of control_unit_MUSER_DLX is
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

entity DLX is
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
end DLX;

architecture BEHAVIORAL of DLX is
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
   component control_unit_MUSER_DLX
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
   
   component FULL_DATAPATH_MUSER_DLX
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
   XLXI_6 : control_unit_MUSER_DLX
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
   
   XLXI_7 : FULL_DATAPATH_MUSER_DLX
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


