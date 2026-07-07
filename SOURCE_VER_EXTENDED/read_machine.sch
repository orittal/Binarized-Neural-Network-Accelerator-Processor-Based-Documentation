<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RDO(31:0)" />
        <signal name="IN_INIT" />
        <signal name="AS_N" />
        <signal name="STOP_N" />
        <signal name="STEP_EN" />
        <signal name="ACK_N" />
        <signal name="WR_N" />
        <signal name="DI(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="clk" />
        <signal name="RESET" />
        <signal name="CE" />
        <signal name="sm(1:0)" />
        <signal name="sm(0)" />
        <signal name="sm(1)" />
        <signal name="XLXN_32" />
        <port polarity="Output" name="RDO(31:0)" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="sm(1:0)" />
        <blockdef name="CNT32">
            <timestamp>2025-12-8T8:5:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2024-4-10T5:17:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="read_stateMachine">
            <timestamp>2025-12-8T9:41:6</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="REG32CE" name="XLXI_5">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="XLXN_32" name="CE" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="RDO(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="CNT32" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="AO(31:0)" name="CNT(31:0)" />
        </block>
        <block symbolname="read_stateMachine" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="CE" name="counter_ce" />
            <blockpin signalname="sm(1:0)" name="curr_state(1:0)" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="sm(0)" name="I0" />
            <blockpin signalname="sm(1)" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="IN_INIT">
            <wire x2="3072" y1="1616" y2="1616" x1="2528" />
        </branch>
        <branch name="AS_N">
            <wire x2="3104" y1="1488" y2="1488" x1="2528" />
        </branch>
        <branch name="STOP_N">
            <wire x2="3072" y1="1680" y2="1680" x1="2528" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1488" type="branch" />
            <wire x2="2144" y1="1488" y2="1488" x1="1824" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1584" type="branch" />
            <wire x2="2144" y1="1584" y2="1584" x1="1808" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1680" type="branch" />
            <wire x2="2144" y1="1680" y2="1680" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1776" type="branch" />
            <wire x2="2144" y1="1776" y2="1776" x1="1808" />
        </branch>
        <branch name="WR_N">
            <wire x2="3088" y1="1552" y2="1552" x1="2528" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1744" type="branch" />
            <wire x2="2640" y1="1744" y2="1744" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="3072" y="1680" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="3088" y="1552" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1616" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1488" name="AS_N" orien="R0" />
        <branch name="RDO(31:0)">
            <wire x2="2512" y1="1200" y2="1200" x1="2496" />
            <wire x2="3024" y1="1200" y2="1200" x1="2512" />
            <wire x2="3040" y1="1200" y2="1200" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1200" name="RDO(31:0)" orien="R0" />
        <branch name="AO(31:0)">
            <wire x2="3088" y1="864" y2="864" x1="2512" />
        </branch>
        <instance x="2128" y="1024" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="864" type="branch" />
            <wire x2="2128" y1="864" y2="864" x1="2048" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="928" type="branch" />
            <wire x2="2128" y1="928" y2="928" x1="2048" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="992" type="branch" />
            <wire x2="2128" y1="992" y2="992" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="3088" y="864" name="AO(31:0)" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1200" type="branch" />
            <wire x2="2032" y1="1200" y2="1200" x1="2016" />
            <wire x2="2112" y1="1200" y2="1200" x1="2032" />
        </branch>
        <instance x="2144" y="1840" name="XLXI_7" orien="R0">
        </instance>
        <branch name="sm(1:0)">
            <wire x2="2592" y1="1808" y2="1808" x1="2528" />
        </branch>
        <instance x="1744" y="1360" name="XLXI_9" orien="R0" />
        <branch name="sm(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1296" type="branch" />
            <wire x2="1680" y1="1296" y2="1296" x1="1664" />
            <wire x2="1744" y1="1296" y2="1296" x1="1680" />
        </branch>
        <branch name="sm(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1232" type="branch" />
            <wire x2="1664" y1="1232" y2="1232" x1="1648" />
            <wire x2="1744" y1="1232" y2="1232" x1="1664" />
        </branch>
        <branch name="ACK_N">
            <wire x2="1456" y1="1296" y2="1296" x1="1264" />
        </branch>
        <branch name="RESET">
            <wire x2="1440" y1="1232" y2="1232" x1="1264" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="1440" y1="1088" y2="1088" x1="1248" />
        </branch>
        <branch name="clk">
            <wire x2="1440" y1="1024" y2="1024" x1="1248" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="1424" y1="1168" y2="1168" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1296" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="1264" y="1232" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1088" name="DI(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1024" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1168" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="2592" y="1808" name="sm(1:0)" orien="R0" />
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1328" type="branch" />
            <wire x2="2000" y1="1328" y2="1328" x1="1984" />
            <wire x2="2112" y1="1328" y2="1328" x1="2000" />
        </branch>
        <instance x="2112" y="1360" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_32">
            <wire x2="2112" y1="1264" y2="1264" x1="2000" />
        </branch>
    </sheet>
</drawing>