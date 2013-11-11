/*
 * lattice gas autmaton propagation module
 */
module lppg
  (
   input [7:0] c0,
   input [7:0] c1,
   input [7:0] c2,
   input [7:0] c3,
   input [7:0] c4,
   input [7:0] c5,
   input [7:0] c6,
   input [7:0] c7,
   input [7:0] c8,
   input 	x,
   output [7:0] out_cell
   );

   assign out_cell = ( x == 1 ) ?
		     { c4[7], c4[6], c8[5], c7[4], c3[3], c1[2], c2[1], c5[0] }:  // odd
		     { c4[7], c4[6], c7[5], c6[4], c3[3], c0[2], c1[1], c5[0] };  // even
endmodule
