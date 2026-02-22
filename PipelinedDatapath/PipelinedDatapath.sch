VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL XLXN_3(1:0)
        SIGNAL XLXN_4(63:0)
        SIGNAL XLXN_5(63:0)
        SIGNAL XLXN_15(63:0)
        SIGNAL XLXN_16(63:0)
        SIGNAL InstID(29:28)
        SIGNAL InstID(11:10)
        SIGNAL XLXN_14(63:0)
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45(1:0)
        SIGNAL XLXN_46(1:0)
        SIGNAL XLXN_47(63:0)
        SIGNAL XLXN_50(63:0)
        SIGNAL InstIF(31:0)
        SIGNAL wea
        SIGNAL InstAddr(7:0)
        SIGNAL InstID(9:8)
        SIGNAL RegData1(7:0)
        SIGNAL XLXN_65
        SIGNAL InstData(31:0)
        SIGNAL XLXN_77(63:0)
        SIGNAL InstID(31:0)
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL InstID(30)
        SIGNAL InstID(31)
        SIGNAL XLXN_82(63:0)
        SIGNAL XLXN_83
        SIGNAL XLXN_85
        SIGNAL XLXN_87
        SIGNAL XLXN_89
        SIGNAL RegData1(63:0)
        SIGNAL XLXN_92(63:0)
        SIGNAL XLXN_93(63:0)
        SIGNAL XLXN_97(63:0)
        SIGNAL XLXN_98(63:0)
        SIGNAL XLXN_91
        SIGNAL XLXN_100(63:0)
        SIGNAL XLXN_101(63:0)
        SIGNAL XLXN_102(63:0)
        PORT Input clk
        PORT Input wea
        PORT Input InstData(31:0)
        BEGIN BLOCKDEF reg_file
            TIMESTAMP 2026 2 14 5 43 52
            LINE N 64 64 64 64 
            LINE N 64 128 64 128 
            LINE N 64 192 64 192 
            RECTANGLE N 64 244 64 268 
            LINE N 64 256 64 256 
            RECTANGLE N 64 308 64 332 
            LINE N 64 320 64 320 
            RECTANGLE N 64 372 64 396 
            LINE N 64 384 64 384 
            RECTANGLE N 320 52 320 76 
            LINE N 320 64 320 64 
            RECTANGLE N 320 116 320 140 
            LINE N 320 128 320 128 
            RECTANGLE N 64 0 320 400 
        END BLOCKDEF
        BEGIN BLOCKDEF MEMWBStageReg
            TIMESTAMP 2026 2 14 5 36 52
            RECTANGLE N 160 -364 288 972 
            LINE N 288 -176 352 -176 
            LINE N 160 -176 96 -176 
            LINE N 224 972 224 1040 
            RECTANGLE N 288 900 352 924 
            LINE N 288 912 352 912 
            RECTANGLE N 96 900 160 924 
            LINE N 160 912 96 912 
            RECTANGLE N 96 596 160 620 
            LINE N 160 608 96 608 
            RECTANGLE N 288 596 352 620 
            LINE N 288 608 352 608 
        END BLOCKDEF
        BEGIN BLOCKDEF InstructionMem
            TIMESTAMP 2026 2 18 1 29 35
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF DataMemory
            TIMESTAMP 2026 2 18 1 46 8
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCount
            TIMESTAMP 2026 2 22 8 14 48
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF IFIDReg
            TIMESTAMP 2026 2 22 10 31 47
            RECTANGLE N 112 -192 272 2504 
            LINE N 192 2504 192 2556 
            RECTANGLE N 48 -12 112 12 
            LINE N 112 0 48 0 
            RECTANGLE N 272 -12 336 12 
            LINE N 272 0 336 0 
            RECTANGLE N 48 2324 112 2348 
            LINE N 112 2336 48 2336 
            RECTANGLE N 272 2324 336 2348 
            LINE N 272 2336 336 2336 
        END BLOCKDEF
        BEGIN BLOCKDEF IDEXReg
            TIMESTAMP 2026 2 22 10 39 8
            RECTANGLE N 160 -384 288 2020 
            RECTANGLE N 96 -320 160 -288 
            RECTANGLE N 288 -320 352 -288 
            LINE N 160 -304 96 -304 
            LINE N 288 -304 352 -304 
            LINE N 224 2024 224 2080 
            RECTANGLE N 288 1972 352 1996 
            LINE N 288 1984 352 1984 
            RECTANGLE N 96 1972 160 1996 
            LINE N 160 1984 96 1984 
            RECTANGLE N 96 1732 160 1756 
            LINE N 160 1744 96 1744 
            RECTANGLE N 288 1732 352 1756 
            LINE N 288 1744 352 1744 
            RECTANGLE N 288 1540 352 1564 
            LINE N 288 1552 352 1552 
            RECTANGLE N 96 1540 160 1564 
            LINE N 160 1552 96 1552 
            LINE N 160 1136 96 1136 
            LINE N 288 1136 352 1136 
            LINE N 288 656 352 656 
            LINE N 160 656 96 656 
            LINE N 156 -80 96 -80 
            LINE N 288 -80 352 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF ZeroDetect64
            TIMESTAMP 2026 2 22 10 50 33
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU64Bit
            TIMESTAMP 2026 2 22 5 4 4
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -128 384 -128 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF EXMEMReg
            TIMESTAMP 2026 2 22 19 28 29
            RECTANGLE N 160 -384 288 2020 
            LINE N 224 2024 224 2080 
            RECTANGLE N 288 1972 352 1996 
            LINE N 288 1984 352 1984 
            RECTANGLE N 96 1972 160 1996 
            LINE N 160 1984 96 1984 
            RECTANGLE N 96 1732 160 1756 
            LINE N 160 1744 96 1744 
            RECTANGLE N 288 1732 352 1756 
            LINE N 288 1744 352 1744 
            RECTANGLE N 288 1540 352 1564 
            LINE N 288 1552 352 1552 
            RECTANGLE N 96 1540 160 1564 
            LINE N 160 1552 96 1552 
            LINE N 160 1136 96 1136 
            LINE N 288 1136 352 1136 
            LINE N 288 656 352 656 
            LINE N 160 656 96 656 
        END BLOCKDEF
        BEGIN BLOCK XLXI_20 MEMWBStageReg
            PIN clk clk
            PIN WDataI(63:0) XLXN_47(63:0)
            PIN WREI XLXN_43
            PIN WREG1I(1:0) XLXN_45(1:0)
            PIN WDataO(63:0) XLXN_14(63:0)
            PIN WREO XLXN_44
            PIN WREG1O(1:0) XLXN_46(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 reg_file
            PIN wena XLXN_44
            PIN waddr(1:0) XLXN_46(1:0)
            PIN clk clk
            PIN r1addr(1:0) InstID(11:10)
            PIN r0addr(1:0) InstID(9:8)
            PIN wdata(63:0) XLXN_14(63:0)
            PIN r0data(63:0) XLXN_16(63:0)
            PIN r1data(63:0) XLXN_15(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 InstructionMem
            PIN addr(7:0) InstAddr(7:0)
            PIN din(31:0) InstData(31:0)
            PIN we wea
            PIN clk clk
            PIN dout(31:0) InstIF(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_34 DataMemory
            PIN addra(7:0) RegData1(7:0)
            PIN dina(63:0) XLXN_50(63:0)
            PIN wea XLXN_65
            PIN clka clk
            PIN addrb(7:0) RegData1(7:0)
            PIN clkb clk
            PIN doutb(63:0) XLXN_47(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 ProgCount
            PIN clk clk
            PIN ProgCounter(63:0) XLXN_85
        END BLOCK
        BEGIN BLOCK XLXI_40 IFIDReg
            PIN clk clk
            PIN Inst(31:0) InstIF(31:0)
            PIN PCIF(63:0) XLXN_82(63:0)
            PIN InstOut(31:0) InstID(31:0)
            PIN PCID(63:0) XLXN_77(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_41 IDEXReg
            PIN PCI(63:0) XLXN_82(63:0)
            PIN pin1 XLXN_87
            PIN clk clk
            PIN WREG1I(1:0) InstID(29:28)
            PIN REG2I(63:0) XLXN_15(63:0)
            PIN REG1I(63:0) XLXN_16(63:0)
            PIN WREG1O(1:0) XLXN_3(1:0)
            PIN REG2O(63:0) XLXN_4(63:0)
            PIN REG1O(63:0) XLXN_5(63:0)
            PIN WMEI InstID(31)
            PIN WREI InstID(30)
            PIN WMEO XLXN_7
            PIN WREO XLXN_6
            PIN pin XLXN_83
            PIN pin2 XLXN_89
        END BLOCK
        BEGIN BLOCK XLXI_42 ZeroDetect64
            PIN in(63:0) XLXN_16(63:0)
            PIN out XLXN_83
        END BLOCK
        BEGIN BLOCK XLXI_43 m2_1
            PIN D0 XLXN_87
            PIN D1 XLXN_85
            PIN S0 XLXN_89
            PIN O XLXN_77(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_45 gnd
            PIN G XLXN_91
        END BLOCK
        BEGIN BLOCK XLXI_44 ALU64Bit
            PIN op(2:0)
            PIN a(63:0) XLXN_5(63:0)
            PIN b(63:0) XLXN_4(63:0)
            PIN cin XLXN_91
            PIN res(63:0) XLXN_102(63:0)
            PIN e7
            PIN cout
        END BLOCK
        BEGIN BLOCK XLXI_51 EXMEMReg
            PIN clk clk
            PIN WREG1I(1:0)
            PIN REG2I(63:0)
            PIN REG1I(63:0) XLXN_102(63:0)
            PIN WREG1O(1:0) XLXN_45(1:0)
            PIN REG2O(63:0) XLXN_50(63:0)
            PIN REG1O(63:0) RegData1(63:0)
            PIN WMEI XLXN_7
            PIN WREI XLXN_6
            PIN WMEO XLXN_65
            PIN WREO XLXN_43
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH XLXN_3(1:0)
            WIRE 2896 2976 2960 2976
        END BRANCH
        BEGIN INSTANCE XLXI_20 4720 2032 R0
        END INSTANCE
        BEGIN BRANCH XLXN_15(63:0)
            WIRE 1888 2736 2640 2736
        END BRANCH
        BEGIN BRANCH XLXN_16(63:0)
            WIRE 1888 2672 2064 2672
            WIRE 2064 912 2224 912
            WIRE 2064 912 2064 2544
            WIRE 2064 2544 2064 2672
            WIRE 2064 2544 2640 2544
        END BRANCH
        BEGIN BRANCH InstID(29:28)
            WIRE 2528 2976 2640 2976
            BEGIN DISPLAY 2528 2976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_13 1568 2608 R0
        END INSTANCE
        BEGIN BRANCH InstID(11:10)
            WIRE 1520 2864 1632 2864
            BEGIN DISPLAY 1520 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14(63:0)
            WIRE 1520 2992 1632 2992
            WIRE 1520 2992 1520 3312
            WIRE 1520 3312 5232 3312
            WIRE 5072 2640 5232 2640
            WIRE 5232 2640 5232 3312
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 3728 2128 4224 2128
            WIRE 4224 1856 4816 1856
            WIRE 4224 1856 4224 2128
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1600 496 5296 496
            WIRE 5296 496 5296 1856
            WIRE 1600 496 1600 2672
            WIRE 1600 2672 1632 2672
            WIRE 5072 1856 5296 1856
        END BRANCH
        BEGIN BRANCH XLXN_45(1:0)
            WIRE 3728 2976 4224 2976
            WIRE 4224 2944 4224 2976
            WIRE 4224 2944 4816 2944
        END BRANCH
        BEGIN BRANCH XLXN_46(1:0)
            WIRE 1424 2736 1424 3360
            WIRE 1424 3360 5136 3360
            WIRE 1424 2736 1632 2736
            WIRE 5072 2944 5136 2944
            WIRE 5136 2944 5136 3360
        END BRANCH
        BEGIN BRANCH XLXN_47(63:0)
            WIRE 4592 2624 4720 2624
            WIRE 4720 2624 4720 2640
            WIRE 4720 2640 4816 2640
        END BRANCH
        BEGIN BRANCH InstIF(31:0)
            WIRE 656 2304 800 2304
            BEGIN DISPLAY 800 2304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wea
            WIRE 144 2368 304 2368
        END BRANCH
        BEGIN BRANCH InstAddr(7:0)
            WIRE 160 2304 304 2304
            BEGIN DISPLAY 160 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(9:8)
            WIRE 1520 2928 1632 2928
            BEGIN DISPLAY 1520 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_32 304 2256 R0
        END INSTANCE
        IOMARKER 144 2368 wea R180 28
        BEGIN BRANCH InstData(31:0)
            WIRE 128 2448 192 2448
            WIRE 192 2336 192 2448
            WIRE 192 2336 304 2336
        END BRANCH
        IOMARKER 128 2448 InstData(31:0) R180 28
        BEGIN BRANCH RegData1(7:0)
            WIRE 4208 2400 4304 2400
            BEGIN DISPLAY 4208 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegData1(7:0)
            WIRE 4208 2624 4304 2624
            BEGIN DISPLAY 4208 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_50(63:0)
            WIRE 3728 2736 3984 2736
            WIRE 3984 2432 4304 2432
            WIRE 3984 2432 3984 2736
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 3728 1648 3888 1648
            WIRE 3888 1648 3888 2464
            WIRE 3888 2464 4304 2464
        END BRANCH
        BEGIN INSTANCE XLXI_34 4304 2352 R0
        END INSTANCE
        BEGIN BRANCH XLXN_77(63:0)
            WIRE 768 512 768 528
            WIRE 768 528 864 528
            WIRE 768 512 848 512
            WIRE 848 512 848 704
            WIRE 832 704 848 704
        END BRANCH
        IOMARKER 144 3200 clk R180 28
        BEGIN BRANCH InstIF(31:0)
            WIRE 784 2864 864 2864
            BEGIN DISPLAY 784 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(31:0)
            WIRE 1152 2864 1232 2864
            BEGIN DISPLAY 1232 2864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_40 816 528 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_41 2544 992 R0
        END INSTANCE
        BEGIN BRANCH XLXN_6
            WIRE 2896 2128 2960 2128
            WIRE 2960 2128 3472 2128
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 2896 1648 2992 1648
            WIRE 2992 1648 3472 1648
        END BRANCH
        BEGIN BRANCH InstID(30)
            WIRE 2528 2128 2640 2128
            BEGIN DISPLAY 2528 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(31)
            WIRE 2512 1648 2640 1648
            BEGIN DISPLAY 2512 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_82(63:0)
            WIRE 1152 528 1888 528
            WIRE 1888 528 1888 688
            WIRE 1888 688 2640 688
        END BRANCH
        BEGIN BRANCH XLXN_83
            WIRE 2608 912 2640 912
        END BRANCH
        BEGIN INSTANCE XLXI_42 2224 944 R0
        END INSTANCE
        INSTANCE XLXI_43 512 832 R0
        BEGIN BRANCH clk
            WIRE 80 672 96 672
            WIRE 80 672 80 960
            WIRE 80 960 176 960
            WIRE 176 960 176 2496
            WIRE 176 2496 304 2496
            WIRE 176 2496 176 3200
            WIRE 176 3200 1008 3200
            WIRE 1008 3200 1344 3200
            WIRE 1344 3200 2768 3200
            WIRE 2768 3200 3600 3200
            WIRE 3600 3200 4112 3200
            WIRE 4112 3200 4944 3200
            WIRE 144 3200 176 3200
            WIRE 1008 3088 1008 3200
            WIRE 1344 2800 1632 2800
            WIRE 1344 2800 1344 3200
            WIRE 2768 3072 2768 3200
            WIRE 3600 3072 3600 3200
            WIRE 4112 2592 4304 2592
            WIRE 4112 2592 4112 2816
            WIRE 4112 2816 4304 2816
            WIRE 4112 2816 4112 3200
            WIRE 4944 3072 4944 3200
        END BRANCH
        BEGIN BRANCH XLXN_85
            WIRE 480 736 512 736
        END BRANCH
        BEGIN INSTANCE XLXI_39 96 704 R0
        END INSTANCE
        BEGIN BRANCH XLXN_87
            WIRE 496 176 496 192
            WIRE 496 192 496 672
            WIRE 496 672 512 672
            WIRE 496 176 3104 176
            WIRE 3104 176 3104 688
            WIRE 2896 688 3104 688
        END BRANCH
        BEGIN BRANCH XLXN_89
            WIRE 64 224 480 224
            WIRE 480 224 3024 224
            WIRE 3024 224 3024 912
            WIRE 64 224 64 800
            WIRE 64 800 512 800
            WIRE 2896 912 3024 912
        END BRANCH
        BEGIN BRANCH RegData1(63:0)
            WIRE 3728 2544 3840 2544
            BEGIN DISPLAY 3840 2544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_4(63:0)
            WIRE 2896 2736 2912 2736
            WIRE 2912 2688 3008 2688
            WIRE 2912 2688 2912 2736
        END BRANCH
        BEGIN BRANCH XLXN_5(63:0)
            WIRE 2896 2544 2912 2544
            WIRE 2912 2544 2912 2624
            WIRE 2912 2624 3008 2624
        END BRANCH
        BEGIN BRANCH XLXN_91
            WIRE 2944 2752 2944 2784
            WIRE 2944 2784 2944 2800
            WIRE 2944 2752 3008 2752
        END BRANCH
        INSTANCE XLXI_45 2880 2928 R0
        BEGIN INSTANCE XLXI_44 3008 2784 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_51 3376 992 R0
        END INSTANCE
        BEGIN BRANCH XLXN_102(63:0)
            WIRE 3392 2560 3424 2560
            WIRE 3424 2544 3424 2560
            WIRE 3424 2544 3472 2544
        END BRANCH
    END SHEET
END SCHEMATIC
