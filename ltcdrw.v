/*
 * ltcdrw module
 */
module ltcdrw
  (
   input   [63:0] in_data,
   output  [63:0] out_data
   );
   wire [31:0] out [0:1];

   ldrw LDRW1 ( .cell0( in_data[ 7: 0] ), .cell1( in_data[15: 8] ),
		.cell2( in_data[23:16] ), .cell3( in_data[31:24] ),
		.argb( out[0] ) );
   ldrw LDRW2 ( .cell0( in_data[39:32] ), .cell1( in_data[47:40] ),
		.cell2( in_data[55:48] ), .cell3( in_data[63:56] ),
		.argb( out[1] ) );

   assign out_data = { out[1], out[0] };

endmodule
