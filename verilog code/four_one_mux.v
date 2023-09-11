module four_one_mux(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [1:0] ss,
    output reg[3:0] y
    );
    
    
    always @ (a or b or c or d or ss)
    begin 
    case (ss)
    2'b00: y=a;
    2'b01: y=b;
    2'b10: y=c;
    2'b11: y=d;
    endcase
    end
     
endmodule
