<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="step_en" />
        <signal name="busy" />
        <signal name="aeqz" />
        <signal name="ir(31:0)" />
        <signal name="IRce" />
        <signal name="PCce" />
        <signal name="Ace" />
        <signal name="Bce" />
        <signal name="Cce" />
        <signal name="MARce" />
        <signal name="MDRce" />
        <signal name="DINce" />
        <signal name="MDRsel" />
        <signal name="Asel" />
        <signal name="add" />
        <signal name="test" />
        <signal name="shift" />
        <signal name="right" />
        <signal name="Itype" />
        <signal name="jlink" />
        <signal name="mr" />
        <signal name="GPRwe" />
        <signal name="init" />
        <signal name="halt" />
        <signal name="s1sel(1:0)" />
        <signal name="s2sel(1:0)" />
        <signal name="ALUf(2:0)" />
        <signal name="DLX_STATE(4:0)" />
        <signal name="mw" />
        <signal name="ack_n" />
        <signal name="wr_n" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="stop_n" />
        <signal name="as_n" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="step_en" />
        <port polarity="Output" name="busy" />
        <port polarity="Input" name="aeqz" />
        <port polarity="Input" name="ir(31:0)" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="MDRce" />
        <port polarity="Output" name="DINce" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="GPRwe" />
        <port polarity="Output" name="init" />
        <port polarity="Output" name="halt" />
        <port polarity="Output" name="s1sel(1:0)" />
        <port polarity="Output" name="s2sel(1:0)" />
        <port polarity="Output" name="ALUf(2:0)" />
        <port polarity="Output" name="DLX_STATE(4:0)" />
        <port polarity="Output" name="mw" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="as_n" />
        <blockdef name="CONTROL_SDLXSM">
            <timestamp>2026-1-12T9:18:32</timestamp>
            <rect width="256" x="64" y="-1600" height="1600" />
            <line x2="0" y1="-1568" y2="-1568" x1="64" />
            <line x2="0" y1="-1264" y2="-1264" x1="64" />
            <line x2="0" y1="-960" y2="-960" x1="64" />
            <line x2="0" y1="-656" y2="-656" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-1568" y2="-1568" x1="320" />
            <line x2="384" y1="-1504" y2="-1504" x1="320" />
            <line x2="384" y1="-1440" y2="-1440" x1="320" />
            <line x2="384" y1="-1376" y2="-1376" x1="320" />
            <line x2="384" y1="-1312" y2="-1312" x1="320" />
            <line x2="384" y1="-1248" y2="-1248" x1="320" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <block symbolname="CONTROL_SDLXSM" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="aeqz" name="AEQZ" />
            <blockpin signalname="ir(31:0)" name="IR(31:0)" />
            <blockpin signalname="IRce" name="IRCE" />
            <blockpin signalname="PCce" name="PCCE" />
            <blockpin signalname="Ace" name="ACE" />
            <blockpin signalname="Bce" name="BCE" />
            <blockpin signalname="Cce" name="CCE" />
            <blockpin signalname="MARce" name="MARCE" />
            <blockpin signalname="MDRce" name="MDRCE" />
            <blockpin signalname="DINce" name="DINSEL" />
            <blockpin signalname="MDRsel" name="MDRSEL" />
            <blockpin signalname="Asel" name="ASEL" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="test" name="TEST" />
            <blockpin signalname="shift" name="SHIFTER" />
            <blockpin signalname="right" name="RIGHT" />
            <blockpin signalname="Itype" name="ITYPE" />
            <blockpin signalname="jlink" name="JLINK" />
            <blockpin signalname="mr" name="MR" />
            <blockpin signalname="mw" name="MW" />
            <blockpin signalname="GPRwe" name="GPR_WE" />
            <blockpin signalname="init" name="isINIT" />
            <blockpin signalname="halt" name="isHALT" />
            <blockpin signalname="s1sel(1:0)" name="S1SEL(1:0)" />
            <blockpin signalname="s2sel(1:0)" name="S2SEL(1:0)" />
            <blockpin signalname="ALUf(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="DLX_STATE(4:0)" name="DLX_STATE(4:0)" />
        </block>
        <block symbolname="MAC" name="XLXI_2">
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_state(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1888" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1488" y="2288" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1472" y1="320" y2="320" x1="1408" />
        </branch>
        <branch name="reset">
            <wire x2="1472" y1="624" y2="624" x1="1408" />
        </branch>
        <branch name="step_en">
            <wire x2="1472" y1="928" y2="928" x1="1408" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1232" type="branch" />
            <wire x2="1472" y1="1232" y2="1232" x1="1408" />
        </branch>
        <branch name="aeqz">
            <wire x2="1472" y1="1536" y2="1536" x1="1392" />
        </branch>
        <branch name="ir(31:0)">
            <wire x2="1472" y1="1840" y2="1840" x1="1392" />
        </branch>
        <branch name="IRce">
            <wire x2="1920" y1="320" y2="320" x1="1856" />
        </branch>
        <branch name="PCce">
            <wire x2="1920" y1="384" y2="384" x1="1856" />
        </branch>
        <branch name="Ace">
            <wire x2="1920" y1="448" y2="448" x1="1856" />
        </branch>
        <branch name="Bce">
            <wire x2="1920" y1="512" y2="512" x1="1856" />
        </branch>
        <branch name="Cce">
            <wire x2="1920" y1="576" y2="576" x1="1856" />
        </branch>
        <branch name="MARce">
            <wire x2="1920" y1="640" y2="640" x1="1856" />
        </branch>
        <branch name="MDRce">
            <wire x2="1936" y1="704" y2="704" x1="1856" />
        </branch>
        <branch name="DINce">
            <wire x2="1936" y1="768" y2="768" x1="1856" />
        </branch>
        <branch name="MDRsel">
            <wire x2="1904" y1="832" y2="832" x1="1856" />
        </branch>
        <branch name="Asel">
            <wire x2="1936" y1="896" y2="896" x1="1856" />
        </branch>
        <branch name="add">
            <wire x2="1920" y1="960" y2="960" x1="1856" />
        </branch>
        <branch name="test">
            <wire x2="1904" y1="1024" y2="1024" x1="1856" />
        </branch>
        <branch name="shift">
            <wire x2="1920" y1="1088" y2="1088" x1="1856" />
        </branch>
        <branch name="right">
            <wire x2="1920" y1="1152" y2="1152" x1="1856" />
        </branch>
        <branch name="Itype">
            <wire x2="1904" y1="1216" y2="1216" x1="1856" />
        </branch>
        <branch name="jlink">
            <wire x2="1904" y1="1280" y2="1280" x1="1856" />
        </branch>
        <branch name="mr">
            <wire x2="1952" y1="1344" y2="1344" x1="1856" />
        </branch>
        <branch name="mw">
            <wire x2="1904" y1="1408" y2="1408" x1="1856" />
        </branch>
        <branch name="GPRwe">
            <wire x2="1920" y1="1472" y2="1472" x1="1856" />
        </branch>
        <branch name="init">
            <wire x2="1936" y1="1536" y2="1536" x1="1856" />
        </branch>
        <branch name="halt">
            <wire x2="1952" y1="1600" y2="1600" x1="1856" />
        </branch>
        <branch name="s1sel(1:0)">
            <wire x2="1920" y1="1664" y2="1664" x1="1856" />
        </branch>
        <branch name="s2sel(1:0)">
            <wire x2="1936" y1="1728" y2="1728" x1="1856" />
        </branch>
        <branch name="ALUf(2:0)">
            <wire x2="1920" y1="1792" y2="1792" x1="1856" />
        </branch>
        <branch name="DLX_STATE(4:0)">
            <wire x2="1920" y1="1856" y2="1856" x1="1856" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2000" type="branch" />
            <wire x2="1488" y1="2000" y2="2000" x1="1424" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2064" type="branch" />
            <wire x2="1488" y1="2064" y2="2064" x1="1440" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2128" type="branch" />
            <wire x2="1488" y1="2128" y2="2128" x1="1440" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2192" type="branch" />
            <wire x2="1488" y1="2192" y2="2192" x1="1440" />
        </branch>
        <branch name="ack_n">
            <wire x2="1488" y1="2256" y2="2256" x1="1424" />
        </branch>
        <branch name="busy">
            <wire x2="1920" y1="2000" y2="2000" x1="1872" />
        </branch>
        <branch name="as_n">
            <wire x2="1920" y1="2080" y2="2080" x1="1872" />
        </branch>
        <branch name="wr_n">
            <wire x2="1936" y1="2160" y2="2160" x1="1872" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="1936" y1="2240" y2="2240" x1="1872" />
        </branch>
        <branch name="stop_n">
            <wire x2="1952" y1="2320" y2="2320" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1408" y="320" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1408" y="624" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1408" y="928" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="1392" y="1536" name="aeqz" orien="R180" />
        <iomarker fontsize="28" x="1392" y="1840" name="ir(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1424" y="2256" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="1920" y="2080" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="1936" y="2160" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="1936" y="2240" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1952" y="2320" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="1920" y="2000" name="busy" orien="R0" />
        <iomarker fontsize="28" x="1920" y="320" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="1920" y="384" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="1920" y="448" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="1920" y="512" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="1920" y="576" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="1920" y="640" name="MARce" orien="R0" />
        <iomarker fontsize="28" x="1936" y="704" name="MDRce" orien="R0" />
        <iomarker fontsize="28" x="1936" y="768" name="DINce" orien="R0" />
        <iomarker fontsize="28" x="1904" y="832" name="MDRsel" orien="R0" />
        <iomarker fontsize="28" x="1936" y="896" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="1920" y="960" name="add" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1024" name="test" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1088" name="shift" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1152" name="right" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1216" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1280" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1472" name="GPRwe" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1536" name="init" orien="R0" />
        <iomarker fontsize="28" x="1952" y="1600" name="halt" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1664" name="s1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1728" name="s2sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1792" name="ALUf(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1856" name="DLX_STATE(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1952" y="1344" name="mr" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1408" name="mw" orien="R0" />
    </sheet>
</drawing>