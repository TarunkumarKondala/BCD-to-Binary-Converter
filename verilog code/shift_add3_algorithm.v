module shift_add3_algorithm(
    input [3:0] in,
    output reg [3:0] out
    );
    
    always @(in)
    case(in)
    4'b0000: out<= 4'b0000;//0
    4'b0001: out<=4'b0001;//1
    4'b0010: out<= 4'b0010;//2
    4'b0011: out<=4'b0011;//3
    4'b0100: out<= 4'b0100;//4
    4'b0101: out<=4'b1000;//5+3=8
    4'b0110: out<= 4'b1001;//6+3=9
    4'b0111: out<=4'b1010;//7+3=10
    4'b1000: out<= 4'b1011;//8+3=11
    4'b1001: out<= 4'b1100;//9+3=12
     default: out<= 4'b0000;
     endcase
endmodule
