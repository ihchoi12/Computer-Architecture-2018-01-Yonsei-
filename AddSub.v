module AddSub(A, B, op, carry, S, overflow);


output [7:0] S;
output carry;
output overflow;
input [7:0] A, B;
input op;

wire c0, c1, c2, c3, c4, c5, c6, x0, x1, x2, x3, x4, x5, x6, x7;
xor(x0, B[0], op);
fulladd fa0(S[0], c0, A[0], x0, op);

xor(x1, B[1], op);
fulladd fa1(S[1], c1, A[1], x1, c0);

xor(x2, B[2], op);
fulladd fa2(S[2], c2, A[2], x2, c1); 

xor(x3, B[3], op);
fulladd fa3(S[3], c3, A[3], x3, c2);

xor(x4, B[4], op);
fulladd fa4(S[4], c4, A[4], x4, c3);

xor(x5, B[5], op);
fulladd fa5(S[5], c5, A[5], x5, c4);

xor(x6, B[6], op);
fulladd fa6(S[6], c6, A[6], x6, c5);

xor(x7, B[7], op);
fulladd fa7(S[7], carry, A[7], x7, c6);

xor(overflow, carry, c6);

endmodule