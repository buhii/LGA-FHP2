/*
 * lattice gas autmaton drawing module
 */
module ldrw
  (
   input [7:0] 	 cell0,
   input [7:0] 	 cell1,
   input [7:0] 	 cell2,
   input [7:0] 	 cell3,
   output [31:0] argb
   );

   wire [7:0] 	 count;
   assign count = ( cell0[0] + cell0[1] + cell0[2] + cell0[3] + cell0[4] + cell0[5] + cell0[6] +
		    cell1[0] + cell1[1] + cell1[2] + cell1[3] + cell1[4] + cell1[5] + cell1[6] +
		    cell2[0] + cell2[1] + cell2[2] + cell2[3] + cell2[4] + cell2[5] + cell2[6] +
		    cell3[0] + cell3[1] + cell3[2] + cell3[3] + cell3[4] + cell3[5] + cell3[6] ) << 3;
   assign argb = ( cell0[7] == 1 ||
		   cell1[7] == 1 ||
		   cell2[7] == 1 ||
		   cell3[7] == 1 ) ?
		 { 8'h0, 8'h0, 8'h0, 8'h77 }:
		 { 8'b0, count, count, count };

endmodule // ldrw
