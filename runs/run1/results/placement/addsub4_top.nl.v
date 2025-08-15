module addsub4_top (clk,
    cout_out,
    ovf_out,
    rst_n,
    sub_in,
    a_in,
    b_in,
    y_out);
 input clk;
 output cout_out;
 output ovf_out;
 input rst_n;
 input sub_in;
 input [3:0] a_in;
 input [3:0] b_in;
 output [3:0] y_out;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire \a_r[0] ;
 wire \a_r[1] ;
 wire \a_r[2] ;
 wire \a_r[3] ;
 wire \b_r[0] ;
 wire \b_r[1] ;
 wire \b_r[2] ;
 wire \b_r[3] ;
 wire ovf;
 wire sub_r;
 wire \sum[0] ;
 wire \sum[1] ;
 wire \sum[2] ;
 wire \sum[3] ;
 wire \sum[4] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;

 sky130_fd_sc_hd__or2_1 _20_ (.A(\b_r[2] ),
    .B(sub_r),
    .X(_00_));
 sky130_fd_sc_hd__nand2_1 _21_ (.A(\b_r[2] ),
    .B(sub_r),
    .Y(_01_));
 sky130_fd_sc_hd__a21o_1 _22_ (.A1(_00_),
    .A2(_01_),
    .B1(\a_r[2] ),
    .X(_02_));
 sky130_fd_sc_hd__or2_1 _23_ (.A(sub_r),
    .B(\b_r[1] ),
    .X(_03_));
 sky130_fd_sc_hd__nand2_1 _24_ (.A(sub_r),
    .B(\b_r[1] ),
    .Y(_04_));
 sky130_fd_sc_hd__a21o_1 _25_ (.A1(_03_),
    .A2(_04_),
    .B1(\a_r[1] ),
    .X(_05_));
 sky130_fd_sc_hd__mux2_1 _26_ (.A0(sub_r),
    .A1(\a_r[0] ),
    .S(\b_r[0] ),
    .X(_06_));
 sky130_fd_sc_hd__and3_1 _27_ (.A(\a_r[1] ),
    .B(_03_),
    .C(_04_),
    .X(_07_));
 sky130_fd_sc_hd__a21o_1 _28_ (.A1(_05_),
    .A2(_06_),
    .B1(_07_),
    .X(_08_));
 sky130_fd_sc_hd__and3_1 _29_ (.A(\a_r[2] ),
    .B(_00_),
    .C(_01_),
    .X(_09_));
 sky130_fd_sc_hd__a21o_1 _30_ (.A1(_02_),
    .A2(_08_),
    .B1(_09_),
    .X(_10_));
 sky130_fd_sc_hd__or2_1 _31_ (.A(sub_r),
    .B(\b_r[3] ),
    .X(_11_));
 sky130_fd_sc_hd__nand2_1 _32_ (.A(sub_r),
    .B(\b_r[3] ),
    .Y(_12_));
 sky130_fd_sc_hd__and3_1 _33_ (.A(\a_r[3] ),
    .B(_11_),
    .C(_12_),
    .X(_13_));
 sky130_fd_sc_hd__a21oi_1 _34_ (.A1(_11_),
    .A2(_12_),
    .B1(\a_r[3] ),
    .Y(_14_));
 sky130_fd_sc_hd__nor2_1 _35_ (.A(_13_),
    .B(_14_),
    .Y(_15_));
 sky130_fd_sc_hd__inv_2 _36_ (.A(_14_),
    .Y(_16_));
 sky130_fd_sc_hd__nand2_1 _37_ (.A(_10_),
    .B(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__o22a_1 _38_ (.A1(_10_),
    .A2(_15_),
    .B1(_17_),
    .B2(_13_),
    .X(\sum[3] ));
 sky130_fd_sc_hd__o21a_1 _39_ (.A1(_10_),
    .A2(_13_),
    .B1(_17_),
    .X(ovf));
 sky130_fd_sc_hd__xor2_1 _40_ (.A(\a_r[0] ),
    .B(\b_r[0] ),
    .X(\sum[0] ));
 sky130_fd_sc_hd__or2b_1 _41_ (.A(_07_),
    .B_N(_05_),
    .X(_18_));
 sky130_fd_sc_hd__xnor2_1 _42_ (.A(_18_),
    .B(_06_),
    .Y(\sum[1] ));
 sky130_fd_sc_hd__or2b_1 _43_ (.A(_09_),
    .B_N(_02_),
    .X(_19_));
 sky130_fd_sc_hd__xnor2_1 _44_ (.A(_19_),
    .B(_08_),
    .Y(\sum[2] ));
 sky130_fd_sc_hd__o21a_1 _45_ (.A1(_10_),
    .A2(_13_),
    .B1(_16_),
    .X(\sum[4] ));
 sky130_fd_sc_hd__dfrtp_1 _46_ (.CLK(clk),
    .D(\sum[0] ),
    .RESET_B(net17),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _47_ (.CLK(clk),
    .D(\sum[1] ),
    .RESET_B(net17),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _48_ (.CLK(clk),
    .D(\sum[2] ),
    .RESET_B(net17),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _49_ (.CLK(clk),
    .D(\sum[3] ),
    .RESET_B(net17),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _50_ (.CLK(clk),
    .D(\sum[4] ),
    .RESET_B(net17),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _51_ (.CLK(clk),
    .D(ovf),
    .RESET_B(net17),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _52_ (.CLK(clk),
    .D(net1),
    .RESET_B(net17),
    .Q(\a_r[0] ));
 sky130_fd_sc_hd__dfrtp_1 _53_ (.CLK(clk),
    .D(net2),
    .RESET_B(net17),
    .Q(\a_r[1] ));
 sky130_fd_sc_hd__dfrtp_1 _54_ (.CLK(clk),
    .D(net3),
    .RESET_B(net18),
    .Q(\a_r[2] ));
 sky130_fd_sc_hd__dfrtp_1 _55_ (.CLK(clk),
    .D(net4),
    .RESET_B(net18),
    .Q(\a_r[3] ));
 sky130_fd_sc_hd__dfrtp_1 _56_ (.CLK(clk),
    .D(net5),
    .RESET_B(net18),
    .Q(\b_r[0] ));
 sky130_fd_sc_hd__dfrtp_1 _57_ (.CLK(clk),
    .D(net6),
    .RESET_B(net17),
    .Q(\b_r[1] ));
 sky130_fd_sc_hd__dfrtp_1 _58_ (.CLK(clk),
    .D(net7),
    .RESET_B(net18),
    .Q(\b_r[2] ));
 sky130_fd_sc_hd__dfrtp_1 _59_ (.CLK(clk),
    .D(net8),
    .RESET_B(net17),
    .Q(\b_r[3] ));
 sky130_fd_sc_hd__dfrtp_2 _60_ (.CLK(clk),
    .D(net10),
    .RESET_B(net18),
    .Q(sub_r));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(a_in[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a_in[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a_in[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a_in[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(b_in[0]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(b_in[1]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(b_in[2]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(b_in[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(rst_n),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(sub_in),
    .X(net10));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(cout_out));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(ovf_out));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(y_out[0]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(y_out[1]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(y_out[2]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(y_out[3]));
 sky130_fd_sc_hd__clkbuf_4 fanout17 (.A(net9),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_2 fanout18 (.A(net9),
    .X(net18));
endmodule
