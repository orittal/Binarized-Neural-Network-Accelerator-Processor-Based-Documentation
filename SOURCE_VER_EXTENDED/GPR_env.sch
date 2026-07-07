<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C(31:0)" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="gpr_we" />
        <signal name="clk" />
        <signal name="gpr_we_tag" />
        <signal name="XLXN_17" />
        <signal name="Cadr(0)" />
        <signal name="Cadr(1)" />
        <signal name="Cadr(2)" />
        <signal name="Cadr(3)" />
        <signal name="Cadr(4)" />
        <signal name="XLXN_62(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="XLXN_72(4:0)" />
        <signal name="XLXN_73(4:0)" />
        <signal name="B(31:0)" />
        <signal name="D(31:0)" />
        <signal name="A(31:0)" />
        <signal name="AEQZ_OUT" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="gpr_we" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="AEQZ_OUT" />
        <blockdef name="RAM32x32">
            <timestamp>2024-4-13T10:58:1</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
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
        <blockdef name="MUX5bit">
            <timestamp>2024-4-13T11:19:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="AEQZ">
            <timestamp>2024-4-10T5:15:14</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="or5" name="XLXI_5">
            <blockpin signalname="Cadr(4)" name="I0" />
            <blockpin signalname="Cadr(3)" name="I1" />
            <blockpin signalname="Cadr(2)" name="I2" />
            <blockpin signalname="Cadr(1)" name="I3" />
            <blockpin signalname="Cadr(0)" name="I4" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="gpr_we_tag" name="WE" />
            <blockpin signalname="XLXN_62(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="A(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_4">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="gpr_we_tag" name="WE" />
            <blockpin signalname="XLXN_73(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="D(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="gpr_we_tag" name="WE" />
            <blockpin signalname="XLXN_72(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="B(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="gpr_we" name="I1" />
            <blockpin signalname="gpr_we_tag" name="O" />
        </block>
        <block symbolname="MUX5bit" name="XLXI_14">
            <blockpin signalname="gpr_we" name="sel" />
            <blockpin signalname="Badr(4:0)" name="A(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="B(4:0)" />
            <blockpin signalname="XLXN_72(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5bit" name="XLXI_15">
            <blockpin signalname="gpr_we" name="sel" />
            <blockpin signalname="Dadr(4:0)" name="A(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="B(4:0)" />
            <blockpin signalname="XLXN_73(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5bit" name="XLXI_13">
            <blockpin signalname="gpr_we" name="sel" />
            <blockpin signalname="Aadr(4:0)" name="A(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="B(4:0)" />
            <blockpin signalname="XLXN_62(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="AEQZ" name="XLXI_26">
            <blockpin signalname="A(31:0)" name="DI(31:0)" />
            <blockpin signalname="AEQZ_OUT" name="A_eqz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="C(31:0)">
            <wire x2="448" y1="304" y2="304" x1="320" />
        </branch>
        <branch name="Aadr(4:0)">
            <wire x2="448" y1="384" y2="384" x1="320" />
        </branch>
        <branch name="Badr(4:0)">
            <wire x2="448" y1="464" y2="464" x1="320" />
        </branch>
        <branch name="Cadr(4:0)">
            <wire x2="464" y1="544" y2="544" x1="320" />
        </branch>
        <branch name="gpr_we">
            <wire x2="448" y1="624" y2="624" x1="336" />
        </branch>
        <iomarker fontsize="28" x="320" y="304" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="384" name="Aadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="464" name="Badr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="544" name="Cadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="624" name="gpr_we" orien="R180" />
        <branch name="clk">
            <wire x2="464" y1="224" y2="224" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="224" name="clk" orien="R180" />
        <instance x="1184" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2656" y="1104" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1952" y="1104" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="880" type="branch" />
            <wire x2="1184" y1="880" y2="880" x1="1120" />
        </branch>
        <branch name="gpr_we_tag">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="944" type="branch" />
            <wire x2="1008" y1="944" y2="944" x1="992" />
            <wire x2="1184" y1="944" y2="944" x1="1008" />
        </branch>
        <instance x="384" y="1200" name="XLXI_5" orien="R0" />
        <instance x="736" y="1040" name="XLXI_12" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="688" y1="1008" y2="1008" x1="640" />
            <wire x2="688" y1="976" y2="1008" x1="688" />
            <wire x2="736" y1="976" y2="976" x1="688" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="912" type="branch" />
            <wire x2="736" y1="912" y2="912" x1="656" />
        </branch>
        <branch name="Cadr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="880" type="branch" />
            <wire x2="384" y1="880" y2="880" x1="320" />
        </branch>
        <branch name="Cadr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="944" type="branch" />
            <wire x2="384" y1="944" y2="944" x1="320" />
        </branch>
        <branch name="Cadr(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1008" type="branch" />
            <wire x2="384" y1="1008" y2="1008" x1="336" />
        </branch>
        <branch name="Cadr(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1072" type="branch" />
            <wire x2="384" y1="1072" y2="1072" x1="336" />
        </branch>
        <branch name="Cadr(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1136" type="branch" />
            <wire x2="384" y1="1136" y2="1136" x1="320" />
        </branch>
        <branch name="gpr_we_tag">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="944" type="branch" />
            <wire x2="1952" y1="944" y2="944" x1="1840" />
        </branch>
        <branch name="gpr_we_tag">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="944" type="branch" />
            <wire x2="2656" y1="944" y2="944" x1="2528" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="880" type="branch" />
            <wire x2="1952" y1="880" y2="880" x1="1872" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="880" type="branch" />
            <wire x2="2656" y1="880" y2="880" x1="2576" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1072" type="branch" />
            <wire x2="1184" y1="1072" y2="1072" x1="1056" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1072" type="branch" />
            <wire x2="1952" y1="1072" y2="1072" x1="1840" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1072" type="branch" />
            <wire x2="2656" y1="1072" y2="1072" x1="2560" />
        </branch>
        <branch name="XLXN_62(4:0)">
            <wire x2="928" y1="1344" y2="1344" x1="832" />
            <wire x2="928" y1="1008" y2="1344" x1="928" />
            <wire x2="1184" y1="1008" y2="1008" x1="928" />
        </branch>
        <instance x="448" y="1776" name="XLXI_14" orien="R0">
        </instance>
        <instance x="448" y="2048" name="XLXI_15" orien="R0">
        </instance>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1680" type="branch" />
            <wire x2="448" y1="1680" y2="1680" x1="288" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1744" type="branch" />
            <wire x2="448" y1="1744" y2="1744" x1="304" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1952" type="branch" />
            <wire x2="448" y1="1952" y2="1952" x1="304" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="2016" type="branch" />
            <wire x2="448" y1="2016" y2="2016" x1="288" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1616" type="branch" />
            <wire x2="448" y1="1616" y2="1616" x1="352" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1888" type="branch" />
            <wire x2="448" y1="1888" y2="1888" x1="352" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1472" type="branch" />
            <wire x2="448" y1="1472" y2="1472" x1="288" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1408" type="branch" />
            <wire x2="448" y1="1408" y2="1408" x1="288" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1344" type="branch" />
            <wire x2="448" y1="1344" y2="1344" x1="352" />
        </branch>
        <instance x="448" y="1504" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_72(4:0)">
            <wire x2="1616" y1="1616" y2="1616" x1="832" />
            <wire x2="1616" y1="1008" y2="1616" x1="1616" />
            <wire x2="1952" y1="1008" y2="1008" x1="1616" />
        </branch>
        <branch name="XLXN_73(4:0)">
            <wire x2="880" y1="1888" y2="1888" x1="832" />
            <wire x2="2368" y1="1888" y2="1888" x1="880" />
            <wire x2="2656" y1="1008" y2="1008" x1="2368" />
            <wire x2="2368" y1="1008" y2="1888" x1="2368" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2416" y1="880" y2="880" x1="2336" />
            <wire x2="2416" y1="672" y2="880" x1="2416" />
            <wire x2="2512" y1="672" y2="672" x1="2416" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="3152" y1="880" y2="880" x1="3040" />
            <wire x2="3152" y1="704" y2="880" x1="3152" />
            <wire x2="3264" y1="704" y2="704" x1="3152" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="1664" y1="880" y2="880" x1="1568" />
            <wire x2="1664" y1="496" y2="656" x1="1664" />
            <wire x2="1664" y1="656" y2="880" x1="1664" />
            <wire x2="1696" y1="656" y2="656" x1="1664" />
            <wire x2="1824" y1="656" y2="656" x1="1696" />
            <wire x2="1696" y1="496" y2="496" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1824" y="656" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2512" y="672" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="704" name="D(31:0)" orien="R0" />
        <instance x="1696" y="528" name="XLXI_26" orien="R0">
        </instance>
        <branch name="AEQZ_OUT">
            <wire x2="2144" y1="496" y2="496" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2144" y="496" name="AEQZ_OUT" orien="R0" />
        <branch name="Dadr(4:0)">
            <wire x2="448" y1="720" y2="720" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="720" name="Dadr(4:0)" orien="R180" />
    </sheet>
</drawing>