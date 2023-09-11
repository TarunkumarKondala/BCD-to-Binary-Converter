module binary_bcd_converter(
    input [7:0] a,
    output [3:0] ones,
    output [3:0] tens,
    output [1:0] hundreds
    );
    
    wire [3:0] c1,c2,c3,c4,c5,c6,c7;//declaring the data lines comming out of each add 3 module
    wire [3:0] d1,d2,d3,d4,d5,d6,d7; //declaring the data lines going in to of each add 3 module


// follow the block diagram here :

assign d1= {1'b0,a [7:5]};
assign d2= {c1[2:0],a[4]};
assign d3= {c2[2:0],a[3]};
assign d4= {c3[2:0],a[2]};
assign d5= {c4[2:0],a[1]};
assign d6= {1'b0,c1[3],c2[3],c3[3]};
assign d7= {c6[2:0],c4[3]};

//instantiating the add3 alogorithm

shift_add3_algorithm v0(d1,c1);
shift_add3_algorithm v1(d2,c2);
shift_add3_algorithm v2(d3,c3);
shift_add3_algorithm v3(d4,c4);
shift_add3_algorithm v4(d5,c5);
shift_add3_algorithm v5(d6,c6);
shift_add3_algorithm v6(d7,c7);

assign ones = {c5[2:0],a[0]};
assign tens = {c7[2:0],c5[3]};
assign hundreds ={c6[3],c7[3]};


endmodule
