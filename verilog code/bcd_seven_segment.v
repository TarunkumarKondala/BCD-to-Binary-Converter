module bcd_seven_segment(
    input [3:0] y,
    output  reg [6:0] disp
    );
    always@(y)
    begin
    case(y)
       0: disp = 7'b0000001;
       1: disp = 7'b1001111; // Display 1 (abcdefg)
       2: disp = 7'b0010010; // Display 2 (abcdefg)
       3: disp = 7'b0000110; // Display 3 (abcdefg)
       4: disp = 7'b1001100; // Display 4 (abcdefg)
       5: disp = 7'b0100100; // Display 5 (abcdefg)
       6: disp = 7'b0100000; // Display 6 (abcdefg)
       7: disp = 7'b0001111; // Display 7 (abcdefg)
       8: disp = 7'b0000000; // Display 8 (abcdefg)
       9: disp = 7'b0000100; // Display 9 (abcdefg)
               
      endcase
      end
endmodule
