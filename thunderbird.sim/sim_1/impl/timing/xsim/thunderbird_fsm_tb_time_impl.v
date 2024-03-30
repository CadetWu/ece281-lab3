// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Mar 29 22:16:34 2024
// Host        : C26-5CG2151PR3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Brendan.Wu/Documents/ece281-lab3/thunderbird.sim/sim_1/impl/timing/xsim/thunderbird_fsm_tb_time_impl.v
// Design      : top_basys3
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module thunderbird_fsm
   (led_OBUF,
    CLK,
    AR,
    sw_IBUF);
  output [5:0]led_OBUF;
  input CLK;
  input [0:0]AR;
  input [1:0]sw_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]f_S;
  wire [2:0]f_S_next;
  wire [5:0]led_OBUF;
  wire [1:0]sw_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01020900)) 
    \f_S[0]_i_1 
       (.I0(f_S[1]),
        .I1(f_S[2]),
        .I2(f_S[0]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(f_S_next[0]));
  LUT5 #(
    .INIT(32'h02042004)) 
    \f_S[1]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(f_S[0]),
        .I3(f_S[2]),
        .I4(f_S[1]),
        .O(f_S_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00204900)) 
    \f_S[2]_i_1 
       (.I0(f_S[1]),
        .I1(f_S[2]),
        .I2(f_S[0]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[0]),
        .O(f_S_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \f_S_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(f_S_next[0]),
        .Q(f_S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \f_S_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(f_S_next[1]),
        .Q(f_S[1]));
  FDCE #(
    .INIT(1'b0)) 
    \f_S_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(f_S_next[2]),
        .Q(f_S[2]));
  LUT3 #(
    .INIT(8'h1E)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(f_S[0]),
        .I1(f_S[1]),
        .I2(f_S[2]),
        .O(led_OBUF[0]));
  LUT3 #(
    .INIT(8'hE2)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(f_S[0]),
        .I1(f_S[1]),
        .I2(f_S[2]),
        .O(led_OBUF[3]));
  LUT3 #(
    .INIT(8'hC2)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(f_S[0]),
        .I1(f_S[1]),
        .I2(f_S[2]),
        .O(led_OBUF[4]));
  LUT3 #(
    .INIT(8'h90)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(f_S[2]),
        .I1(f_S[1]),
        .I2(f_S[0]),
        .O(led_OBUF[5]));
  LUT3 #(
    .INIT(8'h52)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(f_S[2]),
        .I1(f_S[1]),
        .I2(f_S[0]),
        .O(led_OBUF[1]));
  LUT3 #(
    .INIT(8'h12)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(f_S[2]),
        .I1(f_S[1]),
        .I2(f_S[0]),
        .O(led_OBUF[2]));
endmodule

(* ECO_CHECKSUM = "e9579d36" *) 
(* NotValidForBitStream *)
module top_basys3
   (clk,
    sw,
    led,
    btnL,
    btnR);
  input clk;
  input [15:0]sw;
  output [15:0]led;
  input btnL;
  input btnR;

  wire btnR;
  wire btnR_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;

initial begin
 $sdf_annotate("thunderbird_fsm_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(1'b0),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(1'b0),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(1'b0),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(1'b0),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b0),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(1'b0),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(1'b0),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(1'b0),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(1'b0),
        .O(led[9]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  thunderbird_fsm thunderbird_inst
       (.AR(btnR_IBUF),
        .CLK(clk_IBUF_BUFG),
        .led_OBUF({led_OBUF[15:13],led_OBUF[2:0]}),
        .sw_IBUF({sw_IBUF[15],sw_IBUF[0]}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
