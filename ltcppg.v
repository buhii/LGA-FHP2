/*
 * lattice gas autmaton propagation module
 */
module ltcppg
  (
   input [63:0]  v0,
   input [63:0]  v1,
   input [63:0]  v2,
   input [63:0]  v3,
   input [63:0]  v4,
   input [63:0]  v5,
   input [63:0]  v6,
   input [63:0]  v7,
   input [63:0]  v8,
   output [63:0] out_data
   );

   wire [7:0] 	 v00;
   wire [7:0] 	 v01;
   wire [7:0] 	 v02;
   wire [7:0] 	 v03;
   wire [7:0] 	 v04;
   wire [7:0] 	 v05;
   wire [7:0] 	 v06;
   wire [7:0] 	 v07;
   assign v00 = v0[7:0];
   assign v01 = v0[15:8];
   assign v02 = v0[23:16];
   assign v03 = v0[31:24];
   assign v04 = v0[39:32];
   assign v05 = v0[47:40];
   assign v06 = v0[55:48];
   assign v07 = v0[63:56];

   wire [7:0] 	 v10;
   wire [7:0] 	 v11;
   wire [7:0] 	 v12;
   wire [7:0] 	 v13;
   wire [7:0] 	 v14;
   wire [7:0] 	 v15;
   wire [7:0] 	 v16;
   wire [7:0] 	 v17;
   assign v10 = v1[7:0];
   assign v11 = v1[15:8];
   assign v12 = v1[23:16];
   assign v13 = v1[31:24];
   assign v14 = v1[39:32];
   assign v15 = v1[47:40];
   assign v16 = v1[55:48];
   assign v17 = v1[63:56];

   wire [7:0] 	 v20;
   wire [7:0] 	 v21;
   wire [7:0] 	 v22;
   wire [7:0] 	 v23;
   wire [7:0] 	 v24;
   wire [7:0] 	 v25;
   wire [7:0] 	 v26;
   wire [7:0] 	 v27;
   assign v20 = v2[7:0];
   assign v21 = v2[15:8];
   assign v22 = v2[23:16];
   assign v23 = v2[31:24];
   assign v24 = v2[39:32];
   assign v25 = v2[47:40];
   assign v26 = v2[55:48];
   assign v27 = v2[63:56];

   wire [7:0] 	 v30;
   wire [7:0] 	 v31;
   wire [7:0] 	 v32;
   wire [7:0] 	 v33;
   wire [7:0] 	 v34;
   wire [7:0] 	 v35;
   wire [7:0] 	 v36;
   wire [7:0] 	 v37;
   assign v30 = v3[7:0];
   assign v31 = v3[15:8];
   assign v32 = v3[23:16];
   assign v33 = v3[31:24];
   assign v34 = v3[39:32];
   assign v35 = v3[47:40];
   assign v36 = v3[55:48];
   assign v37 = v3[63:56];

   wire [7:0] 	 v40;
   wire [7:0] 	 v41;
   wire [7:0] 	 v42;
   wire [7:0] 	 v43;
   wire [7:0] 	 v44;
   wire [7:0] 	 v45;
   wire [7:0] 	 v46;
   wire [7:0] 	 v47;
   assign v40 = v4[7:0];
   assign v41 = v4[15:8];
   assign v42 = v4[23:16];
   assign v43 = v4[31:24];
   assign v44 = v4[39:32];
   assign v45 = v4[47:40];
   assign v46 = v4[55:48];
   assign v47 = v4[63:56];

   wire [7:0] 	 v50;
   wire [7:0] 	 v51;
   wire [7:0] 	 v52;
   wire [7:0] 	 v53;
   wire [7:0] 	 v54;
   wire [7:0] 	 v55;
   wire [7:0] 	 v56;
   wire [7:0] 	 v57;
   assign v50 = v5[7:0];
   assign v51 = v5[15:8];
   assign v52 = v5[23:16];
   assign v53 = v5[31:24];
   assign v54 = v5[39:32];
   assign v55 = v5[47:40];
   assign v56 = v5[55:48];
   assign v57 = v5[63:56];

   wire [7:0] 	 v60;
   wire [7:0] 	 v61;
   wire [7:0] 	 v62;
   wire [7:0] 	 v63;
   wire [7:0] 	 v64;
   wire [7:0] 	 v65;
   wire [7:0] 	 v66;
   wire [7:0] 	 v67;
   assign v60 = v6[7:0];
   assign v61 = v6[15:8];
   assign v62 = v6[23:16];
   assign v63 = v6[31:24];
   assign v64 = v6[39:32];
   assign v65 = v6[47:40];
   assign v66 = v6[55:48];
   assign v67 = v6[63:56];

   wire [7:0] 	 v70;
   wire [7:0] 	 v71;
   wire [7:0] 	 v72;
   wire [7:0] 	 v73;
   wire [7:0] 	 v74;
   wire [7:0] 	 v75;
   wire [7:0] 	 v76;
   wire [7:0] 	 v77;
   assign v70 = v7[7:0];
   assign v71 = v7[15:8];
   assign v72 = v7[23:16];
   assign v73 = v7[31:24];
   assign v74 = v7[39:32];
   assign v75 = v7[47:40];
   assign v76 = v7[55:48];
   assign v77 = v7[63:56];

   wire [7:0] 	 v80;
   wire [7:0] 	 v81;
   wire [7:0] 	 v82;
   wire [7:0] 	 v83;
   wire [7:0] 	 v84;
   wire [7:0] 	 v85;
   wire [7:0] 	 v86;
   wire [7:0] 	 v87;
   assign v80 = v8[7:0];
   assign v81 = v8[15:8];
   assign v82 = v8[23:16];
   assign v83 = v8[31:24];
   assign v84 = v8[39:32];
   assign v85 = v8[47:40];
   assign v86 = v8[55:48];
   assign v87 = v8[63:56];

   wire [7:0] 	 cell1;
   wire [7:0] 	 cell2;
   wire [7:0] 	 cell3;
   wire [7:0] 	 cell4;
   wire [7:0] 	 cell5;
   wire [7:0] 	 cell6;
   wire [7:0] 	 cell7;
   wire [7:0] 	 cell8;

   lppg LPPG1 ( .c0( v07 ), .c1( v12 ), .c2( v13 ),
		.c3( v35 ), .c4( v40 ), .c5( v41 ),
		.c6( v37 ), .c7( v42 ), .c8( v43 ),
		.out_cell( cell1 ), .x( 1'b0 ) );
   lppg LPPG2 ( .c0( v12 ), .c1( v13 ), .c2( v16 ),
		.c3( v40 ), .c4( v41 ), .c5( v44 ),
		.c6( v42 ), .c7( v43 ), .c8( v46 ),
		.out_cell( cell2 ), .x( 1'b0 ) );
   lppg LPPG3 ( .c0( v13 ), .c1( v16 ), .c2( v17 ),
		.c3( v41 ), .c4( v44 ), .c5( v45 ),
		.c6( v43 ), .c7( v46 ), .c8( v47 ),
		.out_cell( cell3 ), .x( 1'b0 ) );
   lppg LPPG4 ( .c0( v16 ), .c1( v17 ), .c2( v22 ),
		.c3( v44 ), .c4( v45 ), .c5( v50 ),
		.c6( v46 ), .c7( v47 ), .c8( v52 ),
		.out_cell( cell4 ), .x( 1'b0 ) );

   lppg LPPG5 ( .c0( v35 ), .c1( v40 ), .c2( v41 ),
		.c3( v37 ), .c4( v42 ), .c5( v43 ),
		.c6( v65 ), .c7( v70 ), .c8( v71 ),
		.out_cell( cell5 ), .x( 1'b1 ) );
   lppg LPPG6 ( .c0( v40 ), .c1( v41 ), .c2( v44 ),
		.c3( v42 ), .c4( v43 ), .c5( v46 ),
		.c6( v70 ), .c7( v71 ), .c8( v74 ),
		.out_cell( cell6 ), .x( 1'b1 ) );
   lppg LPPG7 ( .c0( v41 ), .c1( v44 ), .c2( v45 ),
		.c3( v43 ), .c4( v46 ), .c5( v47 ),
		.c6( v71 ), .c7( v74 ), .c8( v75 ),
		.out_cell( cell7 ), .x( 1'b1 ) );
   lppg LPPG8 ( .c0( v44 ), .c1( v45 ), .c2( v50 ),
		.c3( v46 ), .c4( v47 ), .c5( v52 ),
		.c6( v74 ), .c7( v75 ), .c8( v80 ),
		.out_cell( cell8 ), .x( 1'b1 ) );

   assign out_data = { cell1, cell2, cell3, cell4,
		       cell5, cell6, cell7, cell8 };

endmodule
