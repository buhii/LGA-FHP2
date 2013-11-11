/*
 * % 3
 */
module modulus3
  (
   input [8:0] 	y,
   output [1:0] m
   );

   // lookup function
   function [1:0] MOD3;
      input [8:0] y;
      begin
	 case ( y )
	   0: MOD3 = 2'd0;
	   1: MOD3 = 2'd1;
	   2: MOD3 = 2'd2;
	   3: MOD3 = 2'd0;
	   4: MOD3 = 2'd1;
	   5: MOD3 = 2'd2;
	   6: MOD3 = 2'd0;
	   7: MOD3 = 2'd1;
	   8: MOD3 = 2'd2;
	   9: MOD3 = 2'd0;
	   10: MOD3 = 2'd1;
	   11: MOD3 = 2'd2;
	   12: MOD3 = 2'd0;
	   13: MOD3 = 2'd1;
	   14: MOD3 = 2'd2;
	   15: MOD3 = 2'd0;
	   16: MOD3 = 2'd1;
	   17: MOD3 = 2'd2;
	   18: MOD3 = 2'd0;
	   19: MOD3 = 2'd1;
	   20: MOD3 = 2'd2;
	   21: MOD3 = 2'd0;
	   22: MOD3 = 2'd1;
	   23: MOD3 = 2'd2;
	   24: MOD3 = 2'd0;
	   25: MOD3 = 2'd1;
	   26: MOD3 = 2'd2;
	   27: MOD3 = 2'd0;
	   28: MOD3 = 2'd1;
	   29: MOD3 = 2'd2;
	   30: MOD3 = 2'd0;
	   31: MOD3 = 2'd1;
	   32: MOD3 = 2'd2;
	   33: MOD3 = 2'd0;
	   34: MOD3 = 2'd1;
	   35: MOD3 = 2'd2;
	   36: MOD3 = 2'd0;
	   37: MOD3 = 2'd1;
	   38: MOD3 = 2'd2;
	   39: MOD3 = 2'd0;
	   40: MOD3 = 2'd1;
	   41: MOD3 = 2'd2;
	   42: MOD3 = 2'd0;
	   43: MOD3 = 2'd1;
	   44: MOD3 = 2'd2;
	   45: MOD3 = 2'd0;
	   46: MOD3 = 2'd1;
	   47: MOD3 = 2'd2;
	   48: MOD3 = 2'd0;
	   49: MOD3 = 2'd1;
	   50: MOD3 = 2'd2;
	   51: MOD3 = 2'd0;
	   52: MOD3 = 2'd1;
	   53: MOD3 = 2'd2;
	   54: MOD3 = 2'd0;
	   55: MOD3 = 2'd1;
	   56: MOD3 = 2'd2;
	   57: MOD3 = 2'd0;
	   58: MOD3 = 2'd1;
	   59: MOD3 = 2'd2;
	   60: MOD3 = 2'd0;
	   61: MOD3 = 2'd1;
	   62: MOD3 = 2'd2;
	   63: MOD3 = 2'd0;
	   64: MOD3 = 2'd1;
	   65: MOD3 = 2'd2;
	   66: MOD3 = 2'd0;
	   67: MOD3 = 2'd1;
	   68: MOD3 = 2'd2;
	   69: MOD3 = 2'd0;
	   70: MOD3 = 2'd1;
	   71: MOD3 = 2'd2;
	   72: MOD3 = 2'd0;
	   73: MOD3 = 2'd1;
	   74: MOD3 = 2'd2;
	   75: MOD3 = 2'd0;
	   76: MOD3 = 2'd1;
	   77: MOD3 = 2'd2;
	   78: MOD3 = 2'd0;
	   79: MOD3 = 2'd1;
	   80: MOD3 = 2'd2;
	   81: MOD3 = 2'd0;
	   82: MOD3 = 2'd1;
	   83: MOD3 = 2'd2;
	   84: MOD3 = 2'd0;
	   85: MOD3 = 2'd1;
	   86: MOD3 = 2'd2;
	   87: MOD3 = 2'd0;
	   88: MOD3 = 2'd1;
	   89: MOD3 = 2'd2;
	   90: MOD3 = 2'd0;
	   91: MOD3 = 2'd1;
	   92: MOD3 = 2'd2;
	   93: MOD3 = 2'd0;
	   94: MOD3 = 2'd1;
	   95: MOD3 = 2'd2;
	   96: MOD3 = 2'd0;
	   97: MOD3 = 2'd1;
	   98: MOD3 = 2'd2;
	   99: MOD3 = 2'd0;
	   100: MOD3 = 2'd1;
	   101: MOD3 = 2'd2;
	   102: MOD3 = 2'd0;
	   103: MOD3 = 2'd1;
	   104: MOD3 = 2'd2;
	   105: MOD3 = 2'd0;
	   106: MOD3 = 2'd1;
	   107: MOD3 = 2'd2;
	   108: MOD3 = 2'd0;
	   109: MOD3 = 2'd1;
	   110: MOD3 = 2'd2;
	   111: MOD3 = 2'd0;
	   112: MOD3 = 2'd1;
	   113: MOD3 = 2'd2;
	   114: MOD3 = 2'd0;
	   115: MOD3 = 2'd1;
	   116: MOD3 = 2'd2;
	   117: MOD3 = 2'd0;
	   118: MOD3 = 2'd1;
	   119: MOD3 = 2'd2;
	   120: MOD3 = 2'd0;
	   121: MOD3 = 2'd1;
	   122: MOD3 = 2'd2;
	   123: MOD3 = 2'd0;
	   124: MOD3 = 2'd1;
	   125: MOD3 = 2'd2;
	   126: MOD3 = 2'd0;
	   127: MOD3 = 2'd1;
	   128: MOD3 = 2'd2;
	   129: MOD3 = 2'd0;
	   130: MOD3 = 2'd1;
	   131: MOD3 = 2'd2;
	   132: MOD3 = 2'd0;
	   133: MOD3 = 2'd1;
	   134: MOD3 = 2'd2;
	   135: MOD3 = 2'd0;
	   136: MOD3 = 2'd1;
	   137: MOD3 = 2'd2;
	   138: MOD3 = 2'd0;
	   139: MOD3 = 2'd1;
	   140: MOD3 = 2'd2;
	   141: MOD3 = 2'd0;
	   142: MOD3 = 2'd1;
	   143: MOD3 = 2'd2;
	   144: MOD3 = 2'd0;
	   145: MOD3 = 2'd1;
	   146: MOD3 = 2'd2;
	   147: MOD3 = 2'd0;
	   148: MOD3 = 2'd1;
	   149: MOD3 = 2'd2;
	   150: MOD3 = 2'd0;
	   151: MOD3 = 2'd1;
	   152: MOD3 = 2'd2;
	   153: MOD3 = 2'd0;
	   154: MOD3 = 2'd1;
	   155: MOD3 = 2'd2;
	   156: MOD3 = 2'd0;
	   157: MOD3 = 2'd1;
	   158: MOD3 = 2'd2;
	   159: MOD3 = 2'd0;
	   160: MOD3 = 2'd1;
	   161: MOD3 = 2'd2;
	   162: MOD3 = 2'd0;
	   163: MOD3 = 2'd1;
	   164: MOD3 = 2'd2;
	   165: MOD3 = 2'd0;
	   166: MOD3 = 2'd1;
	   167: MOD3 = 2'd2;
	   168: MOD3 = 2'd0;
	   169: MOD3 = 2'd1;
	   170: MOD3 = 2'd2;
	   171: MOD3 = 2'd0;
	   172: MOD3 = 2'd1;
	   173: MOD3 = 2'd2;
	   174: MOD3 = 2'd0;
	   175: MOD3 = 2'd1;
	   176: MOD3 = 2'd2;
	   177: MOD3 = 2'd0;
	   178: MOD3 = 2'd1;
	   179: MOD3 = 2'd2;
	   180: MOD3 = 2'd0;
	   181: MOD3 = 2'd1;
	   182: MOD3 = 2'd2;
	   183: MOD3 = 2'd0;
	   184: MOD3 = 2'd1;
	   185: MOD3 = 2'd2;
	   186: MOD3 = 2'd0;
	   187: MOD3 = 2'd1;
	   188: MOD3 = 2'd2;
	   189: MOD3 = 2'd0;
	   190: MOD3 = 2'd1;
	   191: MOD3 = 2'd2;
	   192: MOD3 = 2'd0;
	   193: MOD3 = 2'd1;
	   194: MOD3 = 2'd2;
	   195: MOD3 = 2'd0;
	   196: MOD3 = 2'd1;
	   197: MOD3 = 2'd2;
	   198: MOD3 = 2'd0;
	   199: MOD3 = 2'd1;
	   200: MOD3 = 2'd2;
	   201: MOD3 = 2'd0;
	   202: MOD3 = 2'd1;
	   203: MOD3 = 2'd2;
	   204: MOD3 = 2'd0;
	   205: MOD3 = 2'd1;
	   206: MOD3 = 2'd2;
	   207: MOD3 = 2'd0;
	   208: MOD3 = 2'd1;
	   209: MOD3 = 2'd2;
	   210: MOD3 = 2'd0;
	   211: MOD3 = 2'd1;
	   212: MOD3 = 2'd2;
	   213: MOD3 = 2'd0;
	   214: MOD3 = 2'd1;
	   215: MOD3 = 2'd2;
	   216: MOD3 = 2'd0;
	   217: MOD3 = 2'd1;
	   218: MOD3 = 2'd2;
	   219: MOD3 = 2'd0;
	   220: MOD3 = 2'd1;
	   221: MOD3 = 2'd2;
	   222: MOD3 = 2'd0;
	   223: MOD3 = 2'd1;
	   224: MOD3 = 2'd2;
	   225: MOD3 = 2'd0;
	   226: MOD3 = 2'd1;
	   227: MOD3 = 2'd2;
	   228: MOD3 = 2'd0;
	   229: MOD3 = 2'd1;
	   230: MOD3 = 2'd2;
	   231: MOD3 = 2'd0;
	   232: MOD3 = 2'd1;
	   233: MOD3 = 2'd2;
	   234: MOD3 = 2'd0;
	   235: MOD3 = 2'd1;
	   236: MOD3 = 2'd2;
	   237: MOD3 = 2'd0;
	   238: MOD3 = 2'd1;
	   239: MOD3 = 2'd2;
	   240: MOD3 = 2'd0;
	   241: MOD3 = 2'd1;
	   242: MOD3 = 2'd2;
	   243: MOD3 = 2'd0;
	   244: MOD3 = 2'd1;
	   245: MOD3 = 2'd2;
	   246: MOD3 = 2'd0;
	   247: MOD3 = 2'd1;
	   248: MOD3 = 2'd2;
	   249: MOD3 = 2'd0;
	   250: MOD3 = 2'd1;
	   251: MOD3 = 2'd2;
	   252: MOD3 = 2'd0;
	   253: MOD3 = 2'd1;
	   254: MOD3 = 2'd2;
	   255: MOD3 = 2'd0;
	   256: MOD3 = 2'd1;
	   257: MOD3 = 2'd2;
	   258: MOD3 = 2'd0;
	   259: MOD3 = 2'd1;
	   260: MOD3 = 2'd2;
	   261: MOD3 = 2'd0;
	   262: MOD3 = 2'd1;
	   263: MOD3 = 2'd2;
	   264: MOD3 = 2'd0;
	   265: MOD3 = 2'd1;
	   266: MOD3 = 2'd2;
	   267: MOD3 = 2'd0;
	   268: MOD3 = 2'd1;
	   269: MOD3 = 2'd2;
	   270: MOD3 = 2'd0;
	   271: MOD3 = 2'd1;
	   272: MOD3 = 2'd2;
	   273: MOD3 = 2'd0;
	   274: MOD3 = 2'd1;
	   275: MOD3 = 2'd2;
	   276: MOD3 = 2'd0;
	   277: MOD3 = 2'd1;
	   278: MOD3 = 2'd2;
	   279: MOD3 = 2'd0;
	   280: MOD3 = 2'd1;
	   281: MOD3 = 2'd2;
	   282: MOD3 = 2'd0;
	   283: MOD3 = 2'd1;
	   284: MOD3 = 2'd2;
	   285: MOD3 = 2'd0;
	   286: MOD3 = 2'd1;
	   287: MOD3 = 2'd2;
	   288: MOD3 = 2'd0;
	   289: MOD3 = 2'd1;
	   290: MOD3 = 2'd2;
	   291: MOD3 = 2'd0;
	   292: MOD3 = 2'd1;
	   293: MOD3 = 2'd2;
	   294: MOD3 = 2'd0;
	   295: MOD3 = 2'd1;
	   296: MOD3 = 2'd2;
	   297: MOD3 = 2'd0;
	   298: MOD3 = 2'd1;
	   299: MOD3 = 2'd2;
	   300: MOD3 = 2'd0;
	   301: MOD3 = 2'd1;
	   302: MOD3 = 2'd2;
	   303: MOD3 = 2'd0;
	   304: MOD3 = 2'd1;
	   305: MOD3 = 2'd2;
	   306: MOD3 = 2'd0;
	   307: MOD3 = 2'd1;
	   308: MOD3 = 2'd2;
	   309: MOD3 = 2'd0;
	   310: MOD3 = 2'd1;
	   311: MOD3 = 2'd2;
	   312: MOD3 = 2'd0;
	   313: MOD3 = 2'd1;
	   314: MOD3 = 2'd2;
	   315: MOD3 = 2'd0;
	   316: MOD3 = 2'd1;
	   317: MOD3 = 2'd2;
	   318: MOD3 = 2'd0;
	   319: MOD3 = 2'd1;
	   320: MOD3 = 2'd2;
	   321: MOD3 = 2'd0;
	   322: MOD3 = 2'd1;
	   323: MOD3 = 2'd2;
	   324: MOD3 = 2'd0;
	   325: MOD3 = 2'd1;
	   326: MOD3 = 2'd2;
	   327: MOD3 = 2'd0;
	   328: MOD3 = 2'd1;
	   329: MOD3 = 2'd2;
	   330: MOD3 = 2'd0;
	   331: MOD3 = 2'd1;
	   332: MOD3 = 2'd2;
	   333: MOD3 = 2'd0;
	   334: MOD3 = 2'd1;
	   335: MOD3 = 2'd2;
	   336: MOD3 = 2'd0;
	   337: MOD3 = 2'd1;
	   338: MOD3 = 2'd2;
	   339: MOD3 = 2'd0;
	   340: MOD3 = 2'd1;
	   341: MOD3 = 2'd2;
	   342: MOD3 = 2'd0;
	   343: MOD3 = 2'd1;
	   344: MOD3 = 2'd2;
	   345: MOD3 = 2'd0;
	   346: MOD3 = 2'd1;
	   347: MOD3 = 2'd2;
	   348: MOD3 = 2'd0;
	   349: MOD3 = 2'd1;
	   350: MOD3 = 2'd2;
	   351: MOD3 = 2'd0;
	   352: MOD3 = 2'd1;
	   353: MOD3 = 2'd2;
	   354: MOD3 = 2'd0;
	   355: MOD3 = 2'd1;
	   356: MOD3 = 2'd2;
	   357: MOD3 = 2'd0;
	   358: MOD3 = 2'd1;
	   359: MOD3 = 2'd2;
	   360: MOD3 = 2'd0;
	   361: MOD3 = 2'd1;
	   362: MOD3 = 2'd2;
	   363: MOD3 = 2'd0;
	   364: MOD3 = 2'd1;
	   365: MOD3 = 2'd2;
	   366: MOD3 = 2'd0;
	   367: MOD3 = 2'd1;
	   368: MOD3 = 2'd2;
	   369: MOD3 = 2'd0;
	   370: MOD3 = 2'd1;
	   371: MOD3 = 2'd2;
	   372: MOD3 = 2'd0;
	   373: MOD3 = 2'd1;
	   374: MOD3 = 2'd2;
	   375: MOD3 = 2'd0;
	   376: MOD3 = 2'd1;
	   377: MOD3 = 2'd2;
	   378: MOD3 = 2'd0;
	   379: MOD3 = 2'd1;
	   380: MOD3 = 2'd2;
	   381: MOD3 = 2'd0;
	   382: MOD3 = 2'd1;
	   383: MOD3 = 2'd2;
	   384: MOD3 = 2'd0;
	   385: MOD3 = 2'd1;
	   386: MOD3 = 2'd2;
	   387: MOD3 = 2'd0;
	   388: MOD3 = 2'd1;
	   389: MOD3 = 2'd2;
	   390: MOD3 = 2'd0;
	   391: MOD3 = 2'd1;
	   392: MOD3 = 2'd2;
	   393: MOD3 = 2'd0;
	   394: MOD3 = 2'd1;
	   395: MOD3 = 2'd2;
	   396: MOD3 = 2'd0;
	   397: MOD3 = 2'd1;
	   398: MOD3 = 2'd2;
	   399: MOD3 = 2'd0;
	   400: MOD3 = 2'd1;
	   401: MOD3 = 2'd2;
	   402: MOD3 = 2'd0;
	   403: MOD3 = 2'd1;
	   404: MOD3 = 2'd2;
	   405: MOD3 = 2'd0;
	   406: MOD3 = 2'd1;
	   407: MOD3 = 2'd2;
	   408: MOD3 = 2'd0;
	   409: MOD3 = 2'd1;
	   410: MOD3 = 2'd2;
	   411: MOD3 = 2'd0;
	   412: MOD3 = 2'd1;
	   413: MOD3 = 2'd2;
	   414: MOD3 = 2'd0;
	   415: MOD3 = 2'd1;
	   416: MOD3 = 2'd2;
	   417: MOD3 = 2'd0;
	   418: MOD3 = 2'd1;
	   419: MOD3 = 2'd2;
	   420: MOD3 = 2'd0;
	   421: MOD3 = 2'd1;
	   422: MOD3 = 2'd2;
	   423: MOD3 = 2'd0;
	   424: MOD3 = 2'd1;
	   425: MOD3 = 2'd2;
	   426: MOD3 = 2'd0;
	   427: MOD3 = 2'd1;
	   428: MOD3 = 2'd2;
	   429: MOD3 = 2'd0;
	   430: MOD3 = 2'd1;
	   431: MOD3 = 2'd2;
	   432: MOD3 = 2'd0;
	   433: MOD3 = 2'd1;
	   434: MOD3 = 2'd2;
	   435: MOD3 = 2'd0;
	   436: MOD3 = 2'd1;
	   437: MOD3 = 2'd2;
	   438: MOD3 = 2'd0;
	   439: MOD3 = 2'd1;
	   440: MOD3 = 2'd2;
	   441: MOD3 = 2'd0;
	   442: MOD3 = 2'd1;
	   443: MOD3 = 2'd2;
	   444: MOD3 = 2'd0;
	   445: MOD3 = 2'd1;
	   446: MOD3 = 2'd2;
	   447: MOD3 = 2'd0;
	   448: MOD3 = 2'd1;
	   449: MOD3 = 2'd2;
	   450: MOD3 = 2'd0;
	   451: MOD3 = 2'd1;
	   452: MOD3 = 2'd2;
	   453: MOD3 = 2'd0;
	   454: MOD3 = 2'd1;
	   455: MOD3 = 2'd2;
	   456: MOD3 = 2'd0;
	   457: MOD3 = 2'd1;
	   458: MOD3 = 2'd2;
	   459: MOD3 = 2'd0;
	   460: MOD3 = 2'd1;
	   461: MOD3 = 2'd2;
	   462: MOD3 = 2'd0;
	   463: MOD3 = 2'd1;
	   464: MOD3 = 2'd2;
	   465: MOD3 = 2'd0;
	   466: MOD3 = 2'd1;
	   467: MOD3 = 2'd2;
	   468: MOD3 = 2'd0;
	   469: MOD3 = 2'd1;
	   470: MOD3 = 2'd2;
	   471: MOD3 = 2'd0;
	   472: MOD3 = 2'd1;
	   473: MOD3 = 2'd2;
	   474: MOD3 = 2'd0;
	   475: MOD3 = 2'd1;
	   476: MOD3 = 2'd2;
	   477: MOD3 = 2'd0;
	   478: MOD3 = 2'd1;
	   479: MOD3 = 2'd2;
	   480: MOD3 = 2'd0;
	   481: MOD3 = 2'd1;
	   482: MOD3 = 2'd2;
	   483: MOD3 = 2'd0;
	   484: MOD3 = 2'd1;
	   485: MOD3 = 2'd2;
	   486: MOD3 = 2'd0;
	   487: MOD3 = 2'd1;
	   488: MOD3 = 2'd2;
	   489: MOD3 = 2'd0;
	   490: MOD3 = 2'd1;
	   491: MOD3 = 2'd2;
	   492: MOD3 = 2'd0;
	   493: MOD3 = 2'd1;
	   494: MOD3 = 2'd2;
	   495: MOD3 = 2'd0;
	   496: MOD3 = 2'd1;
	   497: MOD3 = 2'd2;
	   498: MOD3 = 2'd0;
	   499: MOD3 = 2'd1;
	   500: MOD3 = 2'd2;
	   501: MOD3 = 2'd0;
	   502: MOD3 = 2'd1;
	   503: MOD3 = 2'd2;
	   504: MOD3 = 2'd0;
	   505: MOD3 = 2'd1;
	   506: MOD3 = 2'd2;
	   507: MOD3 = 2'd0;
	   508: MOD3 = 2'd1;
	   509: MOD3 = 2'd2;
	   510: MOD3 = 2'd0;
	   511: MOD3 = 2'd1;
	   default: MOD3 = 2'd0;
	 endcase
      end
   endfunction

   assign m = MOD3( y );

endmodule