<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="step_en" />
        <signal name="AEQZ" />
        <signal name="IR(31:0)" />
        <signal name="ACK_N" />
        <signal name="XLXN_38(31:0)" />
        <signal name="XLXN_39(31:0)" />
        <signal name="ACC_UPDATE" />
        <signal name="BNN_SEL(1:0)" />
        <signal name="DO(31:0)" />
        <signal name="MMU_AO(31:0)" />
        <signal name="func(5:0)" />
        <signal name="D(31:0)" />
        <signal name="opcode(5:0)" />
        <signal name="DI(31:0)" />
        <signal name="itype" />
        <signal name="jlink" />
        <signal name="mr" />
        <signal name="mw" />
        <signal name="isInit" />
        <signal name="isHalt" />
        <signal name="ALUF(2:0)" />
        <signal name="DLX_STATE(4:0)" />
        <signal name="busy" />
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="stop_n" />
        <signal name="Dadr(4:0)" />
        <signal name="IRCE" />
        <signal name="PCCE" />
        <signal name="ACE" />
        <signal name="BCE" />
        <signal name="CCE" />
        <signal name="MARCE" />
        <signal name="MDRCE" />
        <signal name="DINSEL" />
        <signal name="MDRSEL" />
        <signal name="ASEL" />
        <signal name="ADD" />
        <signal name="TEST" />
        <signal name="SHIFT" />
        <signal name="RIGHT" />
        <signal name="GPRWE" />
        <signal name="S1SEL(1:0)" />
        <signal name="S2SEL(1:0)" />
        <signal name="to_reg_C(31:0)" />
        <signal name="orig_DINT(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="step_en" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="IR(31:0)" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="ACC_UPDATE" />
        <port polarity="Output" name="BNN_SEL(1:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Output" name="MMU_AO(31:0)" />
        <port polarity="Output" name="func(5:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="opcode(5:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="itype" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="mw" />
        <port polarity="Output" name="isInit" />
        <port polarity="Output" name="isHalt" />
        <port polarity="Output" name="ALUF(2:0)" />
        <port polarity="Output" name="DLX_STATE(4:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="IRCE" />
        <port polarity="Output" name="PCCE" />
        <port polarity="Output" name="ACE" />
        <port polarity="Output" name="BCE" />
        <port polarity="Output" name="CCE" />
        <port polarity="Output" name="MARCE" />
        <port polarity="Output" name="MDRCE" />
        <port polarity="Output" name="DINSEL" />
        <port polarity="Output" name="MDRSEL" />
        <port polarity="Output" name="ASEL" />
        <port polarity="Output" name="ADD" />
        <port polarity="Output" name="TEST" />
        <port polarity="Output" name="SHIFT" />
        <port polarity="Output" name="RIGHT" />
        <port polarity="Output" name="GPRWE" />
        <port polarity="Output" name="S1SEL(1:0)" />
        <port polarity="Output" name="S2SEL(1:0)" />
        <port polarity="Output" name="to_reg_C(31:0)" />
        <port polarity="Output" name="orig_DINT(31:0)" />
        <blockdef name="BNN_extention">
            <timestamp>2026-6-24T21:14:11</timestamp>
            <rect width="400" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-428" height="24" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
        </blockdef>
        <blockdef name="FULL_DATAPATH">
            <timestamp>2026-6-23T16:41:21</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <rect width="64" x="0" y="-1260" height="24" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <rect width="64" x="0" y="-1132" height="24" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-1312" y2="-1312" x1="320" />
            <rect width="64" x="320" y="-1004" height="24" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-1344" height="1664" />
        </blockdef>
        <blockdef name="FULL_BNN_Control">
            <timestamp>2026-6-21T16:11:25</timestamp>
            <rect width="288" x="64" y="-2048" height="2048" />
            <line x2="0" y1="-2016" y2="-2016" x1="64" />
            <line x2="0" y1="-1632" y2="-1632" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="416" y1="-2016" y2="-2016" x1="352" />
            <line x2="416" y1="-1952" y2="-1952" x1="352" />
            <line x2="416" y1="-1888" y2="-1888" x1="352" />
            <rect width="64" x="352" y="-1836" height="24" />
            <line x2="416" y1="-1824" y2="-1824" x1="352" />
            <line x2="416" y1="-1760" y2="-1760" x1="352" />
            <line x2="416" y1="-1696" y2="-1696" x1="352" />
            <line x2="416" y1="-1632" y2="-1632" x1="352" />
            <line x2="416" y1="-1568" y2="-1568" x1="352" />
            <line x2="416" y1="-1504" y2="-1504" x1="352" />
            <line x2="416" y1="-1440" y2="-1440" x1="352" />
            <line x2="416" y1="-1376" y2="-1376" x1="352" />
            <line x2="416" y1="-1312" y2="-1312" x1="352" />
            <line x2="416" y1="-1248" y2="-1248" x1="352" />
            <line x2="416" y1="-1184" y2="-1184" x1="352" />
            <line x2="416" y1="-1120" y2="-1120" x1="352" />
            <line x2="416" y1="-1056" y2="-1056" x1="352" />
            <line x2="416" y1="-992" y2="-992" x1="352" />
            <line x2="416" y1="-928" y2="-928" x1="352" />
            <line x2="416" y1="-864" y2="-864" x1="352" />
            <line x2="416" y1="-800" y2="-800" x1="352" />
            <line x2="416" y1="-736" y2="-736" x1="352" />
            <line x2="416" y1="-672" y2="-672" x1="352" />
            <line x2="416" y1="-608" y2="-608" x1="352" />
            <line x2="416" y1="-544" y2="-544" x1="352" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="FULL_DATAPATH" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="MDRSEL" name="MDR_sel" />
            <blockpin signalname="S1SEL(1:0)" name="s1sel(1:0)" />
            <blockpin signalname="PCCE" name="PCce" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ACE" name="Ace" />
            <blockpin signalname="BCE" name="Bce" />
            <blockpin signalname="MDRCE" name="MDRce" />
            <blockpin signalname="GPRWE" name="GPR_WE" />
            <blockpin signalname="IRCE" name="IRce" />
            <blockpin signalname="SHIFT" name="shift" />
            <blockpin signalname="RIGHT" name="right" />
            <blockpin signalname="TEST" name="test" />
            <blockpin signalname="ADD" name="add" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="DINSEL" name="DINTsel" />
            <blockpin signalname="S2SEL(1:0)" name="s2sel(1:0)" />
            <blockpin signalname="MARCE" name="MARce" />
            <blockpin signalname="ASEL" name="Asel" />
            <blockpin signalname="CCE" name="Cce" />
            <blockpin signalname="to_reg_C(31:0)" name="REG_C_IN(31:0)" />
            <blockpin signalname="orig_DINT(31:0)" name="DINT(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="func(5:0)" name="func(5:0)" />
            <blockpin signalname="MMU_AO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="XLXN_38(31:0)" name="A_OUT(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="B_OUT(31:0)" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
        </block>
        <block symbolname="FULL_BNN_Control" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_STATE(1:0)" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="IRCE" name="IRCE" />
            <blockpin signalname="PCCE" name="PCCE" />
            <blockpin signalname="ACE" name="ACE" />
            <blockpin signalname="BCE" name="BCE" />
            <blockpin signalname="CCE" name="CCE" />
            <blockpin signalname="MARCE" name="MARCE" />
            <blockpin signalname="MDRCE" name="MDRCE" />
            <blockpin signalname="DINSEL" name="DINSEL" />
            <blockpin signalname="MDRSEL" name="MDRSEL" />
            <blockpin signalname="ASEL" name="ASEL" />
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="TEST" name="TEST" />
            <blockpin signalname="SHIFT" name="SHIFTER" />
            <blockpin signalname="RIGHT" name="RIGHT" />
            <blockpin signalname="itype" name="ITYPE" />
            <blockpin signalname="jlink" name="JLINK" />
            <blockpin signalname="mr" name="MR" />
            <blockpin signalname="mw" name="MW" />
            <blockpin signalname="GPRWE" name="GPRWE" />
            <blockpin signalname="isInit" name="isINIT" />
            <blockpin signalname="isHalt" name="isHALT" />
            <blockpin signalname="ACC_UPDATE" name="ACC_UPDATE" />
            <blockpin signalname="S1SEL(1:0)" name="S1SEL(1:0)" />
            <blockpin signalname="S2SEL(1:0)" name="S2SEL(1:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="BNN_SEL(1:0)" name="BNN_SEL(1:0)" />
            <blockpin signalname="DLX_STATE(4:0)" name="DLX_STATE(4:0)" />
        </block>
        <block symbolname="BNN_extention" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="ACC_UPDATE" name="ACC_UPDATE" />
            <blockpin signalname="XLXN_38(31:0)" name="data_A(31:0)" />
            <blockpin signalname="XLXN_39(31:0)" name="data_B(31:0)" />
            <blockpin signalname="orig_DINT(31:0)" name="orig_datapath_in(31:0)" />
            <blockpin signalname="BNN_SEL(1:0)" name="BNN_SEL(1:0)" />
            <blockpin signalname="to_reg_C(31:0)" name="to_reg_C(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="CLK">
            <wire x2="2864" y1="1520" y2="1520" x1="2736" />
        </branch>
        <branch name="RESET">
            <wire x2="2864" y1="1600" y2="1600" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1520" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2736" y="1600" name="RESET" orien="R180" />
        <instance x="3472" y="3584" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="1568" type="branch" />
            <wire x2="3472" y1="1568" y2="1568" x1="3360" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="1952" type="branch" />
            <wire x2="3472" y1="1952" y2="1952" x1="3360" />
        </branch>
        <branch name="step_en">
            <wire x2="3472" y1="2336" y2="2336" x1="3360" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="2720" type="branch" />
            <wire x2="3472" y1="2720" y2="2720" x1="3360" />
        </branch>
        <branch name="IR(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="3104" type="branch" />
            <wire x2="3472" y1="3104" y2="3104" x1="3360" />
        </branch>
        <branch name="ACK_N">
            <wire x2="3472" y1="3488" y2="3488" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3360" y="2336" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="3360" y="3488" name="ACK_N" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1504" type="branch" />
            <wire x2="4688" y1="1504" y2="1504" x1="4560" />
        </branch>
        <branch name="ACC_UPDATE">
            <wire x2="4000" y1="3232" y2="3232" x1="3888" />
        </branch>
        <branch name="BNN_SEL(1:0)">
            <wire x2="4000" y1="3488" y2="3488" x1="3888" />
        </branch>
        <branch name="IR(31:0)">
            <wire x2="5168" y1="2912" y2="2912" x1="5072" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="5088" y1="2848" y2="2848" x1="5072" />
            <wire x2="5280" y1="2848" y2="2848" x1="5088" />
        </branch>
        <branch name="func(5:0)">
            <wire x2="5200" y1="2464" y2="2464" x1="5072" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="5200" y1="2144" y2="2144" x1="5072" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="5200" y1="1824" y2="1824" x1="5072" />
        </branch>
        <branch name="AEQZ">
            <wire x2="5200" y1="1504" y2="1504" x1="5072" />
        </branch>
        <iomarker fontsize="28" x="5200" y="1824" name="opcode(5:0)" orien="R0" />
        <iomarker fontsize="28" x="5200" y="2144" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="5200" y="2464" name="func(5:0)" orien="R0" />
        <iomarker fontsize="28" x="4560" y="1568" name="DI(31:0)" orien="R180" />
        <branch name="XLXN_39(31:0)">
            <wire x2="5088" y1="3104" y2="3104" x1="5072" />
            <wire x2="5776" y1="3104" y2="3104" x1="5088" />
        </branch>
        <branch name="XLXN_38(31:0)">
            <wire x2="5088" y1="3040" y2="3040" x1="5072" />
            <wire x2="5776" y1="3040" y2="3040" x1="5088" />
        </branch>
        <branch name="MMU_AO(31:0)">
            <wire x2="5088" y1="2784" y2="2784" x1="5072" />
            <wire x2="5280" y1="2784" y2="2784" x1="5088" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1824" type="branch" />
            <wire x2="4688" y1="1824" y2="1824" x1="4560" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="4688" y1="1568" y2="1568" x1="4560" />
        </branch>
        <instance x="4688" y="2816" name="XLXI_2" orien="R0">
        </instance>
        <branch name="itype">
            <wire x2="4000" y1="2784" y2="2784" x1="3888" />
        </branch>
        <branch name="jlink">
            <wire x2="4000" y1="2848" y2="2848" x1="3888" />
        </branch>
        <branch name="mr">
            <wire x2="4000" y1="2912" y2="2912" x1="3888" />
        </branch>
        <branch name="mw">
            <wire x2="4000" y1="2976" y2="2976" x1="3888" />
        </branch>
        <branch name="isInit">
            <wire x2="4000" y1="3104" y2="3104" x1="3888" />
        </branch>
        <branch name="isHalt">
            <wire x2="4000" y1="3168" y2="3168" x1="3888" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="4000" y1="3424" y2="3424" x1="3888" />
        </branch>
        <branch name="DLX_STATE(4:0)">
            <wire x2="4000" y1="3552" y2="3552" x1="3888" />
        </branch>
        <branch name="busy">
            <wire x2="4000" y1="1568" y2="1568" x1="3888" />
        </branch>
        <branch name="as_n">
            <wire x2="4000" y1="1632" y2="1632" x1="3888" />
        </branch>
        <branch name="wr_n">
            <wire x2="4000" y1="1696" y2="1696" x1="3888" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="4000" y1="1760" y2="1760" x1="3888" />
        </branch>
        <branch name="stop_n">
            <wire x2="4000" y1="1824" y2="1824" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="4000" y="1568" name="busy" orien="R0" />
        <iomarker fontsize="28" x="4000" y="1632" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="4000" y="1696" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="4000" y="1760" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4000" y="1824" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="4000" y="2784" name="itype" orien="R0" />
        <iomarker fontsize="28" x="4000" y="2848" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="4000" y="2912" name="mr" orien="R0" />
        <iomarker fontsize="28" x="4000" y="2976" name="mw" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3104" name="isInit" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3168" name="isHalt" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3424" name="ALUF(2:0)" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3552" name="DLX_STATE(4:0)" orien="R0" />
        <branch name="Dadr(4:0)">
            <wire x2="4688" y1="2528" y2="2528" x1="4608" />
        </branch>
        <branch name="IRCE">
            <wire x2="3920" y1="1888" y2="1888" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="1888" name="IRCE" orien="R0" />
        <branch name="PCCE">
            <wire x2="3920" y1="1952" y2="1952" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="1952" name="PCCE" orien="R0" />
        <branch name="ACE">
            <wire x2="3920" y1="2016" y2="2016" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2016" name="ACE" orien="R0" />
        <branch name="BCE">
            <wire x2="3920" y1="2080" y2="2080" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2080" name="BCE" orien="R0" />
        <branch name="CCE">
            <wire x2="3920" y1="2144" y2="2144" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2144" name="CCE" orien="R0" />
        <branch name="MARCE">
            <wire x2="3920" y1="2208" y2="2208" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2208" name="MARCE" orien="R0" />
        <branch name="MDRCE">
            <wire x2="3920" y1="2272" y2="2272" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2272" name="MDRCE" orien="R0" />
        <branch name="DINSEL">
            <wire x2="3920" y1="2336" y2="2336" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2336" name="DINSEL" orien="R0" />
        <branch name="MDRSEL">
            <wire x2="3920" y1="2400" y2="2400" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2400" name="MDRSEL" orien="R0" />
        <branch name="ASEL">
            <wire x2="3920" y1="2464" y2="2464" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2464" name="ASEL" orien="R0" />
        <branch name="ADD">
            <wire x2="3920" y1="2528" y2="2528" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2528" name="ADD" orien="R0" />
        <branch name="TEST">
            <wire x2="3920" y1="2592" y2="2592" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2592" name="TEST" orien="R0" />
        <branch name="SHIFT">
            <wire x2="3920" y1="2656" y2="2656" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2656" name="SHIFT" orien="R0" />
        <branch name="RIGHT">
            <wire x2="3920" y1="2720" y2="2720" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="2720" name="RIGHT" orien="R0" />
        <branch name="GPRWE">
            <wire x2="3920" y1="3040" y2="3040" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3920" y="3040" name="GPRWE" orien="R0" />
        <branch name="ACE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1888" type="branch" />
            <wire x2="4688" y1="1888" y2="1888" x1="4560" />
        </branch>
        <branch name="BCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1952" type="branch" />
            <wire x2="4592" y1="1952" y2="1952" x1="4560" />
            <wire x2="4688" y1="1952" y2="1952" x1="4592" />
        </branch>
        <branch name="CCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2016" type="branch" />
            <wire x2="4688" y1="2016" y2="2016" x1="4560" />
        </branch>
        <branch name="MDRCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2080" type="branch" />
            <wire x2="4688" y1="2080" y2="2080" x1="4560" />
        </branch>
        <branch name="GPRWE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2144" type="branch" />
            <wire x2="4688" y1="2144" y2="2144" x1="4560" />
        </branch>
        <branch name="IRCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2208" type="branch" />
            <wire x2="4688" y1="2208" y2="2208" x1="4560" />
        </branch>
        <branch name="SHIFT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2272" type="branch" />
            <wire x2="4688" y1="2272" y2="2272" x1="4560" />
        </branch>
        <branch name="RIGHT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2336" type="branch" />
            <wire x2="4688" y1="2336" y2="2336" x1="4560" />
        </branch>
        <branch name="TEST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2400" type="branch" />
            <wire x2="4688" y1="2400" y2="2400" x1="4560" />
        </branch>
        <branch name="ADD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2464" type="branch" />
            <wire x2="4688" y1="2464" y2="2464" x1="4560" />
        </branch>
        <branch name="DINSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2592" type="branch" />
            <wire x2="4688" y1="2592" y2="2592" x1="4560" />
        </branch>
        <branch name="MARCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2720" type="branch" />
            <wire x2="4688" y1="2720" y2="2720" x1="4560" />
        </branch>
        <branch name="S2SEL(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2656" type="branch" />
            <wire x2="4688" y1="2656" y2="2656" x1="4560" />
        </branch>
        <branch name="ASEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2784" type="branch" />
            <wire x2="4688" y1="2784" y2="2784" x1="4560" />
        </branch>
        <branch name="PCCE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1760" type="branch" />
            <wire x2="4688" y1="1760" y2="1760" x1="4560" />
        </branch>
        <branch name="MDRSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1632" type="branch" />
            <wire x2="4688" y1="1632" y2="1632" x1="4560" />
        </branch>
        <branch name="S1SEL(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="1696" type="branch" />
            <wire x2="4688" y1="1696" y2="1696" x1="4560" />
        </branch>
        <branch name="S1SEL(1:0)">
            <wire x2="4000" y1="3296" y2="3296" x1="3888" />
        </branch>
        <branch name="S2SEL(1:0)">
            <wire x2="4000" y1="3360" y2="3360" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="5200" y="1504" name="AEQZ" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3232" name="ACC_UPDATE" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3296" name="S1SEL(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3360" name="S2SEL(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4000" y="3488" name="BNN_SEL(1:0)" orien="R0" />
        <branch name="to_reg_C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4560" y="2976" type="branch" />
            <wire x2="4688" y1="2976" y2="2976" x1="4560" />
        </branch>
        <iomarker fontsize="28" x="5168" y="2912" name="IR(31:0)" orien="R0" />
        <branch name="orig_DINT(31:0)">
            <wire x2="5152" y1="2976" y2="2976" x1="5072" />
        </branch>
        <iomarker fontsize="28" x="5152" y="2976" name="orig_DINT(31:0)" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5712" y="2848" type="branch" />
            <wire x2="5776" y1="2848" y2="2848" x1="5712" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5696" y="2912" type="branch" />
            <wire x2="5776" y1="2912" y2="2912" x1="5696" />
        </branch>
        <branch name="ACC_UPDATE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5648" y="2976" type="branch" />
            <wire x2="5776" y1="2976" y2="2976" x1="5648" />
        </branch>
        <branch name="BNN_SEL(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5520" y="3232" type="branch" />
            <wire x2="5536" y1="3232" y2="3232" x1="5520" />
            <wire x2="5776" y1="3232" y2="3232" x1="5536" />
        </branch>
        <instance x="5776" y="3264" name="XLXI_1" orien="R0">
        </instance>
        <branch name="to_reg_C(31:0)">
            <wire x2="6400" y1="2848" y2="2848" x1="6304" />
        </branch>
        <branch name="orig_DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5696" y="3168" type="branch" />
            <wire x2="5776" y1="3168" y2="3168" x1="5696" />
        </branch>
        <iomarker fontsize="28" x="5280" y="2784" name="MMU_AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="5280" y="2848" name="DO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="6400" y="2848" name="to_reg_C(31:0)" orien="R0" />
        <iomarker fontsize="28" x="4608" y="2528" name="Dadr(4:0)" orien="R180" />
    </sheet>
</drawing>