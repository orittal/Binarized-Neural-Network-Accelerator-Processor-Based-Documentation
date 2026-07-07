--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : load_store_simul.vhf
-- /___/   /\     Timestamp : 06/25/2026 00:57:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/load_store_simul.vhf -w C:/Users/administrator.CLS-210-PC/Desktop/C8/SOURCE_VER_EXTENDED/load_store_simul.sch
--Design Name: load_store_simul
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

entity control_MUSER_load_store_simul is
   port ( ACK_N             : in    std_logic; 
          clk               : in    std_logic; 
          OPCODE            : in    std_logic_vector (5 downto 0); 
          RESET             : in    std_logic; 
          STEP_EN           : in    std_logic; 
          AS_N              : out   std_logic; 
          DLX_CONTROL_STATE : out   std_logic_vector (3 downto 0); 
          EN_B              : out   std_logic; 
          EN_C              : out   std_logic; 
          EN_GPR            : out   std_logic; 
          EN_IR             : out   std_logic; 
          EN_PC             : out   std_logic; 
          IN_INIT           : out   std_logic; 
          MAC_STATE         : out   std_logic_vector (1 downto 0); 
          MR                : out   std_logic; 
          MUX_SEL           : out   std_logic; 
          MW                : out   std_logic; 
          stop_n            : out   std_logic; 
          WR_N              : out   std_logic);
end control_MUSER_load_store_simul;

architecture BEHAVIORAL of control_MUSER_load_store_simul is
   signal BUSY              : std_logic;
   signal MR_DUMMY          : std_logic;
   signal MW_DUMMY          : std_logic;
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
   
   component DLX_control
      port ( clk               : in    std_logic; 
             reset             : in    std_logic; 
             step_en           : in    std_logic; 
             busy              : in    std_logic; 
             opcode            : in    std_logic_vector (5 downto 0); 
             in_init           : out   std_logic; 
             mr                : out   std_logic; 
             mw                : out   std_logic; 
             en_B              : out   std_logic; 
             en_C              : out   std_logic; 
             en_PC             : out   std_logic; 
             en_IR             : out   std_logic; 
             en_GPR            : out   std_logic; 
             MUX_sel           : out   std_logic; 
             DLX_control_state : out   std_logic_vector (3 downto 0); 
             ack_n             : in    std_logic);
   end component;
   
begin
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : MAC
      port map (ack_n=>ACK_N,
                clk=>clk,
                mr=>MR_DUMMY,
                mw=>MW_DUMMY,
                reset=>RESET,
                as_n=>AS_N,
                busy=>BUSY,
                MAC_state(1 downto 0)=>MAC_STATE(1 downto 0),
                stop_n=>stop_n,
                wr_n=>WR_N);
   
   XLXI_5 : DLX_control
      port map (ack_n=>ACK_N,
                busy=>BUSY,
                clk=>clk,
                opcode(5 downto 0)=>OPCODE(5 downto 0),
                reset=>RESET,
                step_en=>STEP_EN,
                DLX_control_state(3 downto 0)=>DLX_CONTROL_STATE(3 downto 0),
                en_B=>EN_B,
                en_C=>EN_C,
                en_GPR=>EN_GPR,
                en_IR=>EN_IR,
                en_PC=>EN_PC,
                in_init=>IN_INIT,
                mr=>MR_DUMMY,
                MUX_sel=>MUX_SEL,
                mw=>MW_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_env_MUSER_load_store_simul is
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
end GPR_env_MUSER_load_store_simul;

architecture BEHAVIORAL of GPR_env_MUSER_load_store_simul is
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

entity FULL_DATAPATH_MUSER_load_store_simul is
   port ( Ace      : in    std_logic; 
          add      : in    std_logic; 
          Asel     : in    std_logic; 
          Bce      : in    std_logic; 
          Cce      : in    std_logic; 
          CLK      : in    std_logic; 
          Dadr     : in    std_logic_vector (4 downto 0); 
          DI       : in    std_logic_vector (31 downto 0); 
          DINTsel  : in    std_logic; 
          GPR_WE   : in    std_logic; 
          IRce     : in    std_logic; 
          MARce    : in    std_logic; 
          MDRce    : in    std_logic; 
          MDR_sel  : in    std_logic; 
          PCce     : in    std_logic; 
          REG_C_IN : in    std_logic_vector (31 downto 0); 
          RESET    : in    std_logic; 
          right    : in    std_logic; 
          shift    : in    std_logic; 
          s1sel    : in    std_logic_vector (1 downto 0); 
          s2sel    : in    std_logic_vector (1 downto 0); 
          test     : in    std_logic; 
          AEQZ     : out   std_logic; 
          A_OUT    : out   std_logic_vector (31 downto 0); 
          B_OUT    : out   std_logic_vector (31 downto 0); 
          D        : out   std_logic_vector (31 downto 0); 
          DINT     : out   std_logic_vector (31 downto 0); 
          DO       : out   std_logic_vector (31 downto 0); 
          func     : out   std_logic_vector (5 downto 0); 
          IR       : out   std_logic_vector (31 downto 0); 
          MMU_AO   : out   std_logic_vector (31 downto 0); 
          opcode   : out   std_logic_vector (5 downto 0));
end FULL_DATAPATH_MUSER_load_store_simul;

architecture BEHAVIORAL of FULL_DATAPATH_MUSER_load_store_simul is
   signal aadr        : std_logic_vector (4 downto 0);
   signal ALUF        : std_logic_vector (2 downto 0);
   signal AO          : std_logic_vector (31 downto 0);
   signal A_IN        : std_logic_vector (31 downto 0);
   signal badr        : std_logic_vector (4 downto 0);
   signal B_IN        : std_logic_vector (31 downto 0);
   signal cadr        : std_logic_vector (4 downto 0);
   signal C_OUT       : std_logic_vector (31 downto 0);
   signal MAR         : std_logic_vector (31 downto 0);
   signal PC          : std_logic_vector (31 downto 0);
   signal sext_imm    : std_logic_vector (31 downto 0);
   signal S1          : std_logic_vector (31 downto 0);
   signal S2          : std_logic_vector (31 downto 0);
   signal XLXN_10     : std_logic_vector (31 downto 0);
   signal XLXN_15     : std_logic_vector (31 downto 0);
   signal XLXN_16     : std_logic_vector (31 downto 0);
   signal XLXN_131    : std_logic_vector (31 downto 0);
   signal XLXN_132    : std_logic_vector (31 downto 0);
   signal XLXN_134    : std_logic_vector (2 downto 0);
   signal XLXN_135    : std_logic_vector (2 downto 0);
   signal DO_DUMMY    : std_logic_vector (31 downto 0);
   signal B_OUT_DUMMY : std_logic_vector (31 downto 0);
   signal DINT_DUMMY  : std_logic_vector (31 downto 0);
   signal A_OUT_DUMMY : std_logic_vector (31 downto 0);
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
   
   component GPR_env_MUSER_load_store_simul
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
   A_OUT(31 downto 0) <= A_OUT_DUMMY(31 downto 0);
   B_OUT(31 downto 0) <= B_OUT_DUMMY(31 downto 0);
   DINT(31 downto 0) <= DINT_DUMMY(31 downto 0);
   DO(31 downto 0) <= DO_DUMMY(31 downto 0);
   DINTMUX : MUX32bit
      port map (A(31 downto 0)=>XLXN_131(31 downto 0),
                B(31 downto 0)=>XLXN_132(31 downto 0),
                sel=>DINTsel,
                O(31 downto 0)=>DINT_DUMMY(31 downto 0));
   
   REGA : REG32RST
      port map (CE=>Ace,
                CLK=>CLK,
                DI(31 downto 0)=>A_IN(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>A_OUT_DUMMY(31 downto 0));
   
   REGB : REG32RST
      port map (CE=>Bce,
                CLK=>CLK,
                DI(31 downto 0)=>B_IN(31 downto 0),
                RST=>RESET,
                DO(31 downto 0)=>B_OUT_DUMMY(31 downto 0));
   
   REGC : REG32RST
      port map (CE=>Cce,
                CLK=>CLK,
                DI(31 downto 0)=>REG_C_IN(31 downto 0),
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
                B(31 downto 0)=>A_OUT_DUMMY(31 downto 0),
                C(31 downto 0)=>B_OUT_DUMMY(31 downto 0),
                D(31 downto 0)=>DO_DUMMY(31 downto 0),
                sel(1 downto 0)=>s1sel(1 downto 0),
                O(31 downto 0)=>S1(31 downto 0));
   
   S2MUX : MUX4_32bit
      port map (A(31 downto 0)=>B_OUT_DUMMY(31 downto 0),
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
      port map (A(31 downto 0)=>DINT_DUMMY(31 downto 0),
                B(31 downto 0)=>DI(31 downto 0),
                sel=>MDR_sel,
                O(31 downto 0)=>XLXN_10(31 downto 0));
   
   XLXI_18 : GPR_env_MUSER_load_store_simul
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
                DI(31 downto 0)=>DINT_DUMMY(31 downto 0),
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
                PC_IN(31 downto 0)=>DINT_DUMMY(31 downto 0),
                RESET=>RESET,
                PC_OUT(31 downto 0)=>PC(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LOAD_STORE_machine_MUSER_load_store_simul is
   port ( ack_n             : in    std_logic; 
          clk               : in    std_logic; 
          Dadr              : in    std_logic_vector (4 downto 0); 
          instruction       : in    std_logic_vector (31 downto 0); 
          reset             : in    std_logic; 
          step_en           : in    std_logic; 
          AEQZ              : out   std_logic; 
          as_n              : out   std_logic; 
          ce_regB           : out   std_logic; 
          ce_regC           : out   std_logic; 
          D                 : out   std_logic_vector (31 downto 0); 
          DLX_CONTROL_STATE : out   std_logic_vector (3 downto 0); 
          gpr_we            : out   std_logic; 
          IN_INIT           : out   std_logic; 
          ir_en             : out   std_logic; 
          MAC_STATE         : out   std_logic_vector (1 downto 0); 
          mao               : out   std_logic_vector (31 downto 0); 
          mdo               : out   std_logic_vector (31 downto 0); 
          MR                : out   std_logic; 
          mux_sel           : out   std_logic; 
          MW                : out   std_logic; 
          PC                : out   std_logic_vector (15 downto 0); 
          pc_en             : out   std_logic; 
          stop_n            : out   std_logic; 
          wr_n              : out   std_logic);
end LOAD_STORE_machine_MUSER_load_store_simul;

architecture BEHAVIORAL of LOAD_STORE_machine_MUSER_load_store_simul is
   signal opcode                     : std_logic_vector (5 downto 0);
   signal gpr_we_DUMMY               : std_logic;
   signal XLXI_1_Ace_openSignal      : std_logic;
   signal XLXI_1_add_openSignal      : std_logic;
   signal XLXI_1_Asel_openSignal     : std_logic;
   signal XLXI_1_Bce_openSignal      : std_logic;
   signal XLXI_1_Cce_openSignal      : std_logic;
   signal XLXI_1_DINTsel_openSignal  : std_logic;
   signal XLXI_1_IRce_openSignal     : std_logic;
   signal XLXI_1_MARce_openSignal    : std_logic;
   signal XLXI_1_MDRce_openSignal    : std_logic;
   signal XLXI_1_MDR_sel_openSignal  : std_logic;
   signal XLXI_1_PCce_openSignal     : std_logic;
   signal XLXI_1_REG_C_IN_openSignal : std_logic_vector (31 downto 0);
   signal XLXI_1_right_openSignal    : std_logic;
   signal XLXI_1_shift_openSignal    : std_logic;
   signal XLXI_1_s1sel_openSignal    : std_logic_vector (1 downto 0);
   signal XLXI_1_s2sel_openSignal    : std_logic_vector (1 downto 0);
   signal XLXI_1_test_openSignal     : std_logic;
   component FULL_DATAPATH_MUSER_load_store_simul
      port ( CLK      : in    std_logic; 
             DI       : in    std_logic_vector (31 downto 0); 
             MDR_sel  : in    std_logic; 
             s1sel    : in    std_logic_vector (1 downto 0); 
             PCce     : in    std_logic; 
             RESET    : in    std_logic; 
             Ace      : in    std_logic; 
             Bce      : in    std_logic; 
             MDRce    : in    std_logic; 
             gpr_WE   : in    std_logic; 
             IRce     : in    std_logic; 
             shift    : in    std_logic; 
             right    : in    std_logic; 
             test     : in    std_logic; 
             add      : in    std_logic; 
             Dadr     : in    std_logic_vector (4 downto 0); 
             DINTsel  : in    std_logic; 
             s2sel    : in    std_logic_vector (1 downto 0); 
             MARce    : in    std_logic; 
             Asel     : in    std_logic; 
             Cce      : in    std_logic; 
             REG_C_IN : in    std_logic_vector (31 downto 0); 
             DINT     : out   std_logic_vector (31 downto 0); 
             AEQZ     : out   std_logic; 
             OPCODE   : out   std_logic_vector (5 downto 0); 
             D        : out   std_logic_vector (31 downto 0); 
             func     : out   std_logic_vector (5 downto 0); 
             MMU_AO   : out   std_logic_vector (31 downto 0); 
             DO       : out   std_logic_vector (31 downto 0); 
             A_OUT    : out   std_logic_vector (31 downto 0); 
             B_OUT    : out   std_logic_vector (31 downto 0); 
             IR       : out   std_logic_vector (31 downto 0));
   end component;
   
   component control_MUSER_load_store_simul
      port ( clk               : in    std_logic; 
             RESET             : in    std_logic; 
             ACK_N             : in    std_logic; 
             STEP_EN           : in    std_logic; 
             OPCODE            : in    std_logic_vector (5 downto 0); 
             AS_N              : out   std_logic; 
             MW                : out   std_logic; 
             WR_N              : out   std_logic; 
             IN_INIT           : out   std_logic; 
             MR                : out   std_logic; 
             EN_B              : out   std_logic; 
             EN_C              : out   std_logic; 
             EN_PC             : out   std_logic; 
             EN_IR             : out   std_logic; 
             EN_GPR            : out   std_logic; 
             MUX_SEL           : out   std_logic; 
             MAC_STATE         : out   std_logic_vector (1 downto 0); 
             DLX_CONTROL_STATE : out   std_logic_vector (3 downto 0); 
             stop_n            : out   std_logic);
   end component;
   
begin
   gpr_we <= gpr_we_DUMMY;
   XLXI_1 : FULL_DATAPATH_MUSER_load_store_simul
      port map (Ace=>XLXI_1_Ace_openSignal,
                add=>XLXI_1_add_openSignal,
                Asel=>XLXI_1_Asel_openSignal,
                Bce=>XLXI_1_Bce_openSignal,
                Cce=>XLXI_1_Cce_openSignal,
                CLK=>clk,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                DI(31 downto 0)=>instruction(31 downto 0),
                DINTsel=>XLXI_1_DINTsel_openSignal,
                gpr_WE=>gpr_we_DUMMY,
                IRce=>XLXI_1_IRce_openSignal,
                MARce=>XLXI_1_MARce_openSignal,
                MDRce=>XLXI_1_MDRce_openSignal,
                MDR_sel=>XLXI_1_MDR_sel_openSignal,
                PCce=>XLXI_1_PCce_openSignal,
                REG_C_IN(31 downto 0)=>XLXI_1_REG_C_IN_openSignal(31 downto 0),
                RESET=>reset,
                right=>XLXI_1_right_openSignal,
                shift=>XLXI_1_shift_openSignal,
                s1sel(1 downto 0)=>XLXI_1_s1sel_openSignal(1 downto 0),
                s2sel(1 downto 0)=>XLXI_1_s2sel_openSignal(1 downto 0),
                test=>XLXI_1_test_openSignal,
                AEQZ=>open,
                A_OUT=>open,
                B_OUT=>open,
                D(31 downto 0)=>D(31 downto 0),
                DINT=>open,
                DO=>open,
                func=>open,
                IR=>open,
                MMU_AO=>open,
                OPCODE(5 downto 0)=>opcode(5 downto 0));
   
   XLXI_2 : control_MUSER_load_store_simul
      port map (ACK_N=>ack_n,
                clk=>clk,
                OPCODE(5 downto 0)=>opcode(5 downto 0),
                RESET=>reset,
                STEP_EN=>step_en,
                AS_N=>as_n,
                DLX_CONTROL_STATE(3 downto 0)=>DLX_CONTROL_STATE(3 downto 0),
                EN_B=>ce_regB,
                EN_C=>ce_regC,
                EN_GPR=>gpr_we_DUMMY,
                EN_IR=>ir_en,
                EN_PC=>pc_en,
                IN_INIT=>IN_INIT,
                MAC_STATE(1 downto 0)=>MAC_STATE(1 downto 0),
                MR=>MR,
                MUX_SEL=>mux_sel,
                MW=>MW,
                stop_n=>stop_n,
                WR_N=>wr_n);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity load_store_simul is
   port ( clk_in  : in    std_logic; 
          RESET   : in    std_logic; 
          step_in : in    std_logic);
end load_store_simul;

architecture BEHAVIORAL of load_store_simul is
   signal ack_n                  : std_logic;
   signal as_n                   : std_logic;
   signal clk                    : std_logic;
   signal DO                     : std_logic_vector (31 downto 0);
   signal mao                    : std_logic_vector (31 downto 0);
   signal mdo                    : std_logic_vector (31 downto 0);
   signal rst                    : std_logic;
   signal step                   : std_logic;
   signal wr_n                   : std_logic;
   signal XLXI_1_Dadr_openSignal : std_logic_vector (4 downto 0);
   component LOAD_STORE_machine_MUSER_load_store_simul
      port ( clk               : in    std_logic; 
             ack_n             : in    std_logic; 
             step_en           : in    std_logic; 
             instruction       : in    std_logic_vector (31 downto 0); 
             reset             : in    std_logic; 
             Dadr              : in    std_logic_vector (4 downto 0); 
             gpr_we            : out   std_logic; 
             mux_sel           : out   std_logic; 
             ir_en             : out   std_logic; 
             pc_en             : out   std_logic; 
             ce_regC           : out   std_logic; 
             ce_regB           : out   std_logic; 
             wr_n              : out   std_logic; 
             as_n              : out   std_logic; 
             mao               : out   std_logic_vector (31 downto 0); 
             mdo               : out   std_logic_vector (31 downto 0); 
             MAC_STATE         : out   std_logic_vector (1 downto 0); 
             DLX_CONTROL_STATE : out   std_logic_vector (3 downto 0); 
             IN_INIT           : out   std_logic; 
             AEQZ              : out   std_logic; 
             D                 : out   std_logic_vector (31 downto 0); 
             PC                : out   std_logic_vector (15 downto 0); 
             stop_n            : out   std_logic; 
             MW                : out   std_logic; 
             MR                : out   std_logic);
   end component;
   
   component IO_SIM
      port ( CLK_IN  : in    std_logic; 
             RST_IN  : in    std_logic; 
             STEP_IN : in    std_logic; 
             AS_N    : in    std_logic; 
             WR_N    : in    std_logic; 
             MAO     : in    std_logic_vector (31 downto 0); 
             MDO     : in    std_logic_vector (31 downto 0); 
             CLK     : out   std_logic; 
             RST     : out   std_logic; 
             STEP    : out   std_logic; 
             ACK_N   : out   std_logic; 
             DO      : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : LOAD_STORE_machine_MUSER_load_store_simul
      port map (ack_n=>ack_n,
                clk=>clk,
                Dadr(4 downto 0)=>XLXI_1_Dadr_openSignal(4 downto 0),
                instruction(31 downto 0)=>DO(31 downto 0),
                reset=>rst,
                step_en=>step,
                AEQZ=>open,
                as_n=>as_n,
                ce_regB=>open,
                ce_regC=>open,
                D=>open,
                DLX_CONTROL_STATE=>open,
                gpr_we=>open,
                IN_INIT=>open,
                ir_en=>open,
                MAC_STATE=>open,
                mao(31 downto 0)=>mao(31 downto 0),
                mdo(31 downto 0)=>mdo(31 downto 0),
                MR=>open,
                mux_sel=>open,
                MW=>open,
                PC=>open,
                pc_en=>open,
                stop_n=>open,
                wr_n=>wr_n);
   
   XLXI_2 : IO_SIM
      port map (AS_N=>as_n,
                CLK_IN=>clk_in,
                MAO(31 downto 0)=>mao(31 downto 0),
                MDO(31 downto 0)=>mdo(31 downto 0),
                RST_IN=>RESET,
                STEP_IN=>step_in,
                WR_N=>wr_n,
                ACK_N=>ack_n,
                CLK=>clk,
                DO(31 downto 0)=>DO(31 downto 0),
                RST=>rst,
                STEP=>step);
   
end BEHAVIORAL;


