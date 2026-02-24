VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ToInst(63:0)
        SIGNAL oper(2:0)
        SIGNAL clk
        SIGNAL ProgCounter(63:0)
        SIGNAL XLXN_9
        SIGNAL PCIn(63:0)
        BEGIN SIGNAL Bin(63:0)
        END SIGNAL
        PORT Output ToInst(63:0)
        PORT Input clk
        PORT Output ProgCounter(63:0)
        PORT Input PCIn(63:0)
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
        BEGIN BLOCKDEF reg64
            TIMESTAMP 2026 2 15 7 34 21
            LINE N 64 32 0 32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -172 464 -148 
            LINE N 400 -160 464 -160 
            RECTANGLE N 64 -192 400 64 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF constant
            TIMESTAMP 2006 1 1 10 10 10
            RECTANGLE N 0 0 112 64 
            LINE N 144 32 112 32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 ALU64Bit
            PIN op(2:0) oper(2:0)
            PIN a(63:0) ToInst(63:0)
            PIN b(63:0) Bin(63:0)
            PIN cin
            PIN res(63:0) ProgCounter(63:0)
            PIN e7
            PIN cout
        END BLOCK
        BEGIN BLOCK XLXI_2 reg64
            PIN clk clk
            PIN en XLXN_9
            PIN data_in(63:0) PCIn(63:0)
            PIN data_out(63:0) ToInst(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 vcc
            PIN P XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_10 constant
            BEGIN ATTR CValue "00000004"
                DELETE all:1 sym:0
                EDITNAME all:1 sch:0
                VALUETYPE BitVector 32 Hexadecimal
            END ATTR
            PIN O Bin(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 constant
            BEGIN ATTR CValue "00000002"
                DELETE all:1 sym:0
                EDITNAME all:1 sch:0
                VALUETYPE BitVector 32 Hexadecimal
            END ATTR
            PIN O oper(2:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1968 1376 R0
        END INSTANCE
        BEGIN BRANCH ToInst(63:0)
            WIRE 1440 1216 1600 1216
            WIRE 1600 1216 1968 1216
            WIRE 1600 1216 1600 1424
        END BRANCH
        BEGIN INSTANCE XLXI_2 976 1376 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 880 1216 976 1216
        END BRANCH
        IOMARKER 880 1216 clk R180 28
        INSTANCE XLXI_4 720 1024 R0
        BEGIN BRANCH XLXN_9
            WIRE 784 1024 784 1408
            WIRE 784 1408 976 1408
        END BRANCH
        BEGIN BRANCH ProgCounter(63:0)
            WIRE 2352 1152 2512 1152
        END BRANCH
        IOMARKER 2512 1152 ProgCounter(63:0) R0 28
        BEGIN BRANCH PCIn(63:0)
            WIRE 752 1344 976 1344
        END BRANCH
        IOMARKER 752 1344 PCIn(63:0) R180 28
        BEGIN BRANCH Bin(63:0)
            WIRE 1872 1280 1968 1280
        END BRANCH
        BEGIN BRANCH oper(2:0)
            WIRE 1648 1152 1792 1152
            WIRE 1792 1152 1968 1152
            BEGIN DISPLAY 1792 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_11 1504 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 1728 1248 R0
        END INSTANCE
        IOMARKER 1600 1424 ToInst(63:0) R90 28
    END SHEET
END SCHEMATIC
