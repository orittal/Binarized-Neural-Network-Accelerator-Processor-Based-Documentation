<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PC(31:0)" />
        <signal name="XLXN_10(31:0)" />
        <signal name="S2(31:0)" />
        <signal name="CLK" />
        <signal name="DI(31:0)" />
        <signal name="MDR_sel" />
        <signal name="s1sel(1:0)" />
        <signal name="DINT(31:0)" />
        <signal name="C_OUT(31:0)" />
        <signal name="aadr(4:0)" />
        <signal name="badr(4:0)" />
        <signal name="cadr(4:0)" />
        <signal name="sext_imm(31:0)" />
        <signal name="PCce" />
        <signal name="RESET" />
        <signal name="Ace" />
        <signal name="Bce" />
        <signal name="MDRce" />
        <signal name="GPR_WE" />
        <signal name="IRce" />
        <signal name="S1(31:0)" />
        <signal name="shift" />
        <signal name="right" />
        <signal name="test" />
        <signal name="add" />
        <signal name="Dadr(4:0)" />
        <signal name="AEQZ" />
        <signal name="opcode(5:0)" />
        <signal name="D(31:0)" />
        <signal name="func(5:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="DINTsel" />
        <signal name="XLXN_131(31:0)" />
        <signal name="XLXN_132(31:0)" />
        <signal name="XLXN_15(31:0)" />
        <signal name="XLXN_16(31:0)" />
        <signal name="s2sel(1:0)" />
        <signal name="MARce" />
        <signal name="Asel" />
        <signal name="MAR(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="MMU_AO(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="A_IN(31:0)" />
        <signal name="B_IN(31:0)" />
        <signal name="A_OUT(31:0)" />
        <signal name="B_OUT(31:0)" />
        <signal name="XLXN_134(2:0)" />
        <signal name="IR(31:0)" />
        <signal name="XLXN_135(2:0)" />
        <signal name="Cce" />
        <signal name="REG_C_IN(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Input" name="MDR_sel" />
        <port polarity="Input" name="s1sel(1:0)" />
        <port polarity="Output" name="DINT(31:0)" />
        <port polarity="Input" name="PCce" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="Ace" />
        <port polarity="Input" name="Bce" />
        <port polarity="Input" name="MDRce" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="IRce" />
        <port polarity="Input" name="shift" />
        <port polarity="Input" name="right" />
        <port polarity="Input" name="test" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="opcode(5:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="func(5:0)" />
        <port polarity="Input" name="DINTsel" />
        <port polarity="Input" name="s2sel(1:0)" />
        <port polarity="Input" name="MARce" />
        <port polarity="Input" name="Asel" />
        <port polarity="Output" name="MMU_AO(31:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Output" name="A_OUT(31:0)" />
        <port polarity="Output" name="B_OUT(31:0)" />
        <port polarity="Output" name="IR(31:0)" />
        <port polarity="Input" name="Cce" />
        <port polarity="Input" name="REG_C_IN(31:0)" />
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
        <blockdef name="SHIFTER_env">
            <timestamp>2026-1-5T9:46:27</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
        </blockdef>
        <blockdef name="GPR_env">
            <timestamp>2026-1-3T23:38:1</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2026-1-12T9:8:40</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2026-1-5T9:58:1</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="MUX32bit">
            <timestamp>2024-4-10T7:9:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="IR_env">
            <timestamp>2026-1-19T15:44:17</timestamp>
            <rect width="64" x="320" y="340" height="24" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-320" height="704" />
        </blockdef>
        <blockdef name="MUX3bit">
            <timestamp>2026-1-15T17:44:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="const_011">
            <timestamp>2026-1-16T10:39:53</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="PC_ENVm">
            <timestamp>2026-6-23T16:39:33</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <block symbolname="REG32RST" name="REGA">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Ace" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="A_IN(31:0)" name="DI(31:0)" />
            <blockpin signalname="A_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="REG32RST" name="REGB">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Bce" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="B_IN(31:0)" name="DI(31:0)" />
            <blockpin signalname="B_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_9">
            <blockpin signalname="AO(31:0)" name="AO(31:0)" />
            <blockpin signalname="MMU_AO(31:0)" name="MMU_AO(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="S1MUX">
            <blockpin signalname="PC(31:0)" name="A(31:0)" />
            <blockpin signalname="A_OUT(31:0)" name="B(31:0)" />
            <blockpin signalname="B_OUT(31:0)" name="C(31:0)" />
            <blockpin signalname="DO(31:0)" name="D(31:0)" />
            <blockpin signalname="s1sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="S1(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="REG32RST" name="REGMDR">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MDRce" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="XLXN_10(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_12">
            <blockpin signalname="MDR_sel" name="sel" />
            <blockpin signalname="DINT(31:0)" name="A(31:0)" />
            <blockpin signalname="DI(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="GPR_env" name="XLXI_18">
            <blockpin signalname="C_OUT(31:0)" name="C(31:0)" />
            <blockpin signalname="aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="GPR_WE" name="gpr_we" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="B_IN(31:0)" name="B(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="A_IN(31:0)" name="A(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ_OUT" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
        </block>
        <block symbolname="IR_env" name="XLXI_26">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="IRce" name="EN" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="cadr(4:0)" name="Cadr(4:0)" />
            <blockpin name="imm(15:0)" />
            <blockpin signalname="sext_imm(31:0)" name="sext_imm(31:0)" />
            <blockpin signalname="func(5:0)" name="func(5:0)" />
            <blockpin signalname="ALUF(2:0)" name="aluf(2:0)" />
            <blockpin signalname="IR(31:0)" name="IR(31:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
        </block>
        <block symbolname="SHIFTER_env" name="XLXI_4">
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="S1(31:0)" name="DI_shifter(31:0)" />
            <blockpin signalname="XLXN_132(31:0)" name="DO_shifter(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_8">
            <blockpin signalname="test" name="test" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="S1(31:0)" name="A(31:0)" />
            <blockpin signalname="S2(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_135(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="XLXN_131(31:0)" name="ALU_OUT(31:0)" />
        </block>
        <block symbolname="MUX3bit" name="XLXI_39">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A(2:0)" />
            <blockpin signalname="XLXN_134(2:0)" name="B(2:0)" />
            <blockpin signalname="XLXN_135(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="MUX32bit" name="DINTMUX">
            <blockpin signalname="DINTsel" name="sel" />
            <blockpin signalname="XLXN_131(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_132(31:0)" name="B(31:0)" />
            <blockpin signalname="DINT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="S2MUX">
            <blockpin signalname="B_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="sext_imm(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_15(31:0)" name="C(31:0)" />
            <blockpin signalname="XLXN_16(31:0)" name="D(31:0)" />
            <blockpin signalname="s2sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="S2(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_24">
            <attr value="00000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_15(31:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_25">
            <attr value="00000001" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_16(31:0)" name="O" />
        </block>
        <block symbolname="REG32RST" name="XLXI_45">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MARce" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="DINT(31:0)" name="DI(31:0)" />
            <blockpin signalname="MAR(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_46">
            <blockpin signalname="Asel" name="sel" />
            <blockpin signalname="PC(31:0)" name="A(31:0)" />
            <blockpin signalname="MAR(31:0)" name="B(31:0)" />
            <blockpin signalname="AO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="const_011" name="XLXI_47">
            <blockpin signalname="XLXN_134(2:0)" name="out_const(2:0)" />
        </block>
        <block symbolname="REG32RST" name="REGC">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Cce" name="CE" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="REG_C_IN(31:0)" name="DI(31:0)" />
            <blockpin signalname="C_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="PC_ENVm" name="XLXI_48">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="PCce" name="pc_en" />
            <blockpin signalname="DINT(31:0)" name="PC_IN(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_OUT(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1504" name="REGA" orien="R0">
        </instance>
        <instance x="1808" y="1504" name="REGB" orien="R0">
        </instance>
        <branch name="A_IN(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1472" type="branch" />
            <wire x2="1088" y1="1472" y2="1472" x1="1008" />
        </branch>
        <branch name="B_IN(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1472" type="branch" />
            <wire x2="1808" y1="1472" y2="1472" x1="1696" />
        </branch>
        <instance x="1088" y="2000" name="S1MUX" orien="R0">
        </instance>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1712" type="branch" />
            <wire x2="1088" y1="1712" y2="1712" x1="1008" />
        </branch>
        <branch name="A_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1776" type="branch" />
            <wire x2="1088" y1="1776" y2="1776" x1="1008" />
        </branch>
        <branch name="B_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1840" type="branch" />
            <wire x2="1088" y1="1840" y2="1840" x1="1008" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1904" type="branch" />
            <wire x2="1088" y1="1904" y2="1904" x1="1008" />
        </branch>
        <instance x="2784" y="720" name="REGMDR" orien="R0">
        </instance>
        <instance x="2288" y="848" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_10(31:0)">
            <wire x2="2784" y1="688" y2="688" x1="2672" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="3264" y1="496" y2="496" x1="3168" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="1280" type="branch" />
            <wire x2="256" y1="1280" y2="1280" x1="192" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1280" type="branch" />
            <wire x2="1088" y1="1280" y2="1280" x1="1024" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1280" type="branch" />
            <wire x2="1808" y1="1280" y2="1280" x1="1760" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="496" type="branch" />
            <wire x2="2784" y1="496" y2="496" x1="2704" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="1040" type="branch" />
            <wire x2="2784" y1="1040" y2="1040" x1="2688" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="816" type="branch" />
            <wire x2="2288" y1="816" y2="816" x1="2176" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="752" type="branch" />
            <wire x2="2288" y1="752" y2="752" x1="2176" />
        </branch>
        <branch name="MDR_sel">
            <wire x2="2288" y1="688" y2="688" x1="2192" />
        </branch>
        <branch name="s1sel(1:0)">
            <wire x2="1088" y1="1968" y2="1968" x1="976" />
        </branch>
        <branch name="A_IN(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="896" type="branch" />
            <wire x2="1696" y1="896" y2="896" x1="1552" />
        </branch>
        <branch name="B_IN(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="704" type="branch" />
            <wire x2="1696" y1="704" y2="704" x1="1552" />
        </branch>
        <instance x="1168" y="1056" name="XLXI_18" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1024" type="branch" />
            <wire x2="1168" y1="1024" y2="1024" x1="1088" />
        </branch>
        <branch name="C_OUT(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="704" type="branch" />
            <wire x2="928" y1="704" y2="704" x1="864" />
            <wire x2="1168" y1="704" y2="704" x1="928" />
        </branch>
        <branch name="aadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="1040" type="branch" />
            <wire x2="3264" y1="1040" y2="1040" x1="3168" />
        </branch>
        <branch name="badr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="1104" type="branch" />
            <wire x2="3264" y1="1104" y2="1104" x1="3168" />
        </branch>
        <branch name="cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="1168" type="branch" />
            <wire x2="3264" y1="1168" y2="1168" x1="3168" />
        </branch>
        <branch name="aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="768" type="branch" />
            <wire x2="1168" y1="768" y2="768" x1="1088" />
        </branch>
        <branch name="badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="832" type="branch" />
            <wire x2="1168" y1="832" y2="832" x1="1088" />
        </branch>
        <branch name="cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="896" type="branch" />
            <wire x2="1168" y1="896" y2="896" x1="1088" />
        </branch>
        <instance x="2784" y="1328" name="XLXI_26" orien="R0">
        </instance>
        <branch name="sext_imm(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3312" y="1488" type="branch" />
            <wire x2="3312" y1="1488" y2="1488" x1="3168" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="176" y="1472" type="branch" />
            <wire x2="256" y1="1472" y2="1472" x1="176" />
        </branch>
        <branch name="PCce">
            <wire x2="256" y1="1408" y2="1408" x1="192" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="192" y="1344" type="branch" />
            <wire x2="256" y1="1344" y2="1344" x1="192" />
        </branch>
        <branch name="Ace">
            <wire x2="1088" y1="1344" y2="1344" x1="1024" />
        </branch>
        <branch name="Bce">
            <wire x2="1808" y1="1344" y2="1344" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="192" y="1408" name="PCce" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1344" name="Ace" orien="R180" />
        <iomarker fontsize="28" x="1744" y="1344" name="Bce" orien="R180" />
        <branch name="CLK">
            <wire x2="464" y1="176" y2="176" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="176" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="976" y="1968" name="s1sel(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2192" y="688" name="MDR_sel" orien="R180" />
        <branch name="MDRce">
            <wire x2="2784" y1="560" y2="560" x1="2704" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="1168" y1="960" y2="960" x1="1072" />
        </branch>
        <branch name="IRce">
            <wire x2="2784" y1="1120" y2="1120" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1120" name="IRce" orien="R180" />
        <branch name="DI(31:0)">
            <wire x2="464" y1="272" y2="272" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="272" name="DI(31:0)" orien="R180" />
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1280" type="branch" />
            <wire x2="2784" y1="1280" y2="1280" x1="2672" />
        </branch>
        <branch name="S1(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1712" type="branch" />
            <wire x2="1600" y1="1712" y2="1712" x1="1472" />
        </branch>
        <branch name="shift">
            <wire x2="1216" y1="2128" y2="2128" x1="1136" />
        </branch>
        <branch name="right">
            <wire x2="1216" y1="2192" y2="2192" x1="1136" />
        </branch>
        <branch name="S1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2256" type="branch" />
            <wire x2="1216" y1="2256" y2="2256" x1="1136" />
        </branch>
        <instance x="1216" y="2288" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1136" y="2128" name="shift" orien="R180" />
        <iomarker fontsize="28" x="1136" y="2192" name="right" orien="R180" />
        <instance x="1216" y="2688" name="XLXI_8" orien="R0">
        </instance>
        <branch name="S1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="2528" type="branch" />
            <wire x2="1216" y1="2528" y2="2528" x1="1088" />
        </branch>
        <branch name="S2(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="2592" type="branch" />
            <wire x2="1216" y1="2592" y2="2592" x1="1088" />
        </branch>
        <branch name="test">
            <wire x2="1216" y1="2400" y2="2400" x1="1136" />
        </branch>
        <branch name="add">
            <wire x2="1216" y1="2464" y2="2464" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1136" y="2464" name="add" orien="R180" />
        <iomarker fontsize="28" x="1136" y="2400" name="test" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="624" type="branch" />
            <wire x2="2784" y1="624" y2="624" x1="2736" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1200" type="branch" />
            <wire x2="2784" y1="1200" y2="1200" x1="2720" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1408" type="branch" />
            <wire x2="1808" y1="1408" y2="1408" x1="1728" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1408" type="branch" />
            <wire x2="1088" y1="1408" y2="1408" x1="1024" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="1168" y1="1088" y2="1088" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1088" name="Dadr(4:0)" orien="R180" />
        <branch name="AEQZ">
            <wire x2="1648" y1="992" y2="992" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1648" y="992" name="AEQZ" orien="R0" />
        <branch name="opcode(5:0)">
            <wire x2="3296" y1="1360" y2="1360" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1360" name="opcode(5:0)" orien="R0" />
        <iomarker fontsize="28" x="3296" y="1552" name="func(5:0)" orien="R0" />
        <branch name="D(31:0)">
            <wire x2="1696" y1="800" y2="800" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1696" y="800" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="960" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="2704" y="560" name="MDRce" orien="R180" />
        <branch name="RESET">
            <wire x2="464" y1="384" y2="384" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="384" name="RESET" orien="R180" />
        <branch name="func(5:0)">
            <wire x2="3296" y1="1552" y2="1552" x1="3168" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="1616" type="branch" />
            <wire x2="3280" y1="1616" y2="1616" x1="3168" />
        </branch>
        <instance x="560" y="2640" name="XLXI_39" orien="R0">
        </instance>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="2368" type="branch" />
            <wire x2="560" y1="2368" y2="2368" x1="224" />
            <wire x2="560" y1="2368" y2="2480" x1="560" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="2416" type="branch" />
            <wire x2="512" y1="2416" y2="2416" x1="304" />
            <wire x2="512" y1="2416" y2="2544" x1="512" />
            <wire x2="560" y1="2544" y2="2544" x1="512" />
        </branch>
        <branch name="DINTsel">
            <wire x2="2064" y1="2336" y2="2336" x1="1984" />
        </branch>
        <instance x="2064" y="2496" name="DINTMUX" orien="R0">
        </instance>
        <branch name="DINT(31:0)">
            <wire x2="2576" y1="2336" y2="2336" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="1984" y="2336" name="DINTsel" orien="R180" />
        <branch name="XLXN_131(31:0)">
            <wire x2="2064" y1="2400" y2="2400" x1="1632" />
        </branch>
        <branch name="XLXN_132(31:0)">
            <wire x2="1744" y1="2128" y2="2128" x1="1696" />
            <wire x2="1744" y1="2128" y2="2464" x1="1744" />
            <wire x2="2064" y1="2464" y2="2464" x1="1744" />
        </branch>
        <instance x="2144" y="2016" name="S2MUX" orien="R0">
        </instance>
        <branch name="B_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1728" type="branch" />
            <wire x2="2144" y1="1728" y2="1728" x1="2016" />
        </branch>
        <branch name="XLXN_15(31:0)">
            <wire x2="2144" y1="1856" y2="1856" x1="1824" />
        </branch>
        <branch name="XLXN_16(31:0)">
            <wire x2="2144" y1="1920" y2="1920" x1="1968" />
        </branch>
        <branch name="s2sel(1:0)">
            <wire x2="2080" y1="1984" y2="1984" x1="2016" />
            <wire x2="2112" y1="1984" y2="1984" x1="2080" />
            <wire x2="2144" y1="1984" y2="1984" x1="2112" />
        </branch>
        <branch name="S2(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1728" type="branch" />
            <wire x2="2656" y1="1728" y2="1728" x1="2528" />
        </branch>
        <instance x="1680" y="1824" name="XLXI_24" orien="R0">
        </instance>
        <instance x="1824" y="1888" name="XLXI_25" orien="R0">
        </instance>
        <branch name="sext_imm(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1792" type="branch" />
            <wire x2="2144" y1="1792" y2="1792" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1984" name="s2sel(1:0)" orien="R180" />
        <instance x="2688" y="2224" name="XLXI_45" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="2000" type="branch" />
            <wire x2="2688" y1="2000" y2="2000" x1="2624" />
        </branch>
        <branch name="MARce">
            <wire x2="2688" y1="2064" y2="2064" x1="2640" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2128" type="branch" />
            <wire x2="2688" y1="2128" y2="2128" x1="2608" />
        </branch>
        <branch name="DINT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="2192" type="branch" />
            <wire x2="2688" y1="2192" y2="2192" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2640" y="2064" name="MARce" orien="R180" />
        <instance x="2640" y="2656" name="XLXI_46" orien="R0">
        </instance>
        <branch name="Asel">
            <wire x2="2640" y1="2496" y2="2496" x1="2576" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2560" type="branch" />
            <wire x2="2640" y1="2560" y2="2560" x1="2576" />
        </branch>
        <branch name="MAR(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2624" type="branch" />
            <wire x2="2640" y1="2624" y2="2624" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2576" y="2496" name="Asel" orien="R180" />
        <instance x="3072" y="2368" name="XLXI_9" orien="R0">
        </instance>
        <branch name="MAR(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="2000" type="branch" />
            <wire x2="3152" y1="2000" y2="2000" x1="3072" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="2416" type="branch" />
            <wire x2="3040" y1="2496" y2="2496" x1="3024" />
            <wire x2="3072" y1="2336" y2="2336" x1="3040" />
            <wire x2="3040" y1="2336" y2="2416" x1="3040" />
            <wire x2="3040" y1="2416" y2="2496" x1="3040" />
        </branch>
        <branch name="MMU_AO(31:0)">
            <wire x2="3472" y1="2336" y2="2336" x1="3456" />
            <wire x2="3472" y1="2336" y2="2432" x1="3472" />
        </branch>
        <iomarker fontsize="28" x="3472" y="2432" name="MMU_AO(31:0)" orien="R90" />
        <branch name="A_OUT(31:0)">
            <wire x2="1552" y1="1280" y2="1280" x1="1472" />
        </branch>
        <branch name="B_OUT(31:0)">
            <wire x2="2288" y1="1280" y2="1280" x1="2192" />
        </branch>
        <instance x="0" y="2576" name="XLXI_47" orien="R0">
        </instance>
        <branch name="XLXN_134(2:0)">
            <wire x2="560" y1="2608" y2="2608" x1="384" />
        </branch>
        <iomarker fontsize="28" x="3264" y="496" name="DO(31:0)" orien="R0" />
        <branch name="IR(31:0)">
            <wire x2="3280" y1="1680" y2="1680" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1680" name="IR(31:0)" orien="R0" />
        <branch name="XLXN_135(2:0)">
            <wire x2="1024" y1="2480" y2="2480" x1="944" />
            <wire x2="1024" y1="2480" y2="2656" x1="1024" />
            <wire x2="1216" y1="2656" y2="2656" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="416" y="768" name="Cce" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="832" type="branch" />
            <wire x2="480" y1="832" y2="832" x1="416" />
        </branch>
        <branch name="Cce">
            <wire x2="480" y1="768" y2="768" x1="416" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="704" type="branch" />
            <wire x2="480" y1="704" y2="704" x1="416" />
        </branch>
        <instance x="480" y="928" name="REGC" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2576" y="2336" name="DINT(31:0)" orien="R0" />
        <branch name="REG_C_IN(31:0)">
            <wire x2="480" y1="896" y2="896" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="896" name="REG_C_IN(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1552" y="1280" name="A_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1280" name="B_OUT(31:0)" orien="R0" />
        <instance x="256" y="1504" name="XLXI_48" orien="R0">
        </instance>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1280" type="branch" />
            <wire x2="736" y1="1280" y2="1280" x1="688" />
        </branch>
    </sheet>
</drawing>