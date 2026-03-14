VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL din(63:0)
        SIGNAL din(63:48)
        SIGNAL din(47:32)
        SIGNAL din(31:16)
        SIGNAL din(15:0)
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL dout
        SIGNAL rst
        PORT Input din(63:0)
        PORT Output dout
        PORT Input rst
        BEGIN BLOCKDEF ZeroDetect16
            TIMESTAMP 2026 2 24 5 53 50
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF nor4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 216 -160 
            CIRCLE N 192 -172 216 -148 
            LINE N 112 -208 48 -208 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 ZeroDetect16
            PIN din(15:0) din(31:16)
            PIN dout XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_4 ZeroDetect16
            PIN din(15:0) din(15:0)
            PIN dout XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 ZeroDetect16
            PIN din(15:0) din(47:32)
            PIN dout XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_1 ZeroDetect16
            PIN din(15:0) din(63:48)
            PIN dout XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_9 nor4
            PIN I0 XLXN_10
            PIN I1 XLXN_8
            PIN I2 XLXN_7
            PIN I3 XLXN_9
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_10 and2b1
            PIN I0 rst
            PIN I1 XLXN_11
            PIN O dout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH din(63:0)
            WIRE 640 640 800 640
            BEGIN DISPLAY 800 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 640 640 din(63:0) R180 28
        BEGIN INSTANCE XLXI_3 1456 736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1456 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1456 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1456 448 R0
        END INSTANCE
        BEGIN BRANCH din(63:48)
            WIRE 1392 416 1456 416
            BEGIN DISPLAY 1392 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(47:32)
            WIRE 1392 560 1456 560
            BEGIN DISPLAY 1392 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(31:16)
            WIRE 1392 704 1456 704
            BEGIN DISPLAY 1392 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(15:0)
            WIRE 1392 848 1456 848
            BEGIN DISPLAY 1392 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 2464 800 R0
        BEGIN BRANCH XLXN_7
            WIRE 1840 560 2144 560
            WIRE 2144 560 2144 608
            WIRE 2144 608 2464 608
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1840 704 2144 704
            WIRE 2144 672 2144 704
            WIRE 2144 672 2464 672
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1840 416 2464 416
            WIRE 2464 416 2464 544
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1840 848 2464 848
            WIRE 2464 736 2464 848
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 2720 640 2752 640
        END BRANCH
        INSTANCE XLXI_10 2752 768 R0
        BEGIN BRANCH dout
            WIRE 3008 672 3168 672
        END BRANCH
        IOMARKER 3168 672 dout R0 28
        BEGIN BRANCH rst
            WIRE 2384 992 2736 992
            WIRE 2736 704 2736 992
            WIRE 2736 704 2752 704
        END BRANCH
        IOMARKER 2384 992 rst R180 28
    END SHEET
END SCHEMATIC
