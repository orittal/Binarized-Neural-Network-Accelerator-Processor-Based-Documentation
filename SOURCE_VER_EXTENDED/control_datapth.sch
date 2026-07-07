<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="pc_en" />
        <signal name="mux_sel" />
        <signal name="clk" />
        <signal name="resest" />
        <signal name="ack_n" />
        <signal name="step_en" />
        <signal name="rsset" />
        <signal name="opcode(5:0)" />
        <signal name="ce_regB" />
        <signal name="ce_regC" />
        <signal name="gpr_we" />
        <signal name="ir_en" />
        <signal name="as_n" />
        <signal name="wr_n" />
        <signal name="mao(31:0)" />
        <signal name="mdo(31:0)" />
        <signal name="instruction(31:0)" />
        <signal name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="resest" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="step_en" />
        <port polarity="Output" name="as_n" />
        <port polarity="Output" name="wr_n" />
        <port polarity="Output" name="mao(31:0)" />
        <port polarity="Output" name="mdo(31:0)" />
        <port polarity="Input" name="instruction(31:0)" />
        <port polarity="Input" name="reset" />
        <blockdef name="control">
            <timestamp>2026-1-4T11:21:17</timestamp>
            <line x2="384" y1="352" y2="352" x1="320" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-512" height="896" />
        </blockdef>
        <blockdef name="FULL_DATAPATH">
            <timestamp>2026-1-19T14:46:28</timestamp>
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
            <rect width="256" x="64" y="-1344" height="1472" />
        </blockdef>
        <block symbolname="FULL_DATAPATH" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="instruction(31:0)" name="DI(31:0)" />
            <blockpin name="MDR_sel" />
            <blockpin name="s1sel(1:0)" />
            <blockpin name="PCce" />
            <blockpin signalname="rsset" name="RESET" />
            <blockpin name="Ace" />
            <blockpin name="Bce" />
            <blockpin name="Cce" />
            <blockpin name="MDRce" />
            <blockpin signalname="gpr_we" name="gpr_WE" />
            <blockpin name="IRce" />
            <blockpin name="shift" />
            <blockpin name="right" />
            <blockpin name="test" />
            <blockpin name="add" />
            <blockpin name="Dadr(4:0)" />
            <blockpin name="DINTsel" />
            <blockpin name="s2sel(1:0)" />
            <blockpin name="MARce" />
            <blockpin name="Asel" />
            <blockpin name="AEQZ" />
            <blockpin signalname="opcode(5:0)" name="OPCODE(5:0)" />
            <blockpin name="D(31:0)" />
            <blockpin name="func(5:0)" />
            <blockpin name="MMU_AO(31:0)" />
            <blockpin name="DO(31:0)" />
            <blockpin name="IR(31:0)" />
        </block>
        <block symbolname="control" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="resest" name="RESET" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="step_en" name="STEP_EN" />
            <blockpin signalname="opcode(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="as_n" name="AS_N" />
            <blockpin name="MW" />
            <blockpin signalname="wr_n" name="WR_N" />
            <blockpin name="IN_INIT" />
            <blockpin name="MR" />
            <blockpin signalname="ce_regB" name="EN_B" />
            <blockpin signalname="ce_regC" name="EN_C" />
            <blockpin signalname="pc_en" name="EN_PC" />
            <blockpin signalname="ir_en" name="EN_IR" />
            <blockpin signalname="gpr_we" name="EN_GPR" />
            <blockpin signalname="mux_sel" name="MUX_SEL" />
            <blockpin name="MAC_STATE(1:0)" />
            <blockpin name="DLX_CONTROL_STATE(3:0)" />
            <blockpin name="stop_n" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1984" y="1184" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="656" type="branch" />
            <wire x2="880" y1="656" y2="656" x1="800" />
        </branch>
        <branch name="resest">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="768" type="branch" />
            <wire x2="880" y1="768" y2="768" x1="816" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="880" type="branch" />
            <wire x2="880" y1="880" y2="880" x1="784" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="992" type="branch" />
            <wire x2="880" y1="992" y2="992" x1="784" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1104" type="branch" />
            <wire x2="880" y1="1104" y2="1104" x1="784" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1104" type="branch" />
            <wire x2="1328" y1="1104" y2="1104" x1="1264" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="640" type="branch" />
            <wire x2="1936" y1="640" y2="640" x1="1920" />
            <wire x2="1984" y1="640" y2="640" x1="1936" />
        </branch>
        <branch name="instruction(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="704" type="branch" />
            <wire x2="1984" y1="704" y2="704" x1="1920" />
        </branch>
        <branch name="rsset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="768" type="branch" />
            <wire x2="1984" y1="768" y2="768" x1="1904" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1408" type="branch" />
            <wire x2="2480" y1="1408" y2="1408" x1="2368" />
        </branch>
        <branch name="mux_sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1296" type="branch" />
            <wire x2="1344" y1="1296" y2="1296" x1="1264" />
        </branch>
        <branch name="ir_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1040" type="branch" />
            <wire x2="1312" y1="1040" y2="1040" x1="1264" />
        </branch>
        <branch name="pc_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="976" type="branch" />
            <wire x2="1328" y1="976" y2="976" x1="1264" />
        </branch>
        <branch name="ce_regC">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="912" type="branch" />
            <wire x2="1328" y1="912" y2="912" x1="1264" />
        </branch>
        <branch name="ce_regB">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="848" type="branch" />
            <wire x2="1328" y1="848" y2="848" x1="1264" />
        </branch>
        <branch name="ce_regB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="832" type="branch" />
            <wire x2="1984" y1="832" y2="832" x1="1920" />
        </branch>
        <branch name="ce_regC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="896" type="branch" />
            <wire x2="1984" y1="896" y2="896" x1="1936" />
        </branch>
        <branch name="gpr_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="960" type="branch" />
            <wire x2="1936" y1="960" y2="960" x1="1920" />
            <wire x2="1984" y1="960" y2="960" x1="1936" />
        </branch>
        <branch name="pc_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1024" type="branch" />
            <wire x2="1984" y1="1024" y2="1024" x1="1936" />
        </branch>
        <branch name="ir_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1088" type="branch" />
            <wire x2="1984" y1="1088" y2="1088" x1="1888" />
        </branch>
        <branch name="mux_sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1152" type="branch" />
            <wire x2="1904" y1="1152" y2="1152" x1="1888" />
            <wire x2="1984" y1="1152" y2="1152" x1="1904" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="720" type="branch" />
            <wire x2="1344" y1="720" y2="720" x1="1264" />
        </branch>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="656" type="branch" />
            <wire x2="1344" y1="656" y2="656" x1="1264" />
        </branch>
        <branch name="mao(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="640" type="branch" />
            <wire x2="2448" y1="640" y2="640" x1="2368" />
        </branch>
        <branch name="mdo(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1152" type="branch" />
            <wire x2="2448" y1="1152" y2="1152" x1="2368" />
        </branch>
        <instance x="880" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <branch name="as_n">
            <wire x2="3072" y1="784" y2="784" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="3072" y="784" name="as_n" orien="R0" />
        <branch name="wr_n">
            <wire x2="3088" y1="848" y2="848" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="3088" y="848" name="wr_n" orien="R0" />
        <branch name="mao(31:0)">
            <wire x2="3088" y1="928" y2="928" x1="2912" />
        </branch>
        <branch name="mdo(31:0)">
            <wire x2="3104" y1="992" y2="992" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3088" y="928" name="mao(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="992" name="mdo(31:0)" orien="R0" />
        <branch name="clk">
            <wire x2="368" y1="704" y2="704" x1="240" />
        </branch>
        <branch name="reset">
            <wire x2="384" y1="752" y2="752" x1="256" />
        </branch>
        <branch name="step_en">
            <wire x2="416" y1="816" y2="816" x1="304" />
        </branch>
        <branch name="ack_n">
            <wire x2="416" y1="864" y2="864" x1="304" />
        </branch>
        <branch name="instruction(31:0)">
            <wire x2="416" y1="912" y2="912" x1="272" />
        </branch>
        <iomarker fontsize="28" x="240" y="704" name="clk" orien="R180" />
        <iomarker fontsize="28" x="256" y="752" name="reset" orien="R180" />
        <iomarker fontsize="28" x="304" y="816" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="304" y="864" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="272" y="912" name="instruction(31:0)" orien="R180" />
    </sheet>
</drawing>