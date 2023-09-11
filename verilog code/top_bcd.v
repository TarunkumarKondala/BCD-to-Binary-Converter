module top_bcd(
    input [7:0] sw,
    input clk,
    output [3:0] an,
    output [6:0] seg
    );
    
    wire clk_out;
    wire [1:0]counter_out;
    wire [3:0] mux_out;
    wire [3:0]  ones,tens,hundreds;
    parameter  thousands= 4'b000;
    
    
    binary_bcd_converter l1(sw, ones,tens,hundreds);
    four_one_mux l2 (ones,tens,hundreds,thousands,counter_out,mux_out);
    slow_clock l3(clk,clk_out);
    two_bit_counter l4(clk_out,counter_out);
    decoder l5(counter_out,an);
    bcd_seven_segment l6(mux_out,seg);
endmodule
