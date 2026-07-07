<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="CE" />
        <signal name="RESET" />
        <signal name="DI(31:0)" />
        <signal name="DO(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <blockdef name="REG32RST">
            <timestamp>2026-1-12T9:3:30</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="REG32RST" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="992" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="816" y1="320" y2="320" x1="640" />
        </branch>
        <branch name="CE">
            <wire x2="816" y1="416" y2="416" x1="624" />
        </branch>
        <branch name="RESET">
            <wire x2="816" y1="512" y2="512" x1="624" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="816" y1="608" y2="608" x1="592" />
        </branch>
        <iomarker fontsize="28" x="640" y="320" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="624" y="416" name="CE" orien="R180" />
        <iomarker fontsize="28" x="624" y="512" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="592" y="608" name="DI(31:0)" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="768" type="branch" />
            <wire x2="1536" y1="768" y2="768" x1="1424" />
        </branch>
        <branch name="CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="832" type="branch" />
            <wire x2="1536" y1="832" y2="832" x1="1408" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="896" type="branch" />
            <wire x2="1536" y1="896" y2="896" x1="1408" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="960" type="branch" />
            <wire x2="1392" y1="960" y2="960" x1="1376" />
            <wire x2="1536" y1="960" y2="960" x1="1392" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="2064" y1="768" y2="768" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2064" y="768" name="DO(31:0)" orien="R0" />
    </sheet>
</drawing>