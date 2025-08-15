// addsub4_top.v
// 4-bit adder/subtractor (A ± B) with one pipeline stage for OpenLane (sky130) flows.
// sub_in = 0 -> add (A + B); sub_in = 1 -> subtract (A - B).
// Outputs: y_out[3:0], cout_out (carry/borrow flag), ovf_out (signed overflow)

`timescale 1ns/1ps

module addsub4_top (
    input  wire        clk,
    input  wire        rst_n,    // active-low reset
    input  wire [3:0]  a_in,
    input  wire [3:0]  b_in,
    input  wire        sub_in,   // 0 = add, 1 = subtract (A - B)
    output reg  [3:0]  y_out,
    output reg         cout_out,
    output reg         ovf_out
);

    // Register inputs (pipeline stage 0)
    reg [3:0] a_r, b_r;
    reg       sub_r;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a_r   <= 4'd0;
            b_r   <= 4'd0;
            sub_r <= 1'b0;
        end else begin
            a_r   <= a_in;
            b_r   <= b_in;
            sub_r <= sub_in;
        end
    end

    // Combinational adder/subtractor
    wire [3:0] b2  = b_r ^ {4{sub_r}};        // invert B when subtracting
    wire [4:0] sum = {1'b0, a_r} + {1'b0, b2} + sub_r; // add + carry-in=sub_r

    // Signed overflow for 4-bit two's complement add: (a[3]&b2[3]&~y[3]) | (~a[3]&~b2[3]&y[3])
    wire       ovf = ( a_r[3] &  b2[3] & ~sum[3]) | (~a_r[3] & ~b2[3] &  sum[3]);

    // Register outputs (pipeline stage 1)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y_out   <= 4'd0;
            cout_out<= 1'b0;
            ovf_out <= 1'b0;
        end else begin
            y_out   <= sum[3:0];
            cout_out<= sum[4];
            ovf_out <= ovf;
        end
    end
endmodule
