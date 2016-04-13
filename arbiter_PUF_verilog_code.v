
module muxArbiter(a,b,sel,a1,b1);
	input a,b,sel;
	output a1,b1;
	wire x1,x2,x3,x4,nsel;

	not (nsel,sel);
	and (x1,a,nsel);
	and (x2,b,sel);
	and (x3,b,nsel);
	and (x4,a,sel);
	or (a1,x1,x2);
	or (b1,x3,x4);

endmodule
