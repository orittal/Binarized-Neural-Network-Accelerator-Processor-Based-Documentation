<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="clk" />
        <signal name="ack_n" />
        <signal name="RESET" />
        <signal name="wr_n" />
        <signal name="as_n" />
        <signal name="mao(31:0)" />
        <signal name="mdo(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="step" />
        <signal name="rst" />
        <signal name="step_in" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="step_in" />
        <blockdef name="LOAD_STORE_machine">
            <timestamp>2026-1-4T11:23:48</timestamp>
            <line x2="416" y1="928" y2="928" x1="352" />
            <line x2="416" y1="992" y2="992" x1="352" />
            <line x2="416" y1="1056" y2="1056" x1="352" />
            <rect width="64" x="352" y="852" height="24" />
            <line x2="416" y1="864" y2="864" x1="352" />
            <rect width="64" x="0" y="788" height="24" />
            <line x2="0" y1="800" y2="800" x1="64" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="224" y2="224" x1="352" />
            <line x2="416" y1="288" y2="288" x1="352" />
            <line x2="416" y1="352" y2="352" x1="352" />
            <rect width="64" x="352" y="404" height="24" />
            <line x2="416" y1="416" y2="416" x1="352" />
            <rect width="64" x="352" y="468" height="24" />
            <line x2="416" y1="480" y2="480" x1="352" />
            <line x2="416" y1="544" y2="544" x1="352" />
            <line x2="416" y1="608" y2="608" x1="352" />
            <rect width="64" x="352" y="724" height="24" />
            <line x2="416" y1="736" y2="736" x1="352" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-208" y2="-208" x1="352" />
            <rect width="64" x="352" y="-140" height="24" />
            <line x2="416" y1="-128" y2="-128" x1="352" />
            <rect width="64" x="352" y="-60" height="24" />
            <line x2="416" y1="-48" y2="-48" x1="352" />
            <rect width="288" x="64" y="-320" height="1408" />
        </blockdef>
        <blockdef name="IO_SIM">
            <timestamp>2026-1-16T11:29:0</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="LOAD_STORE_machine" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="step" name="step_en" />
            <blockpin signalname="DO(31:0)" name="instruction(31:0)" />
            <blockpin signalname="rst" name="reset" />
            <blockpin name="Dadr(4:0)" />
            <blockpin name="gpr_we" />
            <blockpin name="mux_sel" />
            <blockpin name="ir_en" />
            <blockpin name="pc_en" />
            <blockpin name="ce_regC" />
            <blockpin name="ce_regB" />
            <blockpin signalname="wr_n" name="wr_n" />
            <blockpin signalname="as_n" name="as_n" />
            <blockpin signalname="mao(31:0)" name="mao(31:0)" />
            <blockpin signalname="mdo(31:0)" name="mdo(31:0)" />
            <blockpin name="MAC_STATE(1:0)" />
            <blockpin name="DLX_CONTROL_STATE(3:0)" />
            <blockpin name="IN_INIT" />
            <blockpin name="AEQZ" />
            <blockpin name="D(31:0)" />
            <blockpin name="PC(15:0)" />
            <blockpin name="stop_n" />
            <blockpin name="MW" />
            <blockpin name="MR" />
        </block>
        <block symbolname="IO_SIM" name="XLXI_2">
            <blockpin signalname="clk_in" name="CLK_IN" />
            <blockpin signalname="RESET" name="RST_IN" />
            <blockpin signalname="step_in" name="STEP_IN" />
            <blockpin signalname="as_n" name="AS_N" />
            <blockpin signalname="wr_n" name="WR_N" />
            <blockpin signalname="mao(31:0)" name="MAO(31:0)" />
            <blockpin signalname="mdo(31:0)" name="MDO(31:0)" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="rst" name="RST" />
            <blockpin signalname="step" name="STEP" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1456" y="1648" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk_in">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1232" type="branch" />
            <wire x2="1456" y1="1232" y2="1232" x1="1408" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1232" type="branch" />
            <wire x2="1888" y1="1232" y2="1232" x1="1840" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="800" type="branch" />
            <wire x2="1424" y1="800" y2="800" x1="1376" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1520" type="branch" />
            <wire x2="1920" y1="1520" y2="1520" x1="1840" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="864" type="branch" />
            <wire x2="1424" y1="864" y2="864" x1="1344" />
        </branch>
        <branch name="step">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="928" type="branch" />
            <wire x2="1424" y1="928" y2="928" x1="1360" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="992" type="branch" />
            <wire x2="1424" y1="992" y2="992" x1="1344" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1056" type="branch" />
            <wire x2="1328" y1="1056" y2="1056" x1="1312" />
            <wire x2="1424" y1="1056" y2="1056" x1="1328" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1296" type="branch" />
            <wire x2="1456" y1="1296" y2="1296" x1="1376" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="800" type="branch" />
            <wire x2="1920" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="880" type="branch" />
            <wire x2="1936" y1="880" y2="880" x1="1840" />
        </branch>
        <branch name="mao(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="960" type="branch" />
            <wire x2="1936" y1="960" y2="960" x1="1840" />
        </branch>
        <branch name="mdo(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1040" type="branch" />
            <wire x2="1920" y1="1040" y2="1040" x1="1840" />
        </branch>
        <branch name="wr_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1488" type="branch" />
            <wire x2="1456" y1="1488" y2="1488" x1="1392" />
        </branch>
        <branch name="as_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1424" type="branch" />
            <wire x2="1456" y1="1424" y2="1424" x1="1392" />
        </branch>
        <branch name="step_in">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1360" type="branch" />
            <wire x2="1456" y1="1360" y2="1360" x1="1392" />
        </branch>
        <branch name="mao(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1552" type="branch" />
            <wire x2="1456" y1="1552" y2="1552" x1="1392" />
        </branch>
        <branch name="mdo(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1616" type="branch" />
            <wire x2="1456" y1="1616" y2="1616" x1="1392" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1616" type="branch" />
            <wire x2="1936" y1="1616" y2="1616" x1="1840" />
        </branch>
        <branch name="step">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1424" type="branch" />
            <wire x2="1904" y1="1424" y2="1424" x1="1840" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1328" type="branch" />
            <wire x2="1888" y1="1328" y2="1328" x1="1840" />
        </branch>
        <branch name="clk_in">
            <wire x2="928" y1="848" y2="848" x1="784" />
        </branch>
        <branch name="step_in">
            <wire x2="928" y1="880" y2="880" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="848" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="784" y="880" name="step_in" orien="R180" />
        <branch name="RESET">
            <wire x2="928" y1="912" y2="912" x1="784" />
        </branch>
        <iomarker fontsize="28" x="784" y="912" name="RESET" orien="R180" />
    </sheet>
</drawing>