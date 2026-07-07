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
        <signal name="DI(31:0)" />
        <signal name="AEQZ" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="Dadr(4:0)" />
        <signal name="func(5:0)" />
        <signal name="MMU_AO(31:0)" />
        <signal name="D(31:0)" />
        <signal name="opcode(5:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39(1:0)" />
        <signal name="XLXN_40(1:0)" />
        <signal name="step_en" />
        <signal name="ACK_N" />
        <signal name="busy" />
        <signal name="Itype" />
        <signal name="jlink" />
        <signal name="init" />
        <signal name="halt" />
        <signal name="ALUF(2:0)" />
        <signal name="DLX_STATE(4:0)" />
        <signal name="wr_n" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="stop_n" />
        <signal name="as_n" />
        <signal name="DO(31:0)" />
        <signal name="IR(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="func(5:0)" />
        <port polarity="Output" name="MMU_AO(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="opcode(5:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="init" />
        <port polarity="Output" name="halt" />
        <port polarity="Output" name="ALUF(2:0)" />
        <port polarity="Output" name="DLX_STATE(4:0)" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="DO(31:0)" />
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
        <blockdef name="control_unit">
            <timestamp>2026-1-16T11:10:7</timestamp>
            <rect width="288" x="64" y="-1792" height="1792" />
            <line x2="0" y1="-1760" y2="-1760" x1="64" />
            <line x2="0" y1="-1424" y2="-1424" x1="64" />
            <line x2="0" y1="-1088" y2="-1088" x1="64" />
            <line x2="0" y1="-752" y2="-752" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
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
            <rect width="64" x="352" y="-492" height="24" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <rect width="64" x="352" y="-364" height="24" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="control_unit" name="XLXI_6">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="AEQZ" name="aeqz" />
            <blockpin signalname="IR(31:0)" name="ir(31:0)" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="XLXN_32" name="IRce" />
            <blockpin signalname="XLXN_22" name="PCce" />
            <blockpin signalname="XLXN_19" name="Ace" />
            <blockpin signalname="XLXN_20" name="Bce" />
            <blockpin signalname="XLXN_21" name="Cce" />
            <blockpin signalname="XLXN_29" name="MARce" />
            <blockpin signalname="XLXN_27" name="MDRce" />
            <blockpin signalname="XLXN_30" name="DINce" />
            <blockpin signalname="XLXN_28" name="MDRsel" />
            <blockpin signalname="XLXN_31" name="Asel" />
            <blockpin signalname="XLXN_15" name="add" />
            <blockpin signalname="XLXN_16" name="test" />
            <blockpin signalname="XLXN_17" name="shift" />
            <blockpin signalname="XLXN_18" name="right" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="XLXN_38" name="GPRwe" />
            <blockpin signalname="init" name="init" />
            <blockpin signalname="halt" name="halt" />
            <blockpin signalname="XLXN_39(1:0)" name="s1sel(1:0)" />
            <blockpin signalname="XLXN_40(1:0)" name="s2sel(1:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUf(2:0)" />
            <blockpin signalname="DLX_STATE(4:0)" name="DLX_STATE(4:0)" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_STATE(1:0)" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="as_n" name="as_n" />
        </block>
        <block symbolname="FULL_DATAPATH" name="XLXI_7">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="XLXN_28" name="MDR_sel" />
            <blockpin signalname="XLXN_39(1:0)" name="s1sel(1:0)" />
            <blockpin signalname="XLXN_22" name="PCce" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_19" name="Ace" />
            <blockpin signalname="XLXN_20" name="Bce" />
            <blockpin signalname="XLXN_27" name="MDRce" />
            <blockpin signalname="XLXN_38" name="GPR_WE" />
            <blockpin signalname="XLXN_32" name="IRce" />
            <blockpin signalname="XLXN_17" name="shift" />
            <blockpin signalname="XLXN_18" name="right" />
            <blockpin signalname="XLXN_16" name="test" />
            <blockpin signalname="XLXN_15" name="add" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="XLXN_30" name="DINTsel" />
            <blockpin signalname="XLXN_40(1:0)" name="s2sel(1:0)" />
            <blockpin signalname="XLXN_29" name="MARce" />
            <blockpin signalname="XLXN_31" name="Asel" />
            <blockpin signalname="XLXN_21" name="Cce" />
            <blockpin name="REG_C_IN(31:0)" />
            <blockpin name="DINT(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="func(5:0)" name="func(5:0)" />
            <blockpin signalname="MMU_AO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin name="A_OUT(31:0)" />
            <blockpin name="B_OUT(31:0)" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="384" y1="192" y2="192" x1="224" />
        </branch>
        <branch name="RESET">
            <wire x2="384" y1="288" y2="288" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="192" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="224" y="288" name="RESET" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="544" type="branch" />
            <wire x2="2192" y1="544" y2="544" x1="2176" />
            <wire x2="2272" y1="544" y2="544" x1="2192" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="864" type="branch" />
            <wire x2="2176" y1="864" y2="864" x1="2160" />
            <wire x2="2272" y1="864" y2="864" x1="2176" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="2176" y1="608" y2="608" x1="2160" />
            <wire x2="2272" y1="608" y2="608" x1="2176" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="544" type="branch" />
            <wire x2="2768" y1="544" y2="544" x1="2656" />
            <wire x2="2784" y1="544" y2="544" x1="2768" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1536" y1="1040" y2="1040" x1="1520" />
            <wire x2="1888" y1="1040" y2="1040" x1="1536" />
            <wire x2="1888" y1="1040" y2="1504" x1="1888" />
            <wire x2="2272" y1="1504" y2="1504" x1="1888" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1536" y1="1104" y2="1104" x1="1520" />
            <wire x2="1872" y1="1104" y2="1104" x1="1536" />
            <wire x2="1872" y1="1104" y2="1440" x1="1872" />
            <wire x2="2272" y1="1440" y2="1440" x1="1872" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1536" y1="1168" y2="1168" x1="1520" />
            <wire x2="1856" y1="1168" y2="1168" x1="1536" />
            <wire x2="1856" y1="1168" y2="1312" x1="1856" />
            <wire x2="2272" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1536" y1="1232" y2="1232" x1="1520" />
            <wire x2="1840" y1="1232" y2="1232" x1="1536" />
            <wire x2="1840" y1="1232" y2="1376" x1="1840" />
            <wire x2="2272" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1536" y1="528" y2="528" x1="1520" />
            <wire x2="1888" y1="528" y2="528" x1="1536" />
            <wire x2="1888" y1="528" y2="928" x1="1888" />
            <wire x2="2272" y1="928" y2="928" x1="1888" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1536" y1="592" y2="592" x1="1520" />
            <wire x2="1872" y1="592" y2="592" x1="1536" />
            <wire x2="1872" y1="592" y2="992" x1="1872" />
            <wire x2="2272" y1="992" y2="992" x1="1872" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1536" y1="656" y2="656" x1="1520" />
            <wire x2="1856" y1="656" y2="656" x1="1536" />
            <wire x2="1856" y1="656" y2="1056" x1="1856" />
            <wire x2="2272" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1536" y1="464" y2="464" x1="1520" />
            <wire x2="1904" y1="464" y2="464" x1="1536" />
            <wire x2="1904" y1="464" y2="800" x1="1904" />
            <wire x2="2272" y1="800" y2="800" x1="1904" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1536" y1="784" y2="784" x1="1520" />
            <wire x2="1840" y1="784" y2="784" x1="1536" />
            <wire x2="1840" y1="784" y2="1120" x1="1840" />
            <wire x2="2272" y1="1120" y2="1120" x1="1840" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1536" y1="912" y2="912" x1="1520" />
            <wire x2="1936" y1="912" y2="912" x1="1536" />
            <wire x2="1936" y1="672" y2="912" x1="1936" />
            <wire x2="2272" y1="672" y2="672" x1="1936" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1536" y1="720" y2="720" x1="1520" />
            <wire x2="1824" y1="720" y2="720" x1="1536" />
            <wire x2="1824" y1="720" y2="1760" x1="1824" />
            <wire x2="2272" y1="1760" y2="1760" x1="1824" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1536" y1="848" y2="848" x1="1520" />
            <wire x2="1808" y1="848" y2="848" x1="1536" />
            <wire x2="1808" y1="848" y2="1632" x1="1808" />
            <wire x2="2272" y1="1632" y2="1632" x1="1808" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1536" y1="976" y2="976" x1="1520" />
            <wire x2="1792" y1="976" y2="976" x1="1536" />
            <wire x2="1792" y1="976" y2="1824" x1="1792" />
            <wire x2="2272" y1="1824" y2="1824" x1="1792" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1536" y1="400" y2="400" x1="1520" />
            <wire x2="1952" y1="400" y2="400" x1="1536" />
            <wire x2="1952" y1="400" y2="1248" x1="1952" />
            <wire x2="2272" y1="1248" y2="1248" x1="1952" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="2176" y1="1568" y2="1568" x1="2160" />
            <wire x2="2272" y1="1568" y2="1568" x1="2176" />
        </branch>
        <branch name="func(5:0)">
            <wire x2="2784" y1="1504" y2="1504" x1="2656" />
            <wire x2="2800" y1="1504" y2="1504" x1="2784" />
        </branch>
        <branch name="MMU_AO(31:0)">
            <wire x2="2784" y1="1824" y2="1824" x1="2656" />
            <wire x2="2800" y1="1824" y2="1824" x1="2784" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="2784" y1="1184" y2="1184" x1="2656" />
            <wire x2="2800" y1="1184" y2="1184" x1="2784" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="2784" y1="864" y2="864" x1="2656" />
            <wire x2="2800" y1="864" y2="864" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1568" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="2800" y="1824" name="MMU_AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2800" y="1504" name="func(5:0)" orien="R0" />
        <iomarker fontsize="28" x="2800" y="1184" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2800" y="864" name="opcode(5:0)" orien="R0" />
        <instance x="1104" y="2096" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_38">
            <wire x2="1536" y1="1424" y2="1424" x1="1520" />
            <wire x2="1904" y1="1424" y2="1424" x1="1536" />
            <wire x2="1904" y1="1184" y2="1424" x1="1904" />
            <wire x2="2272" y1="1184" y2="1184" x1="1904" />
        </branch>
        <branch name="XLXN_39(1:0)">
            <wire x2="1536" y1="1616" y2="1616" x1="1520" />
            <wire x2="1920" y1="1616" y2="1616" x1="1536" />
            <wire x2="1920" y1="736" y2="1616" x1="1920" />
            <wire x2="2272" y1="736" y2="736" x1="1920" />
        </branch>
        <branch name="XLXN_40(1:0)">
            <wire x2="1536" y1="1680" y2="1680" x1="1520" />
            <wire x2="1888" y1="1680" y2="1680" x1="1536" />
            <wire x2="1888" y1="1680" y2="1696" x1="1888" />
            <wire x2="2272" y1="1696" y2="1696" x1="1888" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="672" type="branch" />
            <wire x2="1104" y1="672" y2="672" x1="992" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="336" type="branch" />
            <wire x2="1056" y1="336" y2="336" x1="1008" />
            <wire x2="1088" y1="336" y2="336" x1="1056" />
            <wire x2="1104" y1="336" y2="336" x1="1088" />
        </branch>
        <branch name="step_en">
            <wire x2="1104" y1="1008" y2="1008" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1008" name="step_en" orien="R180" />
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1344" type="branch" />
            <wire x2="1104" y1="1344" y2="1344" x1="976" />
        </branch>
        <branch name="IR(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1680" type="branch" />
            <wire x2="1104" y1="1680" y2="1680" x1="928" />
        </branch>
        <branch name="ACK_N">
            <wire x2="1104" y1="2016" y2="2016" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="2016" name="ACK_N" orien="R180" />
        <branch name="busy">
            <wire x2="1632" y1="336" y2="336" x1="1520" />
        </branch>
        <branch name="Itype">
            <wire x2="1600" y1="1296" y2="1296" x1="1520" />
        </branch>
        <branch name="jlink">
            <wire x2="1600" y1="1360" y2="1360" x1="1520" />
        </branch>
        <branch name="init">
            <wire x2="1600" y1="1488" y2="1488" x1="1520" />
        </branch>
        <branch name="halt">
            <wire x2="1600" y1="1552" y2="1552" x1="1520" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="1600" y1="1744" y2="1744" x1="1520" />
        </branch>
        <branch name="DLX_STATE(4:0)">
            <wire x2="1600" y1="1808" y2="1808" x1="1520" />
        </branch>
        <branch name="wr_n">
            <wire x2="1600" y1="1872" y2="1872" x1="1520" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="1600" y1="1936" y2="1936" x1="1520" />
        </branch>
        <branch name="stop_n">
            <wire x2="1600" y1="2000" y2="2000" x1="1520" />
        </branch>
        <branch name="as_n">
            <wire x2="1600" y1="2064" y2="2064" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1296" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1360" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1488" name="init" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1552" name="halt" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1744" name="ALUF(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1808" name="DLX_STATE(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1872" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1936" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1600" y="2000" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="1600" y="2064" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="1632" y="336" name="busy" orien="R0" />
        <branch name="DO(31:0)">
            <wire x2="2800" y1="1888" y2="1888" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1888" name="DO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="608" name="DI(31:0)" orien="R180" />
        <branch name="IR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1952" type="branch" />
            <wire x2="2768" y1="1952" y2="1952" x1="2656" />
        </branch>
        <instance x="2272" y="1856" name="XLXI_7" orien="R0">
        </instance>
    </sheet>
</drawing>