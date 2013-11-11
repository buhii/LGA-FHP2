/*
 * lattice gas autmaton progation
 */
module cppg
  (
   input 	    CLK,
   input 	    RST_X,
   input 	    PPGRD,
   input 	    PPGCL,
   input [9:0] 	    C_VRAMADR_X,
   input [13:0]     C_VRAMADR_Y,
   input [9:0] 	    dsizx,
   input [9:0] 	    dsizy,
   input 	    rdata_valid,
   input 	    vram_ack,
   input [63:0]     rdata,
   output [63:0]    calc_data,
   output reg [7:0] addr_x
   );

   /* address for x */
   reg [8:0] 	 addr_y;
   always @ ( negedge RST_X or posedge CLK ) begin
      if ( ~RST_X )
	addr_x <= 8'd0;
      else if ( PPGCL == 0 && PPGRD == 0 )
	addr_x <= 8'd0;
      else if ( addr_x == ( dsizx[7:0] ))
	addr_x <= 8'd0;
      else if ( PPGRD && rdata_valid )
	addr_x <= addr_x + 8'd1;
      else if ( PPGCL )
	addr_x <= C_VRAMADR_X[7:0] + 8'd1;
   end

   wire [1:0] 	 C_BLT;
   modulus3 u_modulus3( C_VRAMADR_Y[8:0], C_BLT );

   /* Xilinx Block Memory */
   wire 	 blt0_we;
   wire 	 blt1_we;
   wire 	 blt2_we;
   wire [7:0] 	 blt0_addr;
   wire [7:0] 	 blt1_addr;
   wire [7:0] 	 blt2_addr;

   wire [63:0]	 blt00_out;
   wire [63:0]	 blt01_out;
   wire [63:0]	 blt02_out;
   wire [63:0]	 blt10_out;
   wire [63:0]	 blt11_out;
   wire [63:0]	 blt12_out;
   wire [63:0]	 blt20_out;
   wire [63:0]	 blt21_out;
   wire [63:0]	 blt22_out;

   /* address generator */
   function [7:0] GEN_ADDR;
      input [1:0] I;
      input 	  CL;
      input 	  RD;
      input [7:0] C_X;
      begin
	 if ( RD == 1 )
	   GEN_ADDR = C_X;
	 else if ( CL == 1 && I == 2'd0 )
	   GEN_ADDR = C_X - 1;
	 else if ( CL == 1 && I == 2'd1 )
	   GEN_ADDR = C_X;
	 else if ( CL == 1 && I == 2'd2 )
	   GEN_ADDR = C_X + 1;
	 else
	   GEN_ADDR = C_X;
      end
   endfunction
   assign blt0_addr = GEN_ADDR( 2'd0, PPGCL, PPGRD, addr_x );
   assign blt1_addr = GEN_ADDR( 2'd1, PPGCL, PPGRD, addr_x );
   assign blt2_addr = GEN_ADDR( 2'd2, PPGCL, PPGRD, addr_x );

   // BLT0
   bram_64_256depth BLT00
     (
      .addra    (blt0_addr),
      .dina     (rdata),
      .wea      (blt0_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt00_out)
      );
   bram_64_256depth BLT01
     (
      .addra    (blt1_addr),
      .dina     (rdata),
      .wea      (blt0_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt01_out)
      );
   bram_64_256depth BLT02
     (
      .addra    (blt2_addr),
      .dina     (rdata),
      .wea      (blt0_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt02_out)
      );

   // BLT1
   bram_64_256depth BLT10
     (
      .addra    (blt0_addr),
      .dina     (rdata),
      .wea      (blt1_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt10_out)
      );
   bram_64_256depth BLT11
     (
      .addra    (blt1_addr),
      .dina     (rdata),
      .wea      (blt1_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt11_out)
      );
   bram_64_256depth BLT12
     (
      .addra    (blt2_addr),
      .dina     (rdata),
      .wea      (blt1_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt12_out)
      );

   // BLT2
   bram_64_256depth BLT20
     (
      .addra    (blt0_addr),
      .dina     (rdata),
      .wea      (blt2_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt20_out)
      );
   bram_64_256depth BLT21
     (
      .addra    (blt1_addr),
      .dina     (rdata),
      .wea      (blt2_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt21_out)
      );
   bram_64_256depth BLT22
     (
      .addra    (blt2_addr),
      .dina     (rdata),
      .wea      (blt2_we),
      .ssra     (~RST_X),
      .clka     (CLK),
      .douta    (blt22_out)
      );

   /* write enable generator
    * - use when writing rdata to (BLT00, BLT01, BLT02), ...
    */
   function GEN_EN;
      input [1:0] C_BLT;
      input [1:0] J;
      input 	  RD;
      input       valid;
      begin
	 GEN_EN = ( C_BLT == J ) ? ( RD && valid ): 0;
      end
   endfunction
   assign blt0_we = GEN_EN( C_BLT, 2'd0, PPGRD, rdata_valid );
   assign blt1_we = GEN_EN( C_BLT, 2'd1, PPGRD, rdata_valid );
   assign blt2_we = GEN_EN( C_BLT, 2'd2, PPGRD, rdata_valid );

   /* propagation calc module */
   // set blt[0-2][0-2]_out to BLT0, BLT1, BLT2 by C_BLT
   function [63:0] GET_V;
      input [1:0] J;
      input [1:0] C_BLT;
      input [63:0] blt0;   // j - 1
      input [63:0] blt1;   // j
      input [63:0] blt2;   // j + 1
      begin
	 if      ( C_BLT == 2'd0 && J == 2'd0 )
	   GET_V = blt2;
	 else if ( C_BLT == 2'd0 && J == 2'd1 )
	   GET_V = blt0;
	 else if ( C_BLT == 2'd0 && J == 2'd2 )
	   GET_V = blt1;
	 else if ( C_BLT == 2'd1 && J == 2'd0 )
	   GET_V = blt1;
	 else if ( C_BLT == 2'd1 && J == 2'd1 )
	   GET_V = blt2;
	 else if ( C_BLT == 2'd1 && J == 2'd2 )
	   GET_V = blt0;
	 else if ( C_BLT == 2'd2 && J == 2'd0 )
	   GET_V = blt0;
	 else if ( C_BLT == 2'd2 && J == 2'd1 )
	   GET_V = blt1;
	 else if ( C_BLT == 2'd2 && J == 2'd2 )
	   GET_V = blt2;
	 else
	   GET_V = 64'd0;
      end
   endfunction

   ltcppg u_ltcppg
     (
      .v0       ( GET_V( 2'd0, C_BLT, blt00_out, blt10_out, blt20_out) ),
      .v1       ( GET_V( 2'd0, C_BLT, blt01_out, blt11_out, blt21_out) ),
      .v2       ( GET_V( 2'd0, C_BLT, blt02_out, blt12_out, blt22_out) ),
      .v3       ( GET_V( 2'd1, C_BLT, blt00_out, blt10_out, blt20_out) ),
      .v4       ( GET_V( 2'd1, C_BLT, blt01_out, blt11_out, blt21_out) ),
      .v5       ( GET_V( 2'd1, C_BLT, blt02_out, blt12_out, blt22_out) ),
      .v6       ( GET_V( 2'd2, C_BLT, blt00_out, blt10_out, blt20_out) ),
      .v7       ( GET_V( 2'd2, C_BLT, blt01_out, blt11_out, blt21_out) ),
      .v8       ( GET_V( 2'd2, C_BLT, blt02_out, blt12_out, blt22_out) ),
      .out_data ( calc_data )
      );

endmodule
