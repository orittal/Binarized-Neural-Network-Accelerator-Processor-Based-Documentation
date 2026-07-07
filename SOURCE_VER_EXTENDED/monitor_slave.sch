<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IN_INIT" />
        <signal name="STEP_EN" />
        <signal name="STOP_N" />
        <signal name="D_IN(31:0)" />
        <signal name="clk" />
        <signal name="D_OUT(31:0)" />
        <signal name="STATUS(4:0)" />
        <signal name="STATUS(31:0)" />
        <signal name="A_IN(31:0)" />
        <signal name="B_IN(31:0)" />
        <signal name="Cardsel" />
        <signal name="WR_N" />
        <signal name="SACK_N" />
        <signal name="SDO(31:0)" />
        <signal name="reg_adr(4:0)" />
        <signal name="STATUS(31:24)" />
        <signal name="AI(9:0)" />
        <port polarity="Input" name="IN_INIT" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="STOP_N" />
        <port polarity="Input" name="D_IN(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="A_IN(31:0)" />
        <port polarity="Input" name="B_IN(31:0)" />
        <port polarity="Input" name="Cardsel" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Output" name="reg_adr(4:0)" />
        <port polarity="Input" name="AI(9:0)" />
        <blockdef name="LA">
            <timestamp>2025-11-24T9:28:40</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="slvaeAO">
            <timestamp>2025-11-17T9:59:10</timestamp>
            <rect width="320" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="448" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="id_num">
            <timestamp>2025-11-17T8:37:43</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="slvaeAO" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="D_OUT(31:0)" name="a(31:0)" />
            <blockpin signalname="STATUS(31:0)" name="b(31:0)" />
            <blockpin signalname="A_IN(31:0)" name="c(31:0)" />
            <blockpin signalname="B_IN(31:0)" name="d(31:0)" />
            <blockpin signalname="Cardsel" name="CARD_SEL" />
            <blockpin signalname="WR_N" name="WR_IN_N" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="reg_adr(4:0)" name="reg_address(4:0)" />
        </block>
        <block symbolname="LA" name="XLXI_1">
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="reg_adr(4:0)" name="ai(4:0)" />
            <blockpin signalname="STOP_N" name="stop_n" />
            <blockpin signalname="D_IN(31:0)" name="monitor_signals(31:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="D_OUT(31:0)" name="DOUT(31:0)" />
            <blockpin signalname="STATUS(4:0)" name="STATUS(4:0)" />
        </block>
        <block symbolname="id_num" name="XLXI_3">
            <blockpin signalname="STATUS(31:24)" name="ID(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1696" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1120" y="1024" name="XLXI_1" orien="R0">
        </instance>
        <branch name="IN_INIT">
            <wire x2="1120" y1="672" y2="672" x1="368" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="1120" y1="736" y2="736" x1="384" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1120" y1="864" y2="864" x1="352" />
        </branch>
        <branch name="D_IN(31:0)">
            <wire x2="1120" y1="928" y2="928" x1="384" />
        </branch>
        <branch name="clk">
            <wire x2="448" y1="368" y2="368" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="368" name="clk" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="992" type="branch" />
            <wire x2="1120" y1="992" y2="992" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="384" y="928" name="D_IN(31:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="864" name="STOP_N" orien="R180" />
        <iomarker fontsize="28" x="384" y="736" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="368" y="672" name="IN_INIT" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1216" type="branch" />
            <wire x2="1136" y1="1216" y2="1216" x1="1072" />
        </branch>
        <branch name="D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="672" type="branch" />
            <wire x2="1728" y1="672" y2="672" x1="1616" />
            <wire x2="1760" y1="672" y2="672" x1="1728" />
        </branch>
        <branch name="STATUS(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="992" type="branch" />
            <wire x2="1744" y1="992" y2="992" x1="1616" />
        </branch>
        <branch name="D_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1344" type="branch" />
            <wire x2="1136" y1="1344" y2="1344" x1="992" />
        </branch>
        <branch name="STATUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1408" type="branch" />
            <wire x2="1136" y1="1408" y2="1408" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="912" y="1472" name="A_IN(31:0)" orien="R180" />
        <branch name="A_IN(31:0)">
            <wire x2="1136" y1="1472" y2="1472" x1="912" />
        </branch>
        <branch name="B_IN(31:0)">
            <wire x2="1136" y1="1536" y2="1536" x1="912" />
        </branch>
        <iomarker fontsize="28" x="912" y="1536" name="B_IN(31:0)" orien="R180" />
        <branch name="Cardsel">
            <wire x2="1136" y1="1600" y2="1600" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="1600" name="Cardsel" orien="R180" />
        <branch name="WR_N">
            <wire x2="1024" y1="1664" y2="1664" x1="896" />
            <wire x2="1136" y1="1664" y2="1664" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="896" y="1664" name="WR_N" orien="R180" />
        <branch name="SACK_N">
            <wire x2="1600" y1="1216" y2="1216" x1="1584" />
            <wire x2="2592" y1="1216" y2="1216" x1="1600" />
        </branch>
        <branch name="SDO(31:0)">
            <wire x2="1600" y1="1440" y2="1440" x1="1584" />
            <wire x2="2560" y1="1440" y2="1440" x1="1600" />
        </branch>
        <branch name="reg_adr(4:0)">
            <wire x2="1600" y1="1664" y2="1664" x1="1584" />
            <wire x2="2560" y1="1664" y2="1664" x1="1600" />
        </branch>
        <instance x="1168" y="1872" name="XLXI_3" orien="R0">
        </instance>
        <branch name="STATUS(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1840" type="branch" />
            <wire x2="1664" y1="1840" y2="1840" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1664" name="reg_adr(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1216" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1440" name="SDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="352" y="1280" name="AI(9:0)" orien="R180" />
        <branch name="AI(9:0)">
            <wire x2="1136" y1="1280" y2="1280" x1="352" />
        </branch>
        <branch name="reg_adr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="800" type="branch" />
            <wire x2="1008" y1="800" y2="800" x1="992" />
            <wire x2="1120" y1="800" y2="800" x1="1008" />
        </branch>
    </sheet>
</drawing>