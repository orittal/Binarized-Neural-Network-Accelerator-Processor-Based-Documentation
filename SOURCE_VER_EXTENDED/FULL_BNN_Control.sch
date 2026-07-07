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
        <signal name="busy" />
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="stop_n" />
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
        <signal name="SHIFTER" />
        <signal name="RIGHT" />
        <signal name="ITYPE" />
        <signal name="JLINK" />
        <signal name="MR" />
        <signal name="MW" />
        <signal name="GPRWE" />
        <signal name="isINIT" />
        <signal name="isHALT" />
        <signal name="ACC_UPDATE" />
        <signal name="S1SEL(1:0)" />
        <signal name="S2SEL(1:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="BNN_SEL(1:0)" />
        <signal name="DLX_STATE(4:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="AEQZ" />
        <port polarity="Input" name="IR(31:0)" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="stop_n" />
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
        <port polarity="Output" name="SHIFTER" />
        <port polarity="Output" name="RIGHT" />
        <port polarity="Output" name="ITYPE" />
        <port polarity="Output" name="JLINK" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="GPRWE" />
        <port polarity="Output" name="isINIT" />
        <port polarity="Output" name="isHALT" />
        <port polarity="Output" name="ACC_UPDATE" />
        <port polarity="Output" name="S1SEL(1:0)" />
        <port polarity="Output" name="S2SEL(1:0)" />
        <port polarity="Output" name="ALUF(2:0)" />
        <port polarity="Output" name="BNN_SEL(1:0)" />
        <port polarity="Output" name="DLX_STATE(4:0)" />
        <blockdef name="BNN_control">
            <timestamp>2026-6-21T15:45:21</timestamp>
            <rect width="256" x="64" y="-1728" height="1728" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-1696" y2="-1696" x1="320" />
            <line x2="384" y1="-1632" y2="-1632" x1="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
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
            <timestamp>2026-6-23T9:30:1</timestamp>
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
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="BNN_control" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
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
            <blockpin signalname="SHIFTER" name="SHIFTER" />
            <blockpin signalname="RIGHT" name="RIGHT" />
            <blockpin signalname="ITYPE" name="ITYPE" />
            <blockpin signalname="JLINK" name="JLINK" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="GPRWE" name="GPR_WE" />
            <blockpin signalname="isINIT" name="isINIT" />
            <blockpin signalname="isHALT" name="isHALT" />
            <blockpin signalname="ACC_UPDATE" name="ACC_UPDATE" />
            <blockpin signalname="S1SEL(1:0)" name="S1SEL(1:0)" />
            <blockpin signalname="S2SEL(1:0)" name="S2SEL(1:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="BNN_SEL(1:0)" name="BNN_SEL(1:0)" />
            <blockpin signalname="DLX_STATE(4:0)" name="DLX_STATE(4:0)" />
        </block>
        <block symbolname="MAC" name="XLXI_2">
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="MR" name="mr" />
            <blockpin signalname="MW" name="mw" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_state(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3568" y="2560" name="XLXI_1" orien="R0">
        </instance>
        <instance x="3568" y="3152" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="3568" y1="864" y2="864" x1="3440" />
        </branch>
        <branch name="RESET">
            <wire x2="3568" y1="1184" y2="1184" x1="3440" />
        </branch>
        <branch name="step_en">
            <wire x2="3568" y1="1504" y2="1504" x1="3440" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1824" type="branch" />
            <wire x2="3568" y1="1824" y2="1824" x1="3440" />
        </branch>
        <branch name="AEQZ">
            <wire x2="3568" y1="2144" y2="2144" x1="3440" />
        </branch>
        <branch name="IR(31:0)">
            <wire x2="3568" y1="2464" y2="2464" x1="3440" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="2864" type="branch" />
            <wire x2="3568" y1="2864" y2="2864" x1="3440" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="2928" type="branch" />
            <wire x2="3568" y1="2928" y2="2928" x1="3440" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="2992" type="branch" />
            <wire x2="3568" y1="2992" y2="2992" x1="3440" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="3056" type="branch" />
            <wire x2="3568" y1="3056" y2="3056" x1="3440" />
        </branch>
        <branch name="ACK_N">
            <wire x2="3568" y1="3120" y2="3120" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3440" y="864" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="3440" y="1184" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="3440" y="1504" name="step_en" orien="R180" />
        <branch name="busy">
            <wire x2="4080" y1="2864" y2="2864" x1="3952" />
        </branch>
        <branch name="as_n">
            <wire x2="4080" y1="2944" y2="2944" x1="3952" />
        </branch>
        <branch name="wr_n">
            <wire x2="4080" y1="3024" y2="3024" x1="3952" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="4080" y1="3104" y2="3104" x1="3952" />
        </branch>
        <branch name="stop_n">
            <wire x2="4080" y1="3184" y2="3184" x1="3952" />
        </branch>
        <iomarker fontsize="28" x="4080" y="2864" name="busy" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2944" name="as_n" orien="R0" />
        <iomarker fontsize="28" x="4080" y="3024" name="wr_n" orien="R0" />
        <iomarker fontsize="28" x="4080" y="3104" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4080" y="3184" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="3440" y="2144" name="AEQZ" orien="R180" />
        <iomarker fontsize="28" x="3440" y="2464" name="IR(31:0)" orien="R180" />
        <branch name="IRCE">
            <wire x2="4080" y1="864" y2="864" x1="3952" />
        </branch>
        <branch name="PCCE">
            <wire x2="4080" y1="928" y2="928" x1="3952" />
        </branch>
        <branch name="ACE">
            <wire x2="4080" y1="992" y2="992" x1="3952" />
        </branch>
        <branch name="BCE">
            <wire x2="4080" y1="1056" y2="1056" x1="3952" />
        </branch>
        <branch name="CCE">
            <wire x2="4080" y1="1120" y2="1120" x1="3952" />
        </branch>
        <branch name="MARCE">
            <wire x2="4080" y1="1184" y2="1184" x1="3952" />
        </branch>
        <branch name="MDRCE">
            <wire x2="4080" y1="1248" y2="1248" x1="3952" />
        </branch>
        <branch name="DINSEL">
            <wire x2="4080" y1="1312" y2="1312" x1="3952" />
        </branch>
        <branch name="MDRSEL">
            <wire x2="4080" y1="1376" y2="1376" x1="3952" />
        </branch>
        <branch name="ASEL">
            <wire x2="4080" y1="1440" y2="1440" x1="3952" />
        </branch>
        <branch name="ADD">
            <wire x2="4080" y1="1504" y2="1504" x1="3952" />
        </branch>
        <branch name="TEST">
            <wire x2="4080" y1="1568" y2="1568" x1="3952" />
        </branch>
        <branch name="SHIFTER">
            <wire x2="4080" y1="1632" y2="1632" x1="3952" />
        </branch>
        <branch name="RIGHT">
            <wire x2="4080" y1="1696" y2="1696" x1="3952" />
        </branch>
        <branch name="ITYPE">
            <wire x2="4080" y1="1760" y2="1760" x1="3952" />
        </branch>
        <branch name="JLINK">
            <wire x2="4080" y1="1824" y2="1824" x1="3952" />
        </branch>
        <branch name="MR">
            <wire x2="4080" y1="1888" y2="1888" x1="3952" />
        </branch>
        <branch name="MW">
            <wire x2="4080" y1="1952" y2="1952" x1="3952" />
        </branch>
        <branch name="GPRWE">
            <wire x2="3968" y1="2016" y2="2016" x1="3952" />
            <wire x2="4080" y1="2016" y2="2016" x1="3968" />
        </branch>
        <branch name="isINIT">
            <wire x2="4080" y1="2080" y2="2080" x1="3952" />
        </branch>
        <branch name="isHALT">
            <wire x2="4080" y1="2144" y2="2144" x1="3952" />
        </branch>
        <branch name="ACC_UPDATE">
            <wire x2="4080" y1="2208" y2="2208" x1="3952" />
        </branch>
        <branch name="S1SEL(1:0)">
            <wire x2="4080" y1="2272" y2="2272" x1="3952" />
        </branch>
        <branch name="S2SEL(1:0)">
            <wire x2="4080" y1="2336" y2="2336" x1="3952" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="4080" y1="2400" y2="2400" x1="3952" />
        </branch>
        <branch name="BNN_SEL(1:0)">
            <wire x2="4080" y1="2464" y2="2464" x1="3952" />
        </branch>
        <branch name="DLX_STATE(4:0)">
            <wire x2="4080" y1="2528" y2="2528" x1="3952" />
        </branch>
        <iomarker fontsize="28" x="4080" y="864" name="IRCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="928" name="PCCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="992" name="ACE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1056" name="BCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1120" name="CCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1184" name="MARCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1248" name="MDRCE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1312" name="DINSEL" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1376" name="MDRSEL" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1440" name="ASEL" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1504" name="ADD" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1568" name="TEST" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1632" name="SHIFTER" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1696" name="RIGHT" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1760" name="ITYPE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1824" name="JLINK" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1888" name="MR" orien="R0" />
        <iomarker fontsize="28" x="4080" y="1952" name="MW" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2016" name="GPRWE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2080" name="isINIT" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2144" name="isHALT" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2208" name="ACC_UPDATE" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2272" name="S1SEL(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2336" name="S2SEL(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2400" name="ALUF(2:0)" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2464" name="BNN_SEL(1:0)" orien="R0" />
        <iomarker fontsize="28" x="4080" y="2528" name="DLX_STATE(4:0)" orien="R0" />
        <iomarker fontsize="28" x="3440" y="3120" name="ACK_N" orien="R180" />
    </sheet>
</drawing>