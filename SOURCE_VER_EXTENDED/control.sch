<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="RESET" />
        <signal name="AS_N" />
        <signal name="ACK_N" />
        <signal name="MW" />
        <signal name="BUSY" />
        <signal name="WR_N" />
        <signal name="STEP_EN" />
        <signal name="IN_INIT" />
        <signal name="MR" />
        <signal name="EN_B" />
        <signal name="EN_C" />
        <signal name="EN_PC" />
        <signal name="EN_IR" />
        <signal name="EN_GPR" />
        <signal name="OPCODE(5:0)" />
        <signal name="MUX_SEL" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="DLX_CONTROL_STATE(3:0)" />
        <signal name="stop_n" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="EN_B" />
        <port polarity="Output" name="EN_C" />
        <port polarity="Output" name="EN_PC" />
        <port polarity="Output" name="EN_IR" />
        <port polarity="Output" name="EN_GPR" />
        <port polarity="Input" name="OPCODE(5:0)" />
        <port polarity="Output" name="MUX_SEL" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="DLX_CONTROL_STATE(3:0)" />
        <port polarity="Output" name="stop_n" />
        <blockdef name="MAC">
            <timestamp>2026-2-3T15:44:42</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="256" x="64" y="-320" height="448" />
        </blockdef>
        <blockdef name="DLX_control">
            <timestamp>2025-12-22T8:26:33</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="464" y1="32" y2="32" x1="400" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="464" y1="-672" y2="-672" x1="400" />
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="336" x="64" y="-704" height="896" />
        </blockdef>
        <block symbolname="DLX_control" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="OPCODE(5:0)" name="opcode(5:0)" />
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="MR" name="mr" />
            <blockpin signalname="MW" name="mw" />
            <blockpin signalname="EN_B" name="en_B" />
            <blockpin signalname="EN_C" name="en_C" />
            <blockpin signalname="EN_PC" name="en_PC" />
            <blockpin signalname="EN_IR" name="en_IR" />
            <blockpin signalname="EN_GPR" name="en_GPR" />
            <blockpin signalname="MUX_SEL" name="MUX_sel" />
            <blockpin signalname="DLX_CONTROL_STATE(3:0)" name="DLX_control_state(3:0)" />
            <blockpin signalname="ACK_N" name="ack_n" />
        </block>
        <block symbolname="MAC" name="XLXI_1">
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="MR" name="mr" />
            <blockpin signalname="MW" name="mw" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="AS_N" name="as_n" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="WR_N" name="wr_n" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_state(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1248" type="branch" />
            <wire x2="1552" y1="1248" y2="1248" x1="1472" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1408" type="branch" />
            <wire x2="1552" y1="1408" y2="1408" x1="1472" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1568" type="branch" />
            <wire x2="1552" y1="1568" y2="1568" x1="1488" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1728" type="branch" />
            <wire x2="1552" y1="1728" y2="1728" x1="1472" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="2064" y1="1248" y2="1248" x1="2016" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1312" type="branch" />
            <wire x2="2080" y1="1312" y2="1312" x1="2016" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1376" type="branch" />
            <wire x2="2064" y1="1376" y2="1376" x1="2016" />
        </branch>
        <branch name="EN_B">
            <wire x2="2080" y1="1568" y2="1568" x1="2016" />
        </branch>
        <branch name="EN_C">
            <wire x2="2080" y1="1632" y2="1632" x1="2016" />
        </branch>
        <branch name="EN_PC">
            <wire x2="2064" y1="1696" y2="1696" x1="2016" />
        </branch>
        <branch name="EN_IR">
            <wire x2="2064" y1="1760" y2="1760" x1="2016" />
        </branch>
        <branch name="EN_GPR">
            <wire x2="2032" y1="1824" y2="1824" x1="2016" />
            <wire x2="2064" y1="1824" y2="1824" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="1248" name="IN_INIT" orien="R0" />
        <instance x="1552" y="1920" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2080" y="1568" name="EN_B" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1632" name="EN_C" orien="R0" />
        <iomarker fontsize="28" x="2064" y="1696" name="EN_PC" orien="R0" />
        <iomarker fontsize="28" x="2064" y="1760" name="EN_IR" orien="R0" />
        <branch name="clk">
            <wire x2="976" y1="784" y2="784" x1="912" />
        </branch>
        <branch name="RESET">
            <wire x2="992" y1="816" y2="816" x1="912" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="1024" y1="880" y2="880" x1="960" />
        </branch>
        <branch name="ACK_N">
            <wire x2="1040" y1="912" y2="912" x1="960" />
        </branch>
        <branch name="OPCODE(5:0)">
            <wire x2="1056" y1="992" y2="992" x1="992" />
        </branch>
        <iomarker fontsize="28" x="912" y="784" name="clk" orien="R180" />
        <iomarker fontsize="28" x="912" y="816" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="960" y="880" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="960" y="912" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="992" y="992" name="OPCODE(5:0)" orien="R180" />
        <branch name="AS_N">
            <wire x2="2544" y1="816" y2="816" x1="2448" />
        </branch>
        <branch name="WR_N">
            <wire x2="2544" y1="848" y2="848" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2544" y="816" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2544" y="848" name="WR_N" orien="R0" />
        <instance x="1584" y="1072" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="784" type="branch" />
            <wire x2="1584" y1="784" y2="784" x1="1520" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="848" type="branch" />
            <wire x2="1584" y1="848" y2="848" x1="1536" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="912" type="branch" />
            <wire x2="1584" y1="912" y2="912" x1="1536" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="976" type="branch" />
            <wire x2="1584" y1="976" y2="976" x1="1520" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1040" type="branch" />
            <wire x2="1584" y1="1040" y2="1040" x1="1520" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="784" type="branch" />
            <wire x2="2032" y1="784" y2="784" x1="1968" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="864" type="branch" />
            <wire x2="2016" y1="864" y2="864" x1="1968" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="944" type="branch" />
            <wire x2="2016" y1="944" y2="944" x1="1968" />
        </branch>
        <branch name="MR">
            <wire x2="2560" y1="928" y2="928" x1="2464" />
        </branch>
        <branch name="MW">
            <wire x2="2560" y1="960" y2="960" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2560" y="928" name="MR" orien="R0" />
        <iomarker fontsize="28" x="2560" y="960" name="MW" orien="R0" />
        <branch name="MUX_SEL">
            <wire x2="2080" y1="1952" y2="1952" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1952" name="MUX_SEL" orien="R0" />
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2016" type="branch" />
            <wire x2="1552" y1="2016" y2="2016" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="2064" y="1824" name="EN_GPR" orien="R0" />
        <branch name="MAC_STATE(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1024" type="branch" />
            <wire x2="2048" y1="1024" y2="1024" x1="1968" />
        </branch>
        <branch name="DLX_CONTROL_STATE(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1888" type="branch" />
            <wire x2="2112" y1="1888" y2="1888" x1="2016" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="2080" type="branch" />
            <wire x2="1552" y1="2080" y2="2080" x1="1472" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="2544" y1="1040" y2="1040" x1="2448" />
        </branch>
        <branch name="DLX_CONTROL_STATE(3:0)">
            <wire x2="2544" y1="1072" y2="1072" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1040" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="1072" name="DLX_CONTROL_STATE(3:0)" orien="R0" />
        <branch name="stop_n">
            <wire x2="2064" y1="1104" y2="1104" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2064" y="1104" name="stop_n" orien="R0" />
    </sheet>
</drawing>