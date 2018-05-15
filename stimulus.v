module stimulus;

reg [7:0] A, B;
reg op;
wire overflow;
wire [7:0] S;
wire carry;
reg [31:0] STD_ID;

AddSub AddSub1(A, B, op, carry, S, overflow);

initial
begin
	$monitor($time, " A = %b, B = %b, op = %b, --- carry = %b, S = %b, overflow = %b\n", A, B, op, carry, S, overflow);
end

initial
begin
	STD_ID = 32'd2012147562;
	
	A = 8'b00001100; B = 8'b00001100; op = 1'b0;
	#5 A = 8'b00001100; B = 8'b00001100; op = 1'b1;
	#5 A = 8'b00001101; B = 8'b00011001; op = 1'b1;
	#5 A = 8'b01100100; B = 8'b00110010; op = 1'b0;
	#5 A = 8'b10110000; B = 8'b00111100; op = 1'b1;

end

endmodule

