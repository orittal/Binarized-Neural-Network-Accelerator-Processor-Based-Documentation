<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Card_Sel" />
        <signal name="Rsel" />
        <signal name="AI(9:0)" />
        <signal name="DO(31:0)" />
        <signal name="WR_IN_N" />
        <signal name="RACK_N" />
        <signal name="MAO(31:0)" />
        <signal name="MDO(31:0)" />
        <signal name="SACK_N" />
        <signal name="IN_INIT" />
        <signal name="CLK" />
        <signal name="STEP_EN" />
        <signal name="AS_N" />
        <signal name="WR_OUT_N" />
        <signal name="RESET" />
        <signal name="R_DO(31:0)" />
        <signal name="sdClk_o" />
        <signal name="sdBs_o(1:0)" />
        <signal name="sdDqml_o" />
        <signal name="sdDqmh_o" />
        <signal name="sdWe_bo" />
        <signal name="sdCas_bo" />
        <signal name="sdRas_bo" />
        <signal name="sdCe_bo" />
        <signal name="sdCke_o" />
        <signal name="fpgaClk_i" />
        <signal name="sdClkFb_i" />
        <signal name="sdData_io(15:0)" />
        <signal name="sdAddr_o(12:0)" />
        <signal name="SDO(31:0)" />
        <signal name="ACK_N" />
        <signal name="REG_ADR(4:0)" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="MAC_STATE(1)" />
        <signal name="MAC_STATE(0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="busy" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="DINsel" />
        <signal name="XLXN_31" />
        <signal name="MDRsel" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="AEQZ" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_48" />
        <signal name="monitored_signals(24)" />
        <signal name="monitored_signals(22)" />
        <signal name="monitored_signals(4)" />
        <signal name="monitored_signals(21)" />
        <signal name="monitored_signals(23)" />
        <signal name="monitored_signals(20)" />
        <signal name="XLXN_61" />
        <signal name="monitored_signals(12)" />
        <signal name="monitored_signals(13)" />
        <signal name="monitored_signals(14)" />
        <signal name="monitored_signals(7)" />
        <signal name="monitored_signals(10)" />
        <signal name="monitored_signals(11)" />
        <signal name="monitored_signals(15)" />
        <signal name="monitored_signals(8)" />
        <signal name="monitored_signals(9)" />
        <signal name="monitored_signals(5)" />
        <signal name="monitored_signals(6)" />
        <signal name="monitored_signals(25)" />
        <signal name="monitored_signals(26)" />
        <signal name="monitored_signals(0)" />
        <signal name="monitored_signals(1)" />
        <signal name="monitored_signals(2)" />
        <signal name="monitored_signals(3)" />
        <signal name="S1SEL(0)" />
        <signal name="monitored_signals(16)" />
        <signal name="S1SEL(1)" />
        <signal name="monitored_signals(17)" />
        <signal name="S2SEL(1)" />
        <signal name="monitored_signals(18)" />
        <signal name="monitored_signals(19)" />
        <signal name="S2SEL(0)" />
        <signal name="S1SEL(1:0)" />
        <signal name="S2SEL(1:0)" />
        <signal name="DLX_STATE(0)" />
        <signal name="monitored_signals(27)" />
        <signal name="DLX_STATE(1)" />
        <signal name="monitored_signals(28)" />
        <signal name="DLX_STATE(2)" />
        <signal name="monitored_signals(29)" />
        <signal name="DLX_STATE(3)" />
        <signal name="monitored_signals(30)" />
        <signal name="DLX_STATE(4)" />
        <signal name="monitored_signals(31)" />
        <signal name="DLX_STATE(4:0)" />
        <signal name="D(31:0)" />
        <signal name="monitored_signals(31:0)" />
        <signal name="STOP_N" />
        <signal name="ALUD(2:0)" />
        <signal name="ir(31:0)" />
        <signal name="XLXN_63" />
        <port polarity="Output" name="sdClk_o" />
        <port polarity="Output" name="sdBs_o(1:0)" />
        <port polarity="Output" name="sdDqml_o" />
        <port polarity="Output" name="sdDqmh_o" />
        <port polarity="Output" name="sdWe_bo" />
        <port polarity="Output" name="sdCas_bo" />
        <port polarity="Output" name="sdRas_bo" />
        <port polarity="Output" name="sdCe_bo" />
        <port polarity="Output" name="sdCke_o" />
        <port polarity="Input" name="fpgaClk_i" />
        <port polarity="Input" name="sdClkFb_i" />
        <port polarity="BiDirectional" name="sdData_io(15:0)" />
        <port polarity="Output" name="sdAddr_o(12:0)" />
        <blockdef name="IO_LOGIC_U">
            <timestamp>2015-7-8T11:14:45</timestamp>
            <rect width="304" x="64" y="-1280" height="1280" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1136" y2="-1136" x1="64" />
            <line x2="0" y1="-1024" y2="-1024" x1="64" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-576" y2="-576" x1="64" />
            <rect width="64" x="0" y="-476" height="24" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="monitor_slave">
            <timestamp>2025-11-24T9:47:15</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-332" height="24" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="DLX">
            <timestamp>2026-1-20T16:59:13</timestamp>
            <line x2="384" y1="2080" y2="2080" x1="320" />
            <line x2="384" y1="2144" y2="2144" x1="320" />
            <line x2="384" y1="2016" y2="2016" x1="320" />
            <line x2="384" y1="800" y2="800" x1="320" />
            <line x2="384" y1="864" y2="864" x1="320" />
            <line x2="384" y1="928" y2="928" x1="320" />
            <line x2="384" y1="992" y2="992" x1="320" />
            <line x2="384" y1="1056" y2="1056" x1="320" />
            <line x2="384" y1="1120" y2="1120" x1="320" />
            <line x2="384" y1="1184" y2="1184" x1="320" />
            <line x2="384" y1="1248" y2="1248" x1="320" />
            <line x2="384" y1="1312" y2="1312" x1="320" />
            <line x2="384" y1="1376" y2="1376" x1="320" />
            <line x2="384" y1="1440" y2="1440" x1="320" />
            <line x2="384" y1="1504" y2="1504" x1="320" />
            <line x2="384" y1="1568" y2="1568" x1="320" />
            <line x2="384" y1="1632" y2="1632" x1="320" />
            <line x2="384" y1="1696" y2="1696" x1="320" />
            <rect width="64" x="320" y="1748" height="24" />
            <line x2="384" y1="1760" y2="1760" x1="320" />
            <rect width="64" x="320" y="1812" height="24" />
            <line x2="384" y1="1824" y2="1824" x1="320" />
            <rect width="64" x="320" y="1876" height="24" />
            <line x2="384" y1="1888" y2="1888" x1="320" />
            <line x2="384" y1="1952" y2="1952" x1="320" />
            <line x2="0" y1="736" y2="736" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="320" y="340" height="24" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <rect width="64" x="320" y="468" height="24" />
            <line x2="384" y1="480" y2="480" x1="320" />
            <line x2="384" y1="544" y2="544" x1="320" />
            <line x2="384" y1="608" y2="608" x1="320" />
            <rect width="64" x="320" y="660" height="24" />
            <line x2="384" y1="672" y2="672" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-76" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
            <rect width="256" x="64" y="-384" height="2560" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="IO_LOGIC_U" name="XLXI_23">
            <blockpin signalname="AS_N" name="AS_N_i" />
            <blockpin signalname="fpgaClk_i" name="fpgaClk_i" />
            <blockpin signalname="IN_INIT" name="in_init_i" />
            <blockpin signalname="RACK_N" name="RACK_N_i" />
            <blockpin signalname="SACK_N" name="SACK_N_i" />
            <blockpin signalname="sdClkFb_i" name="sdClkFb_i" />
            <blockpin signalname="WR_OUT_N" name="WR_N_i" />
            <blockpin signalname="MAO(31:0)" name="MA_i(31:0)" />
            <blockpin signalname="MDO(31:0)" name="MD_i(31:0)" />
            <blockpin signalname="R_DO(31:0)" name="RD_i(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SD_i(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ACK_N" name="MACK_N_o" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="Rsel" name="Rsel_o" />
            <blockpin signalname="sdCas_bo" name="sdCas_bo" />
            <blockpin signalname="sdCe_bo" name="sdCe_bo" />
            <blockpin signalname="sdCke_o" name="sdCke_o" />
            <blockpin signalname="sdClk_o" name="sdClk_o" />
            <blockpin signalname="sdDqmh_o" name="sdDqmh_o" />
            <blockpin signalname="sdDqml_o" name="sdDqml_o" />
            <blockpin signalname="sdRas_bo" name="sdRas_bo" />
            <blockpin signalname="sdWe_bo" name="sdWe_bo" />
            <blockpin signalname="Card_Sel" name="Ssel_o" />
            <blockpin signalname="STEP_EN" name="step_en_o" />
            <blockpin signalname="WR_IN_N" name="WR_N_o" />
            <blockpin signalname="AI(9:0)" name="A_o(9:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="sdAddr_o(12:0)" name="sdAddr_o(12:0)" />
            <blockpin signalname="sdBs_o(1:0)" name="sdBs_o(1:0)" />
            <blockpin signalname="sdData_io(15:0)" name="sdData_io(15:0)" />
        </block>
        <block symbolname="DLX" name="XLXI_70">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="DO(31:0)" name="DI(31:0)" />
            <blockpin signalname="REG_ADR(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="XLXN_41" name="add" />
            <blockpin signalname="XLXN_40" name="test" />
            <blockpin signalname="XLXN_39" name="shift" />
            <blockpin signalname="XLXN_38" name="right" />
            <blockpin signalname="XLXN_37" name="Ace" />
            <blockpin signalname="XLXN_36" name="Bce" />
            <blockpin signalname="XLXN_35" name="Cce" />
            <blockpin signalname="XLXN_34" name="PCce" />
            <blockpin signalname="XLXN_33" name="MDRce" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="XLXN_31" name="MARce" />
            <blockpin signalname="DINsel" name="DINce" />
            <blockpin signalname="XLXN_28" name="Asel" />
            <blockpin signalname="XLXN_29" name="IRce" />
            <blockpin name="func(5:0)" />
            <blockpin signalname="MAO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin name="opcode(5:0)" />
            <blockpin signalname="S1SEL(1:0)" name="S1SEL(1:0)" />
            <blockpin signalname="S2SEL(1:0)" name="S2SEL(1:0)" />
            <blockpin signalname="XLXN_45" name="Itype" />
            <blockpin signalname="XLXN_46" name="jlink" />
            <blockpin signalname="XLXN_63" name="init" />
            <blockpin signalname="XLXN_48" name="halt" />
            <blockpin signalname="ALUD(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="DLX_STATE(4:0)" name="DLX_STATE(4:0)" />
            <blockpin signalname="WR_OUT_N" name="wr_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_STATE(1:0)" />
            <blockpin signalname="STOP_N" name="stop_n" />
            <blockpin signalname="AS_N" name="as_n" />
            <blockpin signalname="MDO(31:0)" name="DO(31:0)" />
            <blockpin signalname="ir(31:0)" name="IR(31:0)" />
            <blockpin signalname="XLXN_27" name="GPRwe" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="XLXN_25" name="MR" />
            <blockpin signalname="XLXN_24" name="MW" />
        </block>
        <block symbolname="buf" name="XLXI_78">
            <blockpin signalname="MAC_STATE(0)" name="I" />
            <blockpin signalname="monitored_signals(25)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_79">
            <blockpin signalname="MAC_STATE(1)" name="I" />
            <blockpin signalname="monitored_signals(26)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_87">
            <blockpin signalname="XLXN_41" name="I" />
            <blockpin signalname="monitored_signals(21)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_88">
            <blockpin signalname="XLXN_40" name="I" />
            <blockpin signalname="monitored_signals(23)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_89">
            <blockpin signalname="XLXN_39" name="I" />
            <blockpin signalname="monitored_signals(20)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_90">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_91">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="monitored_signals(12)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_93">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="monitored_signals(13)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_94">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="monitored_signals(14)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_95">
            <blockpin signalname="XLXN_34" name="I" />
            <blockpin signalname="monitored_signals(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_96">
            <blockpin signalname="XLXN_33" name="I" />
            <blockpin signalname="monitored_signals(10)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_98">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="monitored_signals(11)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_100">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="monitored_signals(15)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_101">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin signalname="monitored_signals(8)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_102">
            <blockpin signalname="XLXN_27" name="I" />
            <blockpin signalname="monitored_signals(9)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_104">
            <blockpin signalname="XLXN_25" name="I" />
            <blockpin signalname="monitored_signals(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_105">
            <blockpin signalname="XLXN_24" name="I" />
            <blockpin signalname="monitored_signals(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_107">
            <blockpin signalname="XLXN_46" name="I" />
            <blockpin signalname="monitored_signals(22)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_108">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="monitored_signals(24)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_110">
            <blockpin signalname="WR_OUT_N" name="I" />
            <blockpin signalname="monitored_signals(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_111">
            <blockpin signalname="STEP_EN" name="I" />
            <blockpin signalname="monitored_signals(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_113">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="monitored_signals(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_114">
            <blockpin signalname="IN_INIT" name="I" />
            <blockpin signalname="monitored_signals(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_115">
            <blockpin signalname="AS_N" name="I" />
            <blockpin signalname="monitored_signals(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_116">
            <blockpin signalname="S1SEL(0)" name="I" />
            <blockpin signalname="monitored_signals(16)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_117">
            <blockpin signalname="S1SEL(1)" name="I" />
            <blockpin signalname="monitored_signals(17)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_119">
            <blockpin signalname="S2SEL(0)" name="I" />
            <blockpin signalname="monitored_signals(18)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_120">
            <blockpin signalname="S2SEL(1)" name="I" />
            <blockpin signalname="monitored_signals(19)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_121">
            <blockpin signalname="DLX_STATE(0)" name="I" />
            <blockpin signalname="monitored_signals(27)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_122">
            <blockpin signalname="DLX_STATE(1)" name="I" />
            <blockpin signalname="monitored_signals(28)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_123">
            <blockpin signalname="DLX_STATE(2)" name="I" />
            <blockpin signalname="monitored_signals(29)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_124">
            <blockpin signalname="DLX_STATE(3)" name="I" />
            <blockpin signalname="monitored_signals(30)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_125">
            <blockpin signalname="DLX_STATE(4)" name="I" />
            <blockpin signalname="monitored_signals(31)" name="O" />
        </block>
        <block symbolname="monitor_slave" name="XLXI_34">
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="monitored_signals(31:0)" name="D_IN(31:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="D(31:0)" name="A_IN(31:0)" />
            <blockpin signalname="MAO(31:0)" name="B_IN(31:0)" />
            <blockpin signalname="Card_Sel" name="Cardsel" />
            <blockpin signalname="WR_IN_N" name="WR_N" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="REG_ADR(4:0)" name="reg_adr(4:0)" />
        </block>
        <block symbolname="or2" name="XLXI_126">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="IN_INIT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="208" type="branch" />
            <wire x2="416" y1="208" y2="208" x1="240" />
            <wire x2="432" y1="208" y2="208" x1="416" />
            <wire x2="464" y1="208" y2="208" x1="432" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="256" type="branch" />
            <wire x2="528" y1="256" y2="256" x1="240" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="304" type="branch" />
            <wire x2="432" y1="304" y2="304" x1="240" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="352" type="branch" />
            <wire x2="432" y1="352" y2="352" x1="240" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="400" type="branch" />
            <wire x2="432" y1="400" y2="400" x1="240" />
            <wire x2="512" y1="400" y2="400" x1="432" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="268" y="488">Master I/O</text>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="576" type="branch" />
            <wire x2="368" y1="576" y2="576" x1="208" />
            <wire x2="400" y1="576" y2="576" x1="368" />
            <wire x2="416" y1="576" y2="576" x1="400" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="624" type="branch" />
            <wire x2="400" y1="624" y2="624" x1="208" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="672" type="branch" />
            <wire x2="400" y1="672" y2="672" x1="208" />
            <wire x2="448" y1="672" y2="672" x1="400" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="720" type="branch" />
            <wire x2="400" y1="720" y2="720" x1="208" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="236" y="784">Control I/O</text>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1328" type="branch" />
            <wire x2="432" y1="1328" y2="1328" x1="224" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1280" type="branch" />
            <wire x2="432" y1="1280" y2="1280" x1="224" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1232" type="branch" />
            <wire x2="432" y1="1232" y2="1232" x1="224" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1184" type="branch" />
            <wire x2="432" y1="1184" y2="1184" x1="224" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1136" type="branch" />
            <wire x2="432" y1="1136" y2="1136" x1="224" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="880" type="branch" />
            <wire x2="432" y1="880" y2="880" x1="224" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="240" y="940">Bus data O</text>
        <text style="fontsize:32;fontname:Arial" x="264" y="1388">Slave I/O</text>
        <instance x="1664" y="480" name="XLXI_70" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="128" type="branch" />
            <wire x2="1664" y1="128" y2="128" x1="1568" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="192" type="branch" />
            <wire x2="1664" y1="192" y2="192" x1="1568" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="384" type="branch" />
            <wire x2="1664" y1="384" y2="384" x1="1568" />
        </branch>
        <branch name="REG_ADR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="448" type="branch" />
            <wire x2="1664" y1="448" y2="448" x1="1552" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="576" type="branch" />
            <wire x2="1664" y1="576" y2="576" x1="1616" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1216" type="branch" />
            <wire x2="1664" y1="1216" y2="1216" x1="1584" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="960" type="branch" />
            <wire x2="2144" y1="960" y2="960" x1="2048" />
        </branch>
        <instance x="2656" y="992" name="XLXI_78" orien="R0" />
        <instance x="2656" y="1072" name="XLXI_79" orien="R0" />
        <branch name="MAC_STATE(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="1040" type="branch" />
            <wire x2="2656" y1="1040" y2="1040" x1="2624" />
        </branch>
        <branch name="MAC_STATE(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="960" type="branch" />
            <wire x2="2656" y1="960" y2="960" x1="2608" />
        </branch>
        <instance x="2064" y="1376" name="XLXI_87" orien="R0" />
        <instance x="2064" y="1440" name="XLXI_88" orien="R0" />
        <instance x="2064" y="1504" name="XLXI_89" orien="R0" />
        <instance x="2064" y="1568" name="XLXI_90" orien="R0" />
        <instance x="2064" y="1632" name="XLXI_91" orien="R0" />
        <instance x="2064" y="1696" name="XLXI_93" orien="R0" />
        <instance x="2064" y="1760" name="XLXI_94" orien="R0" />
        <instance x="2064" y="1824" name="XLXI_95" orien="R0" />
        <instance x="2064" y="1888" name="XLXI_96" orien="R0" />
        <instance x="2064" y="2016" name="XLXI_98" orien="R0" />
        <instance x="2064" y="2144" name="XLXI_100" orien="R0" />
        <instance x="2064" y="2208" name="XLXI_101" orien="R0" />
        <instance x="2064" y="2464" name="XLXI_102" orien="R0" />
        <instance x="2064" y="2592" name="XLXI_104" orien="R0" />
        <instance x="2064" y="2656" name="XLXI_105" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2064" y1="2624" y2="2624" x1="2048" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2064" y1="2560" y2="2560" x1="2048" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="2496" type="branch" />
            <wire x2="2064" y1="2496" y2="2496" x1="2048" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2064" y1="2432" y2="2432" x1="2048" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2064" y1="2112" y2="2112" x1="2048" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2064" y1="2176" y2="2176" x1="2048" />
        </branch>
        <branch name="DINsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="2048" type="branch" />
            <wire x2="2064" y1="2048" y2="2048" x1="2048" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2064" y1="1984" y2="1984" x1="2048" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1920" type="branch" />
            <wire x2="2064" y1="1920" y2="1920" x1="2048" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2064" y1="1856" y2="1856" x1="2048" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2064" y1="1792" y2="1792" x1="2048" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="2064" y1="1728" y2="1728" x1="2048" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2064" y1="1664" y2="1664" x1="2048" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2064" y1="1600" y2="1600" x1="2048" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2064" y1="1536" y2="1536" x1="2048" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2064" y1="1472" y2="1472" x1="2048" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2064" y1="1408" y2="1408" x1="2048" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2064" y1="1344" y2="1344" x1="2048" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1280" type="branch" />
            <wire x2="2064" y1="1280" y2="1280" x1="2048" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1088" type="branch" />
            <wire x2="2064" y1="1088" y2="1088" x1="2048" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1024" type="branch" />
            <wire x2="2064" y1="1024" y2="1024" x1="2048" />
        </branch>
        <instance x="2064" y="608" name="XLXI_107" orien="R0" />
        <instance x="2064" y="544" name="XLXI_108" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="2064" y1="512" y2="512" x1="2048" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2064" y1="576" y2="576" x1="2048" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="2064" y1="704" y2="704" x1="2048" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="896" type="branch" />
            <wire x2="2064" y1="896" y2="896" x1="2048" />
            <wire x2="2080" y1="896" y2="896" x1="2064" />
        </branch>
        <branch name="monitored_signals(24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="512" type="branch" />
            <wire x2="2320" y1="512" y2="512" x1="2288" />
        </branch>
        <branch name="monitored_signals(22)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="576" type="branch" />
            <wire x2="2320" y1="576" y2="576" x1="2288" />
        </branch>
        <branch name="monitored_signals(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="896" type="branch" />
            <wire x2="2320" y1="896" y2="896" x1="2304" />
        </branch>
        <branch name="monitored_signals(21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1344" type="branch" />
            <wire x2="2320" y1="1344" y2="1344" x1="2288" />
        </branch>
        <branch name="monitored_signals(23)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1408" type="branch" />
            <wire x2="2320" y1="1408" y2="1408" x1="2288" />
        </branch>
        <branch name="monitored_signals(20)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1472" type="branch" />
            <wire x2="2336" y1="1472" y2="1472" x1="2288" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2304" y1="1536" y2="1536" x1="2288" />
        </branch>
        <branch name="monitored_signals(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1600" type="branch" />
            <wire x2="2320" y1="1600" y2="1600" x1="2288" />
        </branch>
        <branch name="monitored_signals(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1664" type="branch" />
            <wire x2="2304" y1="1664" y2="1664" x1="2288" />
        </branch>
        <branch name="monitored_signals(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1728" type="branch" />
            <wire x2="2320" y1="1728" y2="1728" x1="2288" />
        </branch>
        <branch name="monitored_signals(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1792" type="branch" />
            <wire x2="2304" y1="1792" y2="1792" x1="2288" />
        </branch>
        <branch name="monitored_signals(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1856" type="branch" />
            <wire x2="2320" y1="1856" y2="1856" x1="2288" />
        </branch>
        <branch name="monitored_signals(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1984" type="branch" />
            <wire x2="2320" y1="1984" y2="1984" x1="2288" />
        </branch>
        <branch name="monitored_signals(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2112" type="branch" />
            <wire x2="2320" y1="2112" y2="2112" x1="2288" />
        </branch>
        <branch name="monitored_signals(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2176" type="branch" />
            <wire x2="2320" y1="2176" y2="2176" x1="2288" />
        </branch>
        <branch name="monitored_signals(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2432" type="branch" />
            <wire x2="2320" y1="2432" y2="2432" x1="2288" />
        </branch>
        <branch name="monitored_signals(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2560" type="branch" />
            <wire x2="2320" y1="2560" y2="2560" x1="2288" />
        </branch>
        <branch name="monitored_signals(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="2624" type="branch" />
            <wire x2="2320" y1="2624" y2="2624" x1="2288" />
        </branch>
        <branch name="monitored_signals(25)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="960" type="branch" />
            <wire x2="2912" y1="960" y2="960" x1="2880" />
        </branch>
        <branch name="monitored_signals(26)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1040" type="branch" />
            <wire x2="2912" y1="1040" y2="1040" x1="2880" />
        </branch>
        <branch name="monitored_signals(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="672" type="branch" />
            <wire x2="704" y1="672" y2="672" x1="672" />
        </branch>
        <instance x="448" y="704" name="XLXI_111" orien="R0" />
        <branch name="monitored_signals(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="400" type="branch" />
            <wire x2="752" y1="400" y2="400" x1="736" />
            <wire x2="768" y1="400" y2="400" x1="752" />
        </branch>
        <instance x="512" y="432" name="XLXI_113" orien="R0" />
        <branch name="monitored_signals(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="576" type="branch" />
            <wire x2="672" y1="576" y2="576" x1="640" />
        </branch>
        <instance x="416" y="608" name="XLXI_114" orien="R0" />
        <branch name="monitored_signals(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="208" type="branch" />
            <wire x2="720" y1="208" y2="208" x1="688" />
        </branch>
        <instance x="464" y="240" name="XLXI_115" orien="R0" />
        <instance x="2784" y="2256" name="XLXI_116" orien="R0" />
        <branch name="S1SEL(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="2224" type="branch" />
            <wire x2="2784" y1="2224" y2="2224" x1="2736" />
        </branch>
        <branch name="monitored_signals(16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2224" type="branch" />
            <wire x2="3040" y1="2224" y2="2224" x1="3008" />
        </branch>
        <instance x="2784" y="2320" name="XLXI_117" orien="R0" />
        <branch name="S1SEL(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="2288" type="branch" />
            <wire x2="2784" y1="2288" y2="2288" x1="2752" />
        </branch>
        <branch name="monitored_signals(17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2288" type="branch" />
            <wire x2="3040" y1="2288" y2="2288" x1="3008" />
        </branch>
        <instance x="2784" y="2384" name="XLXI_119" orien="R0" />
        <branch name="S2SEL(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="2352" type="branch" />
            <wire x2="2784" y1="2352" y2="2352" x1="2736" />
        </branch>
        <branch name="monitored_signals(18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2352" type="branch" />
            <wire x2="3040" y1="2352" y2="2352" x1="3008" />
        </branch>
        <branch name="S2SEL(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="2416" type="branch" />
            <wire x2="2784" y1="2416" y2="2416" x1="2752" />
        </branch>
        <branch name="monitored_signals(19)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2416" type="branch" />
            <wire x2="3040" y1="2416" y2="2416" x1="3008" />
        </branch>
        <instance x="2784" y="2448" name="XLXI_120" orien="R0" />
        <branch name="S1SEL(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="2240" type="branch" />
            <wire x2="2112" y1="2240" y2="2240" x1="2048" />
        </branch>
        <branch name="S2SEL(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="2304" type="branch" />
            <wire x2="2128" y1="2304" y2="2304" x1="2048" />
        </branch>
        <instance x="2768" y="640" name="XLXI_121" orien="R0" />
        <branch name="DLX_STATE(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="608" type="branch" />
            <wire x2="2768" y1="608" y2="608" x1="2720" />
        </branch>
        <branch name="monitored_signals(27)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="608" type="branch" />
            <wire x2="3024" y1="608" y2="608" x1="2992" />
        </branch>
        <instance x="2768" y="704" name="XLXI_122" orien="R0" />
        <branch name="DLX_STATE(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="672" type="branch" />
            <wire x2="2768" y1="672" y2="672" x1="2736" />
        </branch>
        <branch name="monitored_signals(28)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="672" type="branch" />
            <wire x2="3024" y1="672" y2="672" x1="2992" />
        </branch>
        <instance x="2768" y="768" name="XLXI_123" orien="R0" />
        <branch name="DLX_STATE(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="736" type="branch" />
            <wire x2="2768" y1="736" y2="736" x1="2720" />
        </branch>
        <branch name="monitored_signals(29)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="736" type="branch" />
            <wire x2="3024" y1="736" y2="736" x1="2992" />
        </branch>
        <branch name="DLX_STATE(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="800" type="branch" />
            <wire x2="2768" y1="800" y2="800" x1="2736" />
        </branch>
        <branch name="monitored_signals(30)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="800" type="branch" />
            <wire x2="3024" y1="800" y2="800" x1="2992" />
        </branch>
        <instance x="2768" y="832" name="XLXI_124" orien="R0" />
        <branch name="DLX_STATE(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="864" type="branch" />
            <wire x2="2768" y1="864" y2="864" x1="2736" />
        </branch>
        <branch name="monitored_signals(31)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="864" type="branch" />
            <wire x2="3024" y1="864" y2="864" x1="2992" />
        </branch>
        <instance x="2768" y="896" name="XLXI_125" orien="R0" />
        <branch name="DLX_STATE(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="832" type="branch" />
            <wire x2="2128" y1="832" y2="832" x1="2048" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="320" type="branch" />
            <wire x2="2128" y1="320" y2="320" x1="2048" />
        </branch>
        <instance x="656" y="2512" name="XLXI_34" orien="R0">
        </instance>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1904" type="branch" />
            <wire x2="1136" y1="1904" y2="1904" x1="1040" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="2192" type="branch" />
            <wire x2="1168" y1="2192" y2="2192" x1="1040" />
        </branch>
        <branch name="REG_ADR(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="2480" type="branch" />
            <wire x2="1120" y1="2480" y2="2480" x1="1040" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2160" type="branch" />
            <wire x2="592" y1="2160" y2="2160" x1="576" />
            <wire x2="656" y1="2160" y2="2160" x1="592" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1904" type="branch" />
            <wire x2="576" y1="1904" y2="1904" x1="560" />
            <wire x2="656" y1="1904" y2="1904" x1="576" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1968" type="branch" />
            <wire x2="592" y1="1968" y2="1968" x1="576" />
            <wire x2="656" y1="1968" y2="1968" x1="592" />
        </branch>
        <branch name="monitored_signals(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2096" type="branch" />
            <wire x2="608" y1="2096" y2="2096" x1="592" />
            <wire x2="656" y1="2096" y2="2096" x1="608" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="2224" type="branch" />
            <wire x2="576" y1="2224" y2="2224" x1="560" />
            <wire x2="656" y1="2224" y2="2224" x1="576" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2288" type="branch" />
            <wire x2="592" y1="2288" y2="2288" x1="576" />
            <wire x2="656" y1="2288" y2="2288" x1="592" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="2352" type="branch" />
            <wire x2="576" y1="2352" y2="2352" x1="560" />
            <wire x2="656" y1="2352" y2="2352" x1="576" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="2480" type="branch" />
            <wire x2="656" y1="2480" y2="2480" x1="560" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2416" type="branch" />
            <wire x2="656" y1="2416" y2="2416" x1="576" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="2032" type="branch" />
            <wire x2="656" y1="2032" y2="2032" x1="560" />
        </branch>
        <branch name="ALUD(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="768" type="branch" />
            <wire x2="2144" y1="768" y2="768" x1="2048" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1152" type="branch" />
            <wire x2="2112" y1="1152" y2="1152" x1="2048" />
        </branch>
        <instance x="2080" y="928" name="XLXI_110" orien="R0" />
        <branch name="ir(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2368" type="branch" />
            <wire x2="2144" y1="2368" y2="2368" x1="2048" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="224" type="branch" />
            <wire x2="2128" y1="224" y2="224" x1="2048" />
        </branch>
        <instance x="2064" y="768" name="XLXI_126" orien="R0" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="672" type="branch" />
            <wire x2="2368" y1="672" y2="672" x1="2320" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2064" y1="640" y2="640" x1="2048" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1632" type="branch" />
            <wire x2="2240" y1="1632" y2="1632" x1="1840" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1568" type="branch" />
            <wire x2="2240" y1="1568" y2="1568" x1="1840" />
        </branch>
        <branch name="sdClk_o">
            <wire x2="1856" y1="1056" y2="1056" x1="1840" />
            <wire x2="1904" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="sdBs_o(1:0)">
            <wire x2="1856" y1="1760" y2="1760" x1="1840" />
            <wire x2="1904" y1="1760" y2="1760" x1="1856" />
        </branch>
        <branch name="sdDqml_o">
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
            <wire x2="1904" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="sdDqmh_o">
            <wire x2="1856" y1="1120" y2="1120" x1="1840" />
            <wire x2="1904" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="sdWe_bo">
            <wire x2="1856" y1="1312" y2="1312" x1="1840" />
            <wire x2="1904" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="sdCas_bo">
            <wire x2="1856" y1="864" y2="864" x1="1840" />
            <wire x2="1888" y1="864" y2="864" x1="1856" />
        </branch>
        <branch name="sdRas_bo">
            <wire x2="1856" y1="1248" y2="1248" x1="1840" />
            <wire x2="1904" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="sdCe_bo">
            <wire x2="1856" y1="928" y2="928" x1="1840" />
            <wire x2="1888" y1="928" y2="928" x1="1856" />
        </branch>
        <branch name="sdCke_o">
            <wire x2="1856" y1="992" y2="992" x1="1840" />
            <wire x2="1888" y1="992" y2="992" x1="1856" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="832" type="branch" />
            <wire x2="1408" y1="832" y2="832" x1="1360" />
        </branch>
        <branch name="fpgaClk_i">
            <wire x2="1408" y1="720" y2="720" x1="1376" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1392" type="branch" />
            <wire x2="1408" y1="1392" y2="1392" x1="1344" />
        </branch>
        <branch name="R_DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1616" type="branch" />
            <wire x2="1408" y1="1616" y2="1616" x1="1328" />
        </branch>
        <instance x="1408" y="1856" name="XLXI_23" orien="R0">
        </instance>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="608" type="branch" />
            <wire x2="1408" y1="608" y2="608" x1="1360" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1408" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="RACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="944" type="branch" />
            <wire x2="1408" y1="944" y2="944" x1="1360" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1056" type="branch" />
            <wire x2="1408" y1="1056" y2="1056" x1="1344" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1504" type="branch" />
            <wire x2="1408" y1="1504" y2="1504" x1="1344" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1728" type="branch" />
            <wire x2="1408" y1="1728" y2="1728" x1="1344" />
        </branch>
        <branch name="sdClkFb_i">
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1168" name="sdClkFb_i" orien="R180" />
        <iomarker fontsize="28" x="1376" y="720" name="fpgaClk_i" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="608" type="branch" />
            <wire x2="1904" y1="608" y2="608" x1="1840" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1440" type="branch" />
            <wire x2="1920" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1504" type="branch" />
            <wire x2="1936" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="672" type="branch" />
            <wire x2="1936" y1="672" y2="672" x1="1840" />
        </branch>
        <branch name="Rsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1376" type="branch" />
            <wire x2="1936" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="sdData_io(15:0)">
            <wire x2="1856" y1="1824" y2="1824" x1="1840" />
            <wire x2="1904" y1="1824" y2="1824" x1="1856" />
        </branch>
        <branch name="sdAddr_o(12:0)">
            <wire x2="1904" y1="1696" y2="1696" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1696" name="sdAddr_o(12:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1824" name="sdData_io(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1056" name="sdClk_o" orien="R0" />
        <iomarker fontsize="28" x="1888" y="864" name="sdCas_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="928" name="sdCe_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="992" name="sdCke_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1184" name="sdDqml_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1120" name="sdDqmh_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1312" name="sdWe_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1248" name="sdRas_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1760" name="sdBs_o(1:0)" orien="R0" />
    </sheet>
</drawing>