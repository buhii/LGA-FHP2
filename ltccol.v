/*
 * ltccol module
 */
module ltccol
  (
   input   [63:0] in_data,
   output  [63:0] out_data
   );
   wire [7:0] out [0:7];

   lcol LCOL1 ( .x( 1'b0 ), .in_cell( in_data[ 7: 0] ), .out_cell( out[0] ) );
   lcol LCOL2 ( .x( 1'b1 ), .in_cell( in_data[15: 8] ), .out_cell( out[1] ) );
   lcol LCOL3 ( .x( 1'b0 ), .in_cell( in_data[23:16] ), .out_cell( out[2] ) );
   lcol LCOL4 ( .x( 1'b1 ), .in_cell( in_data[31:24] ), .out_cell( out[3] ) );
   lcol LCOL5 ( .x( 1'b0 ), .in_cell( in_data[39:32] ), .out_cell( out[4] ) );
   lcol LCOL6 ( .x( 1'b1 ), .in_cell( in_data[47:40] ), .out_cell( out[5] ) );
   lcol LCOL7 ( .x( 1'b0 ), .in_cell( in_data[55:48] ), .out_cell( out[6] ) );
   lcol LCOL8 ( .x( 1'b1 ), .in_cell( in_data[63:56] ), .out_cell( out[7] ) );

   assign out_data = { out[7], out[6], out[5], out[4],
		       out[3], out[2], out[1], out[0] };
endmodule
