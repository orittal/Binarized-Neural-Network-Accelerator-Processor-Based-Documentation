<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="AI(9:0)" />
        <signal name="a(31:0)" />
        <signal name="b(31:0)" />
        <signal name="c(31:0)" />
        <signal name="d(31:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_30" />
        <signal name="AI(7)" />
        <signal name="AI(8)" />
        <signal name="XLXN_33" />
        <signal name="AI(9)" />
        <signal name="SACK_N" />
        <signal name="SDO(31:0)" />
        <signal name="CARD_SEL" />
        <signal name="WR_IN_N" />
        <signal name="AI(4:0)" />
        <signal name="reg_address(4:0)" />
        <signal name="AI(6:5)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="a(31:0)" />
        <port polarity="Input" name="b(31:0)" />
        <port polarity="Input" name="c(31:0)" />
        <port polarity="Input" name="d(31:0)" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Input" name="CARD_SEL" />
        <port polarity="Input" name="WR_IN_N" />
        <port polarity="Output" name="reg_address(4:0)" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="MUX4_32bit">
            <timestamp>2024-4-10T7:9:44</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2024-4-10T5:16:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_20" name="D" />
            <blockpin signalname="XLXN_19" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_23" name="D" />
            <blockpin signalname="XLXN_22" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="WR_IN_N" name="I0" />
            <blockpin signalname="CARD_SEL" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_15">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="SACK_N" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_22" name="D" />
            <blockpin signalname="XLXN_20" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="AI(7)" name="I0" />
            <blockpin signalname="AI(8)" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="AI(9)" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="BUF5" name="XLXI_28">
            <blockpin signalname="AI(4:0)" name="I(4:0)" />
            <blockpin signalname="reg_address(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="XLXI_11">
            <blockpin signalname="a(31:0)" name="A(31:0)" />
            <blockpin signalname="b(31:0)" name="B(31:0)" />
            <blockpin signalname="c(31:0)" name="C(31:0)" />
            <blockpin signalname="d(31:0)" name="D(31:0)" />
            <blockpin signalname="AI(6:5)" name="sel(1:0)" />
            <blockpin signalname="SDO(31:0)" name="O(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="384" y1="400" y2="400" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="400" name="clk" orien="R180" />
        <branch name="c(31:0)">
            <wire x2="384" y1="592" y2="592" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="592" name="c(31:0)" orien="R180" />
        <branch name="b(31:0)">
            <wire x2="384" y1="560" y2="560" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="560" name="b(31:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="624" name="d(31:0)" orien="R180" />
        <branch name="d(31:0)">
            <wire x2="384" y1="624" y2="624" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="528" name="a(31:0)" orien="R180" />
        <branch name="a(31:0)">
            <wire x2="384" y1="528" y2="528" x1="272" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="384" y1="448" y2="448" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="448" name="AI(9:0)" orien="R180" />
        <instance x="2352" y="1216" name="XLXI_3" orien="R0" />
        <instance x="1296" y="1216" name="XLXI_1" orien="R0" />
        <instance x="864" y="1088" name="XLXI_13" orien="R0" />
        <instance x="3056" y="1024" name="XLXI_15" orien="R0" />
        <instance x="2800" y="992" name="XLXI_16" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="3056" y1="960" y2="960" x1="3024" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2800" y1="960" y2="960" x1="2736" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2304" y1="960" y2="960" x1="2224" />
            <wire x2="2352" y1="960" y2="960" x1="2304" />
            <wire x2="2784" y1="784" y2="784" x1="2304" />
            <wire x2="2784" y1="784" y2="896" x1="2784" />
            <wire x2="3056" y1="896" y2="896" x1="2784" />
            <wire x2="2304" y1="784" y2="960" x1="2304" />
        </branch>
        <instance x="1840" y="1216" name="XLXI_2" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1840" y1="960" y2="960" x1="1680" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1296" y1="960" y2="960" x1="1120" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1088" type="branch" />
            <wire x2="2352" y1="1088" y2="1088" x1="2288" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1088" type="branch" />
            <wire x2="1840" y1="1088" y2="1088" x1="1776" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1088" type="branch" />
            <wire x2="1296" y1="1088" y2="1088" x1="1200" />
        </branch>
        <branch name="CARD_SEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="960" type="branch" />
            <wire x2="864" y1="960" y2="960" x1="816" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1024" type="branch" />
            <wire x2="864" y1="1024" y2="1024" x1="816" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="864" y1="896" y2="896" x1="752" />
        </branch>
        <branch name="AI(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="960" type="branch" />
            <wire x2="496" y1="960" y2="960" x1="432" />
        </branch>
        <branch name="AI(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="896" type="branch" />
            <wire x2="496" y1="896" y2="896" x1="416" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="496" y1="832" y2="832" x1="416" />
        </branch>
        <instance x="192" y="864" name="XLXI_25" orien="R0" />
        <branch name="AI(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="832" type="branch" />
            <wire x2="192" y1="832" y2="832" x1="112" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="928" type="branch" />
            <wire x2="3360" y1="928" y2="928" x1="3312" />
            <wire x2="3376" y1="928" y2="928" x1="3360" />
        </branch>
        <branch name="SACK_N">
            <wire x2="3200" y1="384" y2="384" x1="3008" />
        </branch>
        <branch name="SDO(31:0)">
            <wire x2="3200" y1="432" y2="432" x1="3008" />
        </branch>
        <branch name="CARD_SEL">
            <wire x2="384" y1="336" y2="336" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="336" name="CARD_SEL" orien="R180" />
        <instance x="496" y="1024" name="XLXI_17" orien="R0" />
        <branch name="WR_IN_N">
            <wire x2="384" y1="288" y2="288" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="288" name="WR_IN_N" orien="R180" />
        <iomarker fontsize="28" x="3184" y="480" name="reg_address(4:0)" orien="R0" />
        <instance x="1264" y="640" name="XLXI_28" orien="R0">
        </instance>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="608" type="branch" />
            <wire x2="1264" y1="608" y2="608" x1="1056" />
        </branch>
        <branch name="reg_address(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="608" type="branch" />
            <wire x2="1760" y1="608" y2="608" x1="1648" />
        </branch>
        <branch name="reg_address(4:0)">
            <wire x2="3184" y1="480" y2="480" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3200" y="384" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="3200" y="432" name="SDO(31:0)" orien="R0" />
        <instance x="1248" y="1648" name="XLXI_11" orien="R0">
        </instance>
        <branch name="AI(6:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1616" type="branch" />
            <wire x2="1248" y1="1616" y2="1616" x1="1120" />
        </branch>
        <branch name="b(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1424" type="branch" />
            <wire x2="1248" y1="1424" y2="1424" x1="1136" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1488" type="branch" />
            <wire x2="1248" y1="1488" y2="1488" x1="1136" />
        </branch>
        <branch name="d(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1552" type="branch" />
            <wire x2="1248" y1="1552" y2="1552" x1="1136" />
        </branch>
        <branch name="a(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1360" type="branch" />
            <wire x2="1248" y1="1360" y2="1360" x1="1136" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1360" type="branch" />
            <wire x2="1776" y1="1360" y2="1360" x1="1632" />
        </branch>
    </sheet>
</drawing>