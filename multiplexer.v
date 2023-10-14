module CSE460_Lab(S, Y, A, B, C, D);
	input A, B, C, D;
	input [1:0]S;
	output reg Y;
	//assign Y = (~S1 & ~S0 & A) |
	//		   (~S1 & S0 & B) |
	//		   (S1 & ~S0 & C) |
	//		   (S1 & S0 & D);
	//always @(*)
	//begin
	//if(S==2'b00)
	//	Y=A;
	//else if(S==2'b01)
	//	Y=B;
	//else if(S==2'b10)
	//	Y=C;
	//else
	//	Y=D;
	//end
	always @(*)
		case(S)
			00: Y=A;
			01: Y=B;
			10: Y=C;
			11: Y=D;
			default: Y=1'bx;
		endcase
endmodule 
