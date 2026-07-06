<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AO(31:0)" />
        <signal name="WDO(31:0)" />
        <signal name="clk" />
        <signal name="RESET" />
        <signal name="CE" />
        <signal name="IN_INIT" />
        <signal name="AS_N" />
        <signal name="STOP_N" />
        <signal name="STEP_EN" />
        <signal name="ACK_N" />
        <signal name="WR_N" />
        <signal name="state(1:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="WDO(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="state(1:0)" />
        <blockdef name="CNT32">
            <timestamp>2025-12-8T8:5:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="const_reg">
            <timestamp>2025-12-8T8:11:31</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="write_stateMachine">
            <timestamp>2025-12-8T9:12:18</timestamp>
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
        <block symbolname="CNT32" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="AO(31:0)" name="CNT(31:0)" />
        </block>
        <block symbolname="const_reg" name="XLXI_2">
            <blockpin signalname="WDO(31:0)" name="ID(31:0)" />
        </block>
        <block symbolname="write_stateMachine" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="CE" name="counter_ce" />
            <blockpin signalname="state(1:0)" name="curr_state(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AO(31:0)">
            <wire x2="3088" y1="848" y2="848" x1="2512" />
        </branch>
        <branch name="WDO(31:0)">
            <wire x2="3056" y1="1168" y2="1168" x1="2512" />
        </branch>
        <instance x="2128" y="1008" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="848" type="branch" />
            <wire x2="2128" y1="848" y2="848" x1="2048" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="912" type="branch" />
            <wire x2="2128" y1="912" y2="912" x1="2048" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="976" type="branch" />
            <wire x2="2048" y1="976" y2="976" x1="2032" />
            <wire x2="2128" y1="976" y2="976" x1="2048" />
        </branch>
        <instance x="2128" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="IN_INIT">
            <wire x2="3072" y1="1520" y2="1520" x1="2528" />
        </branch>
        <branch name="AS_N">
            <wire x2="3104" y1="1392" y2="1392" x1="2528" />
        </branch>
        <branch name="STOP_N">
            <wire x2="3072" y1="1584" y2="1584" x1="2528" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1392" type="branch" />
            <wire x2="2144" y1="1392" y2="1392" x1="1824" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1488" type="branch" />
            <wire x2="2144" y1="1488" y2="1488" x1="1808" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1584" type="branch" />
            <wire x2="2144" y1="1584" y2="1584" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1680" type="branch" />
            <wire x2="2144" y1="1680" y2="1680" x1="1808" />
        </branch>
        <branch name="WR_N">
            <wire x2="3088" y1="1456" y2="1456" x1="2528" />
        </branch>
        <instance x="2144" y="1744" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1648" type="branch" />
            <wire x2="2640" y1="1648" y2="1648" x1="2528" />
        </branch>
        <branch name="ACK_N">
            <wire x2="624" y1="1168" y2="1168" x1="432" />
        </branch>
        <branch name="RESET">
            <wire x2="608" y1="1104" y2="1104" x1="432" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="624" y1="1040" y2="1040" x1="432" />
        </branch>
        <branch name="clk">
            <wire x2="608" y1="960" y2="960" x1="416" />
        </branch>
        <branch name="state(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1712" type="branch" />
            <wire x2="2576" y1="1712" y2="1712" x1="2528" />
            <wire x2="2976" y1="1712" y2="1712" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="3088" y="848" name="AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1168" name="WDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1584" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="3088" y="1456" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="3072" y="1520" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1392" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="432" y="1168" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="432" y="1104" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="432" y="1040" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="416" y="960" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2976" y="1712" name="state(1:0)" orien="R0" />
    </sheet>
</drawing>