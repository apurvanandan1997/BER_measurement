// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Tue Jul 16 14:07:49 2019
//
// Verilog Description of module top
//

module top (LED, LANE0, CLK, FT601_CLK, FT601_RST_N, FT601_DATA, 
            FT601_BE, FT601_RXF_N, FT601_TXE_N, FT601_WR_N, FT601_SIWU_N, 
            FT601_RD_N, FT601_OE_N);   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(26[8:11])
    output LED;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(28[9:12])
    input [0:0]LANE0;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(30[9:14])
    input CLK /* synthesis black_box_pad_pin=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(32[9:12])
    input FT601_CLK;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(43[9:18])
    output FT601_RST_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(44[9:20])
    output [31:0]FT601_DATA;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(45[9:19])
    output [3:0]FT601_BE;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(46[9:17])
    input FT601_RXF_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(47[9:20])
    input FT601_TXE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(48[9:20])
    output FT601_WR_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(49[9:19])
    output FT601_SIWU_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(50[9:21])
    output FT601_RD_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(51[9:19])
    output FT601_OE_N;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(52[9:19])
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(43[9:18])
    wire sclk_derived_94 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/sclk_derived_94 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire din_clk_N_1128 /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\ber_proc/din_clk_N_1128 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    wire buf_clk /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/deserializer_inst/buf_clk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(50[12:19])
    
    wire GND_net, VCC_net, LED_c, FT601_RXF_N_c, FT601_TXE_N_c, FT601_WR_N_c, 
        FT601_RD_N_c, FT601_OE_N_c;
    wire [31:0]gen_data;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(95[12:20])
    wire [7:0]par_byte;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(99[12:20])
    wire [31:0]rng;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(101[12:15])
    
    wire ce;
    wire [8:0]gen_data_31__N_1;
    
    wire ce_N_10;
    wire [31:0]i_dat_i_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(73[12:23])
    
    wire n1681, n14, n10, n5322, n5275, n5274, n5273, n5272, 
        n3602, buf_dataini0;
    
    VHI i2 (.Z(VCC_net));
    CCU2D sub_27_add_2_9 (.A0(par_byte[7]), .B0(rng[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5275), .S0(gen_data_31__N_1[7]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_27_add_2_9.INIT0 = 16'h5999;
    defparam sub_27_add_2_9.INIT1 = 16'h0000;
    defparam sub_27_add_2_9.INJECT1_0 = "NO";
    defparam sub_27_add_2_9.INJECT1_1 = "NO";
    OB LED_pad (.I(LED_c), .O(LED));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(28[9:12])
    IB FT601_TXE_N_pad (.I(FT601_TXE_N), .O(FT601_TXE_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(48[9:20])
    IB FT601_RXF_N_pad (.I(FT601_RXF_N), .O(FT601_RXF_N_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(47[9:20])
    IB FT601_CLK_pad (.I(FT601_CLK), .O(FT601_CLK_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(43[9:18])
    OB FT601_OE_N_pad (.I(FT601_OE_N_c), .O(FT601_OE_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(52[9:19])
    OB FT601_RD_N_pad (.I(FT601_RD_N_c), .O(FT601_RD_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(51[9:19])
    OB FT601_SIWU_N_pad (.I(VCC_net), .O(FT601_SIWU_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(50[9:21])
    OB FT601_WR_N_pad (.I(FT601_WR_N_c), .O(FT601_WR_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(49[9:19])
    OBZ FT601_BE_pad_0 (.I(VCC_net), .T(n1681), .O(FT601_BE[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_1 (.I(VCC_net), .T(n1681), .O(FT601_BE[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_2 (.I(VCC_net), .T(n1681), .O(FT601_BE[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(233[5:13])
    OBZ FT601_BE_pad_3 (.I(VCC_net), .T(n1681), .O(FT601_BE[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(233[5:13])
    OBZ FT601_DATA_pad_0 (.I(i_dat_i_buf[24]), .T(n1681), .O(FT601_DATA[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_1 (.I(i_dat_i_buf[25]), .T(n1681), .O(FT601_DATA[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_2 (.I(i_dat_i_buf[26]), .T(n1681), .O(FT601_DATA[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_3 (.I(i_dat_i_buf[27]), .T(n1681), .O(FT601_DATA[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_4 (.I(i_dat_i_buf[28]), .T(n1681), .O(FT601_DATA[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_5 (.I(i_dat_i_buf[29]), .T(n1681), .O(FT601_DATA[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_6 (.I(i_dat_i_buf[30]), .T(n1681), .O(FT601_DATA[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_7 (.I(i_dat_i_buf[31]), .T(n1681), .O(FT601_DATA[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_8 (.I(i_dat_i_buf[16]), .T(n1681), .O(FT601_DATA[8]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_9 (.I(i_dat_i_buf[17]), .T(n1681), .O(FT601_DATA[9]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_10 (.I(i_dat_i_buf[18]), .T(n1681), .O(FT601_DATA[10]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_11 (.I(i_dat_i_buf[19]), .T(n1681), .O(FT601_DATA[11]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_12 (.I(i_dat_i_buf[20]), .T(n1681), .O(FT601_DATA[12]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_13 (.I(i_dat_i_buf[21]), .T(n1681), .O(FT601_DATA[13]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_14 (.I(i_dat_i_buf[22]), .T(n1681), .O(FT601_DATA[14]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_15 (.I(i_dat_i_buf[23]), .T(n1681), .O(FT601_DATA[15]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_16 (.I(i_dat_i_buf[8]), .T(n1681), .O(FT601_DATA[16]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_17 (.I(i_dat_i_buf[9]), .T(n1681), .O(FT601_DATA[17]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_18 (.I(i_dat_i_buf[10]), .T(n1681), .O(FT601_DATA[18]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_19 (.I(i_dat_i_buf[11]), .T(n1681), .O(FT601_DATA[19]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_20 (.I(i_dat_i_buf[12]), .T(n1681), .O(FT601_DATA[20]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_21 (.I(i_dat_i_buf[13]), .T(n1681), .O(FT601_DATA[21]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_22 (.I(i_dat_i_buf[14]), .T(n1681), .O(FT601_DATA[22]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_23 (.I(i_dat_i_buf[15]), .T(n1681), .O(FT601_DATA[23]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_24 (.I(i_dat_i_buf[0]), .T(n1681), .O(FT601_DATA[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_25 (.I(i_dat_i_buf[1]), .T(n1681), .O(FT601_DATA[25]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_26 (.I(i_dat_i_buf[2]), .T(n1681), .O(FT601_DATA[26]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_27 (.I(i_dat_i_buf[3]), .T(n1681), .O(FT601_DATA[27]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_28 (.I(i_dat_i_buf[4]), .T(n1681), .O(FT601_DATA[28]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_29 (.I(i_dat_i_buf[5]), .T(n1681), .O(FT601_DATA[29]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_30 (.I(i_dat_i_buf[6]), .T(n1681), .O(FT601_DATA[30]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    OBZ FT601_DATA_pad_31 (.I(i_dat_i_buf[7]), .T(n1681), .O(FT601_DATA[31]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    IB Inst2_IB (.I(CLK), .O(buf_clk)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(282[16:18])
    IB Inst1_IB0 (.I(LANE0[0]), .O(buf_dataini0)) /* synthesis IO_TYPE="LVDS25", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(288[17:19])
    FD1S3AX gen_data_i8 (.D(gen_data_31__N_1[7]), .CK(sclk_derived_94), 
            .Q(gen_data[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i8.GSR = "ENABLED";
    FD1S3AX gen_data_i7 (.D(gen_data_31__N_1[6]), .CK(sclk_derived_94), 
            .Q(gen_data[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i7.GSR = "ENABLED";
    FD1S3AX gen_data_i6 (.D(gen_data_31__N_1[5]), .CK(sclk_derived_94), 
            .Q(gen_data[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i6.GSR = "ENABLED";
    LUT4 i4710_4_lut (.A(par_byte[0]), .B(n14), .C(n10), .D(par_byte[6]), 
         .Z(n5322)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(122[16:38])
    defparam i4710_4_lut.init = 16'h0001;
    LUT4 i6_4_lut (.A(par_byte[3]), .B(par_byte[1]), .C(par_byte[5]), 
         .D(par_byte[7]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(122[16:38])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(par_byte[2]), .B(par_byte[4]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(122[16:38])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX gen_data_i5 (.D(gen_data_31__N_1[4]), .CK(sclk_derived_94), 
            .Q(gen_data[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i5.GSR = "ENABLED";
    FD1S3AX gen_data_i4 (.D(gen_data_31__N_1[3]), .CK(sclk_derived_94), 
            .Q(gen_data[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i4.GSR = "ENABLED";
    FD1S3AX gen_data_i3 (.D(gen_data_31__N_1[2]), .CK(sclk_derived_94), 
            .Q(gen_data[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i3.GSR = "ENABLED";
    FD1S3AX gen_data_i2 (.D(gen_data_31__N_1[1]), .CK(sclk_derived_94), 
            .Q(gen_data[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i2.GSR = "ENABLED";
    OB FT601_RST_N_pad (.I(VCC_net), .O(FT601_RST_N));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(44[9:20])
    LUT4 i2421_1_lut (.A(ce), .Z(n3602)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(121[9] 129[16])
    defparam i2421_1_lut.init = 16'h5555;
    CCU2D sub_27_add_2_7 (.A0(par_byte[5]), .B0(rng[29]), .C0(GND_net), 
          .D0(GND_net), .A1(par_byte[6]), .B1(rng[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5274), .COUT(n5275), .S0(gen_data_31__N_1[5]), 
          .S1(gen_data_31__N_1[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_27_add_2_7.INIT0 = 16'h5999;
    defparam sub_27_add_2_7.INIT1 = 16'h5999;
    defparam sub_27_add_2_7.INJECT1_0 = "NO";
    defparam sub_27_add_2_7.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    calc_ber ber_proc (.LED_c(LED_c), .din_clk_N_1128(din_clk_N_1128), .GND_net(GND_net));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(174[16:36])
    CCU2D sub_27_add_2_5 (.A0(par_byte[3]), .B0(rng[27]), .C0(GND_net), 
          .D0(GND_net), .A1(par_byte[4]), .B1(rng[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5273), .COUT(n5274), .S0(gen_data_31__N_1[3]), 
          .S1(gen_data_31__N_1[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_27_add_2_5.INIT0 = 16'h5999;
    defparam sub_27_add_2_5.INIT1 = 16'h5999;
    defparam sub_27_add_2_5.INJECT1_0 = "NO";
    defparam sub_27_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_3 (.A0(par_byte[1]), .B0(rng[25]), .C0(GND_net), 
          .D0(GND_net), .A1(par_byte[2]), .B1(rng[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n5272), .COUT(n5273), .S0(gen_data_31__N_1[1]), 
          .S1(gen_data_31__N_1[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_27_add_2_3.INIT0 = 16'h5999;
    defparam sub_27_add_2_3.INIT1 = 16'h5999;
    defparam sub_27_add_2_3.INJECT1_0 = "NO";
    defparam sub_27_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(par_byte[0]), .B1(rng[24]), .C1(GND_net), .D1(GND_net), 
          .COUT(n5272), .S1(gen_data_31__N_1[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_27_add_2_1.INIT0 = 16'h0000;
    defparam sub_27_add_2_1.INIT1 = 16'h5999;
    defparam sub_27_add_2_1.INJECT1_0 = "NO";
    defparam sub_27_add_2_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX gen_data_i1 (.D(gen_data_31__N_1[0]), .CK(sclk_derived_94), 
            .Q(gen_data[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(116[5:13])
    defparam gen_data_i1.GSR = "ENABLED";
    FD1S3IX ce_23 (.D(ce_N_10), .CK(din_clk_N_1128), .CD(n5322), .Q(ce));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(121[9] 129[16])
    defparam ce_23.GSR = "ENABLED";
    ft601 ft601_comp (.FT601_CLK_c(FT601_CLK_c), .FT601_OE_N_c(FT601_OE_N_c), 
          .FT601_RD_N_c(FT601_RD_N_c), .i_dat_i_buf({i_dat_i_buf}), .\gen_data[1] (gen_data[1]), 
          .\gen_data[0] (gen_data[0]), .\gen_data[6] (gen_data[6]), .\gen_data[2] (gen_data[2]), 
          .\gen_data[3] (gen_data[3]), .\gen_data[4] (gen_data[4]), .\gen_data[5] (gen_data[5]), 
          .\gen_data[7] (gen_data[7]), .FT601_RXF_N_c(FT601_RXF_N_c), .FT601_WR_N_c(FT601_WR_N_c), 
          .n1681(n1681), .FT601_TXE_N_c(FT601_TXE_N_c), .GND_net(GND_net));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(132[18:23])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \prng("10111100110011001111000001010011")  prng_isnt (.\rng[25] (rng[25]), 
            .sclk_derived_94(sclk_derived_94), .n3602(n3602), .\rng[26] (rng[26]), 
            .\rng[27] (rng[27]), .\rng[28] (rng[28]), .\rng[29] (rng[29]), 
            .\rng[30] (rng[30]), .\rng[31] (rng[31]), .GND_net(GND_net), 
            .\rng[24] (rng[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(163[17:33])
    deserializer8_1 decoder_inst (.par_byte({par_byte}), .ce_N_10(ce_N_10), 
            .GND_net(GND_net), .buf_clk(buf_clk), .buf_dataini0(buf_dataini0), 
            .VCC_net(VCC_net), .sclk_derived_94(sclk_derived_94), .din_clk_N_1128(din_clk_N_1128));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(150[20:47])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module calc_ber
//

module calc_ber (LED_c, din_clk_N_1128, GND_net);
    output LED_c;
    input din_clk_N_1128;
    input GND_net;
    
    wire din_clk_N_1128 /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\ber_proc/din_clk_N_1128 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    
    wire debug_N_1284;
    wire [24:0]count_bytes;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(35[12:23])
    wire [24:0]n105;
    
    wire n47, n45, n46, n43, n38, n40, n28, n42, n32, n5287, 
        n5286, n5285, n5284, n5283, n5282, n5281, n5280, n5279, 
        n5278, n5277, n5276;
    
    FD1S3AX debug1_34 (.D(debug_N_1284), .CK(din_clk_N_1128), .Q(LED_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=16, LSE_RCOL=36, LSE_LLINE=174, LSE_RLINE=174 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(62[9] 82[16])
    defparam debug1_34.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i0 (.D(n105[0]), .CK(din_clk_N_1128), .Q(count_bytes[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(LED_c), .B(n47), .C(n45), .D(n46), .Z(debug_N_1284)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h6aaa;
    LUT4 i22_4_lut (.A(n43), .B(count_bytes[7]), .C(n38), .D(count_bytes[12]), 
         .Z(n47)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i22_4_lut.init = 16'h8000;
    LUT4 i20_4_lut (.A(count_bytes[17]), .B(n40), .C(n28), .D(count_bytes[22]), 
         .Z(n45)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20_4_lut.init = 16'h8000;
    LUT4 i21_4_lut (.A(count_bytes[11]), .B(n42), .C(n32), .D(count_bytes[20]), 
         .Z(n46)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i21_4_lut.init = 16'h8000;
    LUT4 i18_4_lut (.A(count_bytes[0]), .B(count_bytes[14]), .C(count_bytes[10]), 
         .D(count_bytes[19]), .Z(n43)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i18_4_lut.init = 16'h8000;
    LUT4 i13_3_lut (.A(count_bytes[8]), .B(count_bytes[5]), .C(count_bytes[6]), 
         .Z(n38)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i13_3_lut.init = 16'h8080;
    LUT4 i15_4_lut (.A(count_bytes[15]), .B(count_bytes[3]), .C(count_bytes[1]), 
         .D(count_bytes[24]), .Z(n40)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(count_bytes[23]), .B(count_bytes[4]), .Z(n28)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i17_4_lut (.A(count_bytes[2]), .B(count_bytes[13]), .C(count_bytes[9]), 
         .D(count_bytes[18]), .Z(n42)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(count_bytes[16]), .B(count_bytes[21]), .Z(n32)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    FD1S3AX count_bytes_405__i1 (.D(n105[1]), .CK(din_clk_N_1128), .Q(count_bytes[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i1.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i2 (.D(n105[2]), .CK(din_clk_N_1128), .Q(count_bytes[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i2.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i3 (.D(n105[3]), .CK(din_clk_N_1128), .Q(count_bytes[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i3.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i4 (.D(n105[4]), .CK(din_clk_N_1128), .Q(count_bytes[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i4.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i5 (.D(n105[5]), .CK(din_clk_N_1128), .Q(count_bytes[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i5.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i6 (.D(n105[6]), .CK(din_clk_N_1128), .Q(count_bytes[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i6.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i7 (.D(n105[7]), .CK(din_clk_N_1128), .Q(count_bytes[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i7.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i8 (.D(n105[8]), .CK(din_clk_N_1128), .Q(count_bytes[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i8.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i9 (.D(n105[9]), .CK(din_clk_N_1128), .Q(count_bytes[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i9.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i10 (.D(n105[10]), .CK(din_clk_N_1128), .Q(count_bytes[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i10.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i11 (.D(n105[11]), .CK(din_clk_N_1128), .Q(count_bytes[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i11.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i12 (.D(n105[12]), .CK(din_clk_N_1128), .Q(count_bytes[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i12.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i13 (.D(n105[13]), .CK(din_clk_N_1128), .Q(count_bytes[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i13.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i14 (.D(n105[14]), .CK(din_clk_N_1128), .Q(count_bytes[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i14.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i15 (.D(n105[15]), .CK(din_clk_N_1128), .Q(count_bytes[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i15.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i16 (.D(n105[16]), .CK(din_clk_N_1128), .Q(count_bytes[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i16.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i17 (.D(n105[17]), .CK(din_clk_N_1128), .Q(count_bytes[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i17.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i18 (.D(n105[18]), .CK(din_clk_N_1128), .Q(count_bytes[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i18.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i19 (.D(n105[19]), .CK(din_clk_N_1128), .Q(count_bytes[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i19.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i20 (.D(n105[20]), .CK(din_clk_N_1128), .Q(count_bytes[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i20.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i21 (.D(n105[21]), .CK(din_clk_N_1128), .Q(count_bytes[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i21.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i22 (.D(n105[22]), .CK(din_clk_N_1128), .Q(count_bytes[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i22.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i23 (.D(n105[23]), .CK(din_clk_N_1128), .Q(count_bytes[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i23.GSR = "ENABLED";
    FD1S3AX count_bytes_405__i24 (.D(n105[24]), .CK(din_clk_N_1128), .Q(count_bytes[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405__i24.GSR = "ENABLED";
    CCU2D count_bytes_405_add_4_25 (.A0(count_bytes[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5287), .S0(n105[23]), .S1(n105[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_25.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_25.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_25.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_25.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_23 (.A0(count_bytes[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5286), .COUT(n5287), .S0(n105[21]), 
          .S1(n105[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_23.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_23.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_23.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_23.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_21 (.A0(count_bytes[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5285), .COUT(n5286), .S0(n105[19]), 
          .S1(n105[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_21.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_21.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_21.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_21.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_19 (.A0(count_bytes[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5284), .COUT(n5285), .S0(n105[17]), 
          .S1(n105[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_19.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_19.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_19.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_19.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_17 (.A0(count_bytes[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5283), .COUT(n5284), .S0(n105[15]), 
          .S1(n105[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_17.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_17.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_17.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_17.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_15 (.A0(count_bytes[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5282), .COUT(n5283), .S0(n105[13]), 
          .S1(n105[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_15.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_15.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_15.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_15.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_13 (.A0(count_bytes[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(count_bytes[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5281), .COUT(n5282), .S0(n105[11]), 
          .S1(n105[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_13.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_13.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_13.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_13.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_11 (.A0(count_bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5280), .COUT(n5281), .S0(n105[9]), .S1(n105[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_11.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_11.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_11.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_11.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_9 (.A0(count_bytes[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5279), .COUT(n5280), .S0(n105[7]), .S1(n105[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_9.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_9.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_9.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_9.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_7 (.A0(count_bytes[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5278), .COUT(n5279), .S0(n105[5]), .S1(n105[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_7.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_7.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_7.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_7.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_5 (.A0(count_bytes[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5277), .COUT(n5278), .S0(n105[3]), .S1(n105[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_5.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_5.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_5.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_5.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_3 (.A0(count_bytes[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5276), .COUT(n5277), .S0(n105[1]), .S1(n105[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_3.INIT0 = 16'hfaaa;
    defparam count_bytes_405_add_4_3.INIT1 = 16'hfaaa;
    defparam count_bytes_405_add_4_3.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_3.INJECT1_1 = "NO";
    CCU2D count_bytes_405_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5276), .S1(n105[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam count_bytes_405_add_4_1.INIT0 = 16'hF000;
    defparam count_bytes_405_add_4_1.INIT1 = 16'h0555;
    defparam count_bytes_405_add_4_1.INJECT1_0 = "NO";
    defparam count_bytes_405_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module ft601
//

module ft601 (FT601_CLK_c, FT601_OE_N_c, FT601_RD_N_c, i_dat_i_buf, 
            \gen_data[1] , \gen_data[0] , \gen_data[6] , \gen_data[2] , 
            \gen_data[3] , \gen_data[4] , \gen_data[5] , \gen_data[7] , 
            FT601_RXF_N_c, FT601_WR_N_c, n1681, FT601_TXE_N_c, GND_net);
    input FT601_CLK_c;
    output FT601_OE_N_c;
    output FT601_RD_N_c;
    output [31:0]i_dat_i_buf;
    input \gen_data[1] ;
    input \gen_data[0] ;
    input \gen_data[6] ;
    input \gen_data[2] ;
    input \gen_data[3] ;
    input \gen_data[4] ;
    input \gen_data[5] ;
    input \gen_data[7] ;
    input FT601_RXF_N_c;
    output FT601_WR_N_c;
    output n1681;
    input FT601_TXE_N_c;
    input GND_net;
    
    wire FT601_CLK_c /* synthesis is_clock=1, SET_AS_NETWORK=FT601_CLK_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/top.vhd(43[9:18])
    wire [2:0]i_pre_valid;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(78[12:23])
    
    wire FT601_CLK_c_enable_238;
    wire [2:0]n3;
    
    wire ft601_oe_N_596, ft601_rxf_n_N_615, ft601_txe, ft601_txe_n_N_613, 
        ft601_oe_N_587, ft601_rd_N_571, i_byte_en, FT601_CLK_c_enable_200, 
        n5319, i_dat_rdy, n6181, n3561, FT601_CLK_c_enable_241, n3604;
    wire [95:0]i_pre_data;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(80[12:22])
    
    wire n5405;
    wire [2:0]i_tx_state;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    
    wire n1540;
    wire [95:0]n934;
    
    wire n6196, n6170;
    wire [95:0]i_data;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(79[12:18])
    
    wire FT601_CLK_c_enable_120;
    wire [2:0]i_valid;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(77[12:19])
    wire [2:0]n695;
    
    wire n475;
    wire [2:0]i_state;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(64[12:19])
    
    wire FT601_CLK_c_enable_187;
    wire [2:0]n1324;
    
    wire FT601_CLK_c_enable_191, n3991, n3899, n103, FT601_CLK_c_enable_192, 
        n6197;
    wire [95:0]n1117;
    
    wire n5301, n3924, n11, FT601_CLK_c_enable_201, n3917;
    wire [2:0]n2;
    wire [95:0]i_data_95__N_360;
    
    wire n480, n644, n3525, n643, n3928, n642, n481, n479, n478, 
        n477, n476, n641, n175, n6162, n6145, n6146, n10, n640, 
        n639, n7, n5709, n5587;
    wire [2:0]i_valid_2__N_322;
    
    wire n3943, n5298, FT601_CLK_c_enable_184, n126, i_rd_en, n638, 
        n5864, n6195, n3973, i_wr_en, FT601_CLK_c_enable_152, n3595, 
        n645, n6188, n6193, n6194, n5742, n6174, FT601_CLK_c_enable_236, 
        FT601_CLK_c_enable_194, n6157, n6142, n6147, n6, n6141, 
        ft601_rd, ft601_oe, n1, FT601_CLK_c_enable_235, FT601_CLK_c_enable_237, 
        n6187;
    
    FD1P3AX i_pre_valid_i0_i0 (.D(n3[0]), .SP(FT601_CLK_c_enable_238), .CK(FT601_CLK_c), 
            .Q(i_pre_valid[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i0.GSR = "ENABLED";
    FD1S3AX ft601_rxf_664 (.D(ft601_rxf_n_N_615), .CK(FT601_CLK_c), .Q(ft601_oe_N_596)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam ft601_rxf_664.GSR = "ENABLED";
    FD1S3AX ft601_txe_665 (.D(ft601_txe_n_N_613), .CK(FT601_CLK_c), .Q(ft601_txe)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam ft601_txe_665.GSR = "ENABLED";
    FD1S3AX ft601_oe_n_666 (.D(ft601_oe_N_587), .CK(FT601_CLK_c), .Q(FT601_OE_N_c)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam ft601_oe_n_666.GSR = "ENABLED";
    FD1S3AX ft601_rd_n_667 (.D(ft601_rd_N_571), .CK(FT601_CLK_c), .Q(FT601_RD_N_c)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam ft601_rd_n_667.GSR = "ENABLED";
    FD1P3AX i_byte_en_668 (.D(n5319), .SP(FT601_CLK_c_enable_200), .CK(FT601_CLK_c), 
            .Q(i_byte_en)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i_byte_en_668.GSR = "ENABLED";
    FD1S3JX i_dat_rdy_676 (.D(n3561), .CK(FT601_CLK_c), .PD(n6181), .Q(i_dat_rdy));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_rdy_676.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i9 (.D(i_pre_data[9]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i9.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i0 (.D(n5405), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i0.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i10 (.D(i_pre_data[10]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(i_tx_state[1]), .B(i_pre_valid[0]), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n1540)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h5004;
    FD1P3AX i_pre_data_i0_i0 (.D(n934[0]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_122_3_lut_4_lut (.A(i_tx_state[2]), .B(n6196), .C(i_tx_state[1]), 
         .D(i_tx_state[0]), .Z(n6170)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_122_3_lut_4_lut.init = 16'h0004;
    FD1P3AX i_data_i0 (.D(i_data[32]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i0.GSR = "ENABLED";
    LUT4 i3339_2_lut (.A(i_pre_valid[0]), .B(i_valid[2]), .Z(n695[1])) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(220[21] 224[28])
    defparam i3339_2_lut.init = 16'h8888;
    FD1P3IX i_dat_i_buf_i0_i13 (.D(i_pre_data[13]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i13.GSR = "ENABLED";
    LUT4 mux_250_i2_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[1]), 
         .D(\gen_data[1] ), .Z(n475)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i2_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX i_state_i0_i0 (.D(n1324[0]), .SP(FT601_CLK_c_enable_187), .CK(FT601_CLK_c), 
            .Q(i_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i0.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i11 (.D(i_pre_data[11]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i11.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(i_tx_state[2]), .B(n6196), .C(i_tx_state[0]), 
         .D(i_tx_state[1]), .Z(FT601_CLK_c_enable_191)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (D)+!B ((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_4_lut.init = 16'h00f4;
    LUT4 i1_4_lut (.A(n3991), .B(n3899), .C(n103), .D(i_state[0]), .Z(FT601_CLK_c_enable_192)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcee;
    FD1P3IX i_dat_i_buf_i0_i12 (.D(i_pre_data[12]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i12.GSR = "ENABLED";
    LUT4 mux_478_i68_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[3]), 
         .D(i_data[35]), .Z(n1117[67])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i68_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_adj_145 (.A(n5301), .B(\gen_data[0] ), .C(i_tx_state[1]), 
         .D(n3924), .Z(n11)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_145.init = 16'hcec4;
    FD1P3IX i_tx_state_i0_i1 (.D(n2[1]), .SP(FT601_CLK_c_enable_201), .CD(n3917), 
            .CK(FT601_CLK_c), .Q(i_tx_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i1.GSR = "ENABLED";
    LUT4 mux_479_i65_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[64]), 
         .D(i_pre_data[0]), .Z(i_data_95__N_360[64])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i65_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_478_i86_4_lut (.A(i_pre_data[21]), .B(i_data[53]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[85])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i86_4_lut.init = 16'hac0c;
    LUT4 mux_250_i7_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[6]), 
         .D(\gen_data[6] ), .Z(n480)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_478_i71_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[6]), 
         .D(i_data[38]), .Z(n1117[70])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i71_3_lut_4_lut.init = 16'hfe10;
    LUT4 i249_3_lut (.A(\gen_data[1] ), .B(i_pre_data[1]), .C(i_pre_valid[0]), 
         .Z(n644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i249_3_lut.init = 16'hcaca;
    LUT4 mux_478_i70_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[5]), 
         .D(i_data[37]), .Z(n1117[69])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i70_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4713_2_lut (.A(i_state[2]), .B(i_state[0]), .Z(n3525)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4713_2_lut.init = 16'h1111;
    LUT4 mux_478_i87_4_lut (.A(i_pre_data[22]), .B(i_data[54]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[86])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i87_4_lut.init = 16'hac0c;
    LUT4 mux_478_i66_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[1]), 
         .D(i_data[33]), .Z(n1117[65])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i66_3_lut_4_lut.init = 16'hfe10;
    LUT4 mux_479_i73_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[72]), 
         .D(i_pre_data[8]), .Z(i_data_95__N_360[72])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i73_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i248_3_lut (.A(\gen_data[2] ), .B(i_pre_data[2]), .C(i_pre_valid[0]), 
         .Z(n643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i248_3_lut.init = 16'hcaca;
    LUT4 mux_478_i72_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[7]), 
         .D(i_data[39]), .Z(n1117[71])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i72_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_adj_146 (.A(i_state[0]), .B(ft601_oe_N_596), .C(i_state[2]), 
         .D(i_state[1]), .Z(n3899)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i1_4_lut_adj_146.init = 16'h0010;
    LUT4 mux_478_i94_4_lut (.A(i_pre_data[29]), .B(i_data[61]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[93])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i94_4_lut.init = 16'hac0c;
    LUT4 mux_478_i69_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[4]), 
         .D(i_data[36]), .Z(n1117[68])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i69_3_lut_4_lut.init = 16'hfe10;
    LUT4 i2747_1_lut (.A(i_tx_state[0]), .Z(n3928)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i2747_1_lut.init = 16'h5555;
    LUT4 mux_478_i67_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(i_pre_data[2]), 
         .D(i_data[34]), .Z(n1117[66])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i67_3_lut_4_lut.init = 16'hfe10;
    LUT4 i247_3_lut (.A(\gen_data[3] ), .B(i_pre_data[3]), .C(i_pre_valid[0]), 
         .Z(n642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i247_3_lut.init = 16'hcaca;
    LUT4 mux_479_i74_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[73]), 
         .D(i_pre_data[9]), .Z(i_data_95__N_360[73])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i74_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i75_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[74]), 
         .D(i_pre_data[10]), .Z(i_data_95__N_360[74])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i75_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i76_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[75]), 
         .D(i_pre_data[11]), .Z(i_data_95__N_360[75])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i76_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i77_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[76]), 
         .D(i_pre_data[12]), .Z(i_data_95__N_360[76])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i77_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut (.A(i_tx_state[2]), .B(ft601_txe), .C(i_tx_state[0]), 
         .Z(n5301)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    defparam i2_3_lut.init = 16'h0404;
    LUT4 mux_479_i78_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[77]), 
         .D(i_pre_data[13]), .Z(i_data_95__N_360[77])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i78_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i79_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[78]), 
         .D(i_pre_data[14]), .Z(i_data_95__N_360[78])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i79_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i80_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[79]), 
         .D(i_pre_data[15]), .Z(i_data_95__N_360[79])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i80_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_478_i95_4_lut (.A(i_pre_data[30]), .B(i_data[62]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[94])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i95_4_lut.init = 16'hac0c;
    FD1P3AX i_dat_i_buf_i0_i7 (.D(n481), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i7.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i6 (.D(n480), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i6.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i5 (.D(n479), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i5.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i4 (.D(n478), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i4.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i3 (.D(n477), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i3.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i2 (.D(n476), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i2.GSR = "ENABLED";
    FD1P3AX i_dat_i_buf_i0_i1 (.D(n475), .SP(FT601_CLK_c_enable_241), .CK(FT601_CLK_c), 
            .Q(i_dat_i_buf[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i1.GSR = "ENABLED";
    LUT4 mux_479_i81_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[80]), 
         .D(i_pre_data[16]), .Z(i_data_95__N_360[80])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i81_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i82_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[81]), 
         .D(i_pre_data[17]), .Z(i_data_95__N_360[81])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i82_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i246_3_lut (.A(\gen_data[4] ), .B(i_pre_data[4]), .C(i_pre_valid[0]), 
         .Z(n641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i246_3_lut.init = 16'hcaca;
    LUT4 mux_479_i83_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[82]), 
         .D(i_pre_data[18]), .Z(i_data_95__N_360[82])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i83_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i84_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[83]), 
         .D(i_pre_data[19]), .Z(i_data_95__N_360[83])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i84_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_478_i96_4_lut (.A(i_pre_data[31]), .B(i_data[63]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[95])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i96_4_lut.init = 16'hac0c;
    LUT4 n175_bdd_4_lut (.A(n175), .B(i_pre_valid[2]), .C(n695[1]), .D(i_tx_state[1]), 
         .Z(n6162)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n175_bdd_4_lut.init = 16'hf088;
    LUT4 mux_250_i6_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[5]), 
         .D(\gen_data[5] ), .Z(n479)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_250_i8_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[7]), 
         .D(\gen_data[7] ), .Z(n481)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i_state_0__bdd_2_lut_4814 (.A(i_state[2]), .B(i_dat_rdy), .Z(n6145)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i_state_0__bdd_2_lut_4814.init = 16'h7777;
    LUT4 i_state_0__bdd_4_lut_4815 (.A(ft601_oe_N_596), .B(i_state[2]), 
         .C(i_dat_rdy), .D(ft601_txe), .Z(n6146)) /* synthesis lut_function=(!(A (B)+!A !(B+(C (D))))) */ ;
    defparam i_state_0__bdd_4_lut_4815.init = 16'h7666;
    LUT4 mux_479_i85_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[84]), 
         .D(i_pre_data[20]), .Z(i_data_95__N_360[84])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i85_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i86_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[85]), 
         .D(i_pre_data[21]), .Z(i_data_95__N_360[85])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i86_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut (.A(i_valid[1]), .B(ft601_txe), .C(i_tx_state[0]), .Z(n10)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(77[12:19])
    defparam i1_3_lut.init = 16'h2a2a;
    LUT4 mux_479_i87_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[86]), 
         .D(i_pre_data[22]), .Z(i_data_95__N_360[86])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i87_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i88_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[87]), 
         .D(i_pre_data[23]), .Z(i_data_95__N_360[87])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i88_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i245_3_lut (.A(\gen_data[5] ), .B(i_pre_data[5]), .C(i_pre_valid[0]), 
         .Z(n640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i245_3_lut.init = 16'hcaca;
    LUT4 mux_479_i89_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[88]), 
         .D(i_pre_data[24]), .Z(i_data_95__N_360[88])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i89_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i244_3_lut (.A(\gen_data[6] ), .B(i_pre_data[6]), .C(i_pre_valid[0]), 
         .Z(n639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i244_3_lut.init = 16'hcaca;
    LUT4 i20_3_lut (.A(i_pre_valid[0]), .B(n7), .C(i_tx_state[1]), .Z(n5709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam i20_3_lut.init = 16'hcaca;
    LUT4 mux_479_i90_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[89]), 
         .D(i_pre_data[25]), .Z(i_data_95__N_360[89])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i90_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i21_4_lut (.A(i_valid[2]), .B(i_valid[1]), .C(i_tx_state[0]), 
         .D(ft601_txe), .Z(n7)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam i21_4_lut.init = 16'hc0ca;
    LUT4 mux_479_i91_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[90]), 
         .D(i_pre_data[26]), .Z(i_data_95__N_360[90])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i91_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i92_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[91]), 
         .D(i_pre_data[27]), .Z(i_data_95__N_360[91])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i92_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_478_i88_4_lut (.A(i_pre_data[23]), .B(i_data[55]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[87])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i88_4_lut.init = 16'hac0c;
    LUT4 mux_478_i79_4_lut (.A(i_pre_data[14]), .B(i_data[46]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[78])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i79_4_lut.init = 16'hac0c;
    LUT4 i2770_4_lut (.A(n5587), .B(i_tx_state[2]), .C(i_tx_state[1]), 
         .D(i_valid[0]), .Z(i_valid_2__N_322[1])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    defparam i2770_4_lut.init = 16'h3a0a;
    LUT4 mux_479_i93_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[92]), 
         .D(i_pre_data[28]), .Z(i_data_95__N_360[92])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i93_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i94_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[93]), 
         .D(i_pre_data[29]), .Z(i_data_95__N_360[93])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i94_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut (.A(ft601_txe), .B(i_valid[1]), .Z(n3943)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 mux_250_i5_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[4]), 
         .D(\gen_data[4] ), .Z(n478)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_479_i95_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[94]), 
         .D(i_pre_data[30]), .Z(i_data_95__N_360[94])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i95_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i2_4_lut (.A(i_pre_data[33]), .B(i_data[65]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i2_4_lut.init = 16'hca0a;
    LUT4 mux_191_i3_4_lut (.A(i_pre_data[34]), .B(i_data[66]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i3_4_lut.init = 16'hca0a;
    LUT4 mux_191_i4_4_lut (.A(i_pre_data[35]), .B(i_data[67]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i4_4_lut.init = 16'hca0a;
    LUT4 mux_191_i5_4_lut (.A(i_pre_data[36]), .B(i_data[68]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i5_4_lut.init = 16'hca0a;
    FD1P3AX i_pre_valid_i0_i1 (.D(n6162), .SP(FT601_CLK_c_enable_238), .CK(FT601_CLK_c), 
            .Q(i_pre_valid[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_adj_147 (.A(i_valid[2]), .B(i_pre_valid[1]), .C(i_tx_state[1]), 
         .Z(n5298)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i2_3_lut_adj_147.init = 16'h8080;
    LUT4 mux_191_i6_4_lut (.A(i_pre_data[37]), .B(i_data[69]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i6_4_lut.init = 16'hca0a;
    LUT4 mux_191_i7_4_lut (.A(i_pre_data[38]), .B(i_data[70]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i7_4_lut.init = 16'hca0a;
    LUT4 mux_191_i8_4_lut (.A(i_pre_data[39]), .B(i_data[71]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i8_4_lut.init = 16'hca0a;
    LUT4 mux_479_i96_3_lut_4_lut (.A(i_tx_state[1]), .B(n6197), .C(n1117[95]), 
         .D(i_pre_data[31]), .Z(i_data_95__N_360[95])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_479_i96_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i9_4_lut (.A(i_pre_data[40]), .B(i_data[72]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i9_4_lut.init = 16'hca0a;
    LUT4 mux_191_i10_4_lut (.A(i_pre_data[41]), .B(i_data[73]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i10_4_lut.init = 16'hca0a;
    LUT4 mux_191_i11_4_lut (.A(i_pre_data[42]), .B(i_data[74]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i11_4_lut.init = 16'hca0a;
    LUT4 mux_191_i12_4_lut (.A(i_pre_data[43]), .B(i_data[75]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i12_4_lut.init = 16'hca0a;
    LUT4 mux_191_i13_4_lut (.A(i_pre_data[44]), .B(i_data[76]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i13_4_lut.init = 16'hca0a;
    LUT4 mux_191_i14_4_lut (.A(i_pre_data[45]), .B(i_data[77]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i14_4_lut.init = 16'hca0a;
    FD1P3IX i_dat_i_buf_i0_i14 (.D(i_pre_data[14]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i14.GSR = "ENABLED";
    LUT4 mux_191_i15_4_lut (.A(i_pre_data[46]), .B(i_data[78]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i15_4_lut.init = 16'hca0a;
    LUT4 mux_191_i16_4_lut (.A(i_pre_data[47]), .B(i_data[79]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[15])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i16_4_lut.init = 16'hca0a;
    LUT4 mux_191_i17_4_lut (.A(i_pre_data[48]), .B(i_data[80]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[16])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i17_4_lut.init = 16'hca0a;
    LUT4 i_tx_state_1__bdd_4_lut (.A(i_tx_state[1]), .B(n6196), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(FT601_CLK_c_enable_241)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam i_tx_state_1__bdd_4_lut.init = 16'h5004;
    LUT4 mux_191_i18_4_lut (.A(i_pre_data[49]), .B(i_data[81]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[17])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i18_4_lut.init = 16'hca0a;
    LUT4 i_tx_state_0__bdd_4_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .D(n6196), .Z(FT601_CLK_c_enable_184)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+(C+!(D))))) */ ;
    defparam i_tx_state_0__bdd_4_lut.init = 16'h2928;
    LUT4 mux_191_i19_4_lut (.A(i_pre_data[50]), .B(i_data[82]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[18])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i19_4_lut.init = 16'hca0a;
    LUT4 mux_191_i20_4_lut (.A(i_pre_data[51]), .B(i_data[83]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[19])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i20_4_lut.init = 16'hca0a;
    LUT4 mux_191_i21_4_lut (.A(i_pre_data[52]), .B(i_data[84]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[20])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i21_4_lut.init = 16'hca0a;
    LUT4 mux_191_i22_4_lut (.A(i_pre_data[53]), .B(i_data[85]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[21])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i22_4_lut.init = 16'hca0a;
    LUT4 mux_250_i4_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[3]), 
         .D(\gen_data[3] ), .Z(n477)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i23_4_lut (.A(i_pre_data[54]), .B(i_data[86]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[22])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i23_4_lut.init = 16'hca0a;
    LUT4 mux_191_i24_4_lut (.A(i_pre_data[55]), .B(i_data[87]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[23])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i24_4_lut.init = 16'hca0a;
    LUT4 mux_250_i3_3_lut_4_lut (.A(i_pre_valid[0]), .B(n6170), .C(i_pre_data[2]), 
         .D(\gen_data[2] ), .Z(n476)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_250_i3_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX i_tx_state_i0_i2 (.D(n126), .SP(FT601_CLK_c_enable_201), .CK(FT601_CLK_c), 
            .Q(i_tx_state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i2.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i15 (.D(i_pre_data[15]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i15.GSR = "ENABLED";
    LUT4 mux_191_i25_4_lut (.A(i_pre_data[56]), .B(i_data[88]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[24])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i25_4_lut.init = 16'hca0a;
    LUT4 i11_3_lut (.A(\gen_data[0] ), .B(i_pre_data[0]), .C(i_rd_en), 
         .Z(n3924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(80[12:22])
    defparam i11_3_lut.init = 16'hcaca;
    FD1P3IX i_dat_i_buf_i0_i16 (.D(i_pre_data[16]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i16.GSR = "ENABLED";
    LUT4 mux_191_i26_4_lut (.A(i_pre_data[57]), .B(i_data[89]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[25])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i26_4_lut.init = 16'hca0a;
    LUT4 mux_191_i27_4_lut (.A(i_pre_data[58]), .B(i_data[90]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[26])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i27_4_lut.init = 16'hca0a;
    LUT4 mux_191_i28_4_lut (.A(i_pre_data[59]), .B(i_data[91]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[27])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i28_4_lut.init = 16'hca0a;
    LUT4 mux_191_i29_4_lut (.A(i_pre_data[60]), .B(i_data[92]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[28])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i29_4_lut.init = 16'hca0a;
    LUT4 mux_191_i30_4_lut (.A(i_pre_data[61]), .B(i_data[93]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[29])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i30_4_lut.init = 16'hca0a;
    LUT4 mux_191_i31_4_lut (.A(i_pre_data[62]), .B(i_data[94]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[30])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i31_4_lut.init = 16'hca0a;
    LUT4 mux_191_i32_4_lut (.A(i_pre_data[63]), .B(i_data[95]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[31])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i32_4_lut.init = 16'hca0a;
    LUT4 mux_191_i33_4_lut (.A(i_pre_data[64]), .B(i_valid[2]), .C(i_tx_state[1]), 
         .D(i_pre_data[0]), .Z(n934[32])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i33_4_lut.init = 16'hca0a;
    LUT4 mux_191_i34_4_lut (.A(i_pre_data[65]), .B(i_pre_data[1]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[33])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i34_4_lut.init = 16'hca0a;
    LUT4 mux_478_i89_4_lut (.A(i_pre_data[24]), .B(i_data[56]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[88])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i89_4_lut.init = 16'hac0c;
    LUT4 mux_191_i35_4_lut (.A(i_pre_data[66]), .B(i_pre_data[2]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[34])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i35_4_lut.init = 16'hca0a;
    LUT4 mux_191_i36_4_lut (.A(i_pre_data[67]), .B(i_pre_data[3]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[35])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i36_4_lut.init = 16'hca0a;
    LUT4 mux_191_i37_4_lut (.A(i_pre_data[68]), .B(i_pre_data[4]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[36])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i37_4_lut.init = 16'hca0a;
    LUT4 mux_191_i38_4_lut (.A(i_pre_data[69]), .B(i_pre_data[5]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[37])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i38_4_lut.init = 16'hca0a;
    LUT4 mux_191_i39_4_lut (.A(i_pre_data[70]), .B(i_pre_data[6]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[38])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i39_4_lut.init = 16'hca0a;
    LUT4 mux_478_i90_4_lut (.A(i_pre_data[25]), .B(i_data[57]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[89])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i90_4_lut.init = 16'hac0c;
    LUT4 mux_191_i40_4_lut (.A(i_pre_data[71]), .B(i_pre_data[7]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[39])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i40_4_lut.init = 16'hca0a;
    LUT4 i243_3_lut (.A(\gen_data[7] ), .B(i_pre_data[7]), .C(i_pre_valid[0]), 
         .Z(n638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(185[21] 195[28])
    defparam i243_3_lut.init = 16'hcaca;
    LUT4 mux_191_i41_4_lut (.A(i_pre_data[72]), .B(i_pre_data[8]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[40])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i41_4_lut.init = 16'hca0a;
    LUT4 mux_191_i42_4_lut (.A(i_pre_data[73]), .B(i_pre_data[9]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[41])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i42_4_lut.init = 16'hca0a;
    LUT4 mux_191_i43_4_lut (.A(i_pre_data[74]), .B(i_pre_data[10]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[42])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i43_4_lut.init = 16'hca0a;
    LUT4 mux_191_i44_4_lut (.A(i_pre_data[75]), .B(i_pre_data[11]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[43])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i44_4_lut.init = 16'hca0a;
    LUT4 mux_191_i45_4_lut (.A(i_pre_data[76]), .B(i_pre_data[12]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[44])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i45_4_lut.init = 16'hca0a;
    LUT4 mux_191_i46_4_lut (.A(i_pre_data[77]), .B(i_pre_data[13]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[45])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i46_4_lut.init = 16'hca0a;
    LUT4 mux_191_i47_4_lut (.A(i_pre_data[78]), .B(i_pre_data[14]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[46])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i47_4_lut.init = 16'hca0a;
    LUT4 mux_191_i48_4_lut (.A(i_pre_data[79]), .B(i_pre_data[15]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[47])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i48_4_lut.init = 16'hca0a;
    LUT4 mux_191_i49_4_lut (.A(i_pre_data[80]), .B(i_pre_data[16]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[48])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i49_4_lut.init = 16'hca0a;
    LUT4 i2805_4_lut (.A(n175), .B(i_valid[2]), .C(i_tx_state[1]), .D(i_pre_valid[1]), 
         .Z(n3[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    defparam i2805_4_lut.init = 16'hcac0;
    LUT4 mux_191_i50_4_lut (.A(i_pre_data[81]), .B(i_pre_data[17]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[49])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i50_4_lut.init = 16'hca0a;
    LUT4 mux_191_i51_4_lut (.A(i_pre_data[82]), .B(i_pre_data[18]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[50])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i51_4_lut.init = 16'hca0a;
    LUT4 mux_191_i52_4_lut (.A(i_pre_data[83]), .B(i_pre_data[19]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[51])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i52_4_lut.init = 16'hca0a;
    LUT4 mux_191_i53_4_lut (.A(i_pre_data[84]), .B(i_pre_data[20]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[52])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i53_4_lut.init = 16'hca0a;
    LUT4 mux_191_i54_4_lut (.A(i_pre_data[85]), .B(i_pre_data[21]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[53])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i54_4_lut.init = 16'hca0a;
    LUT4 mux_191_i55_4_lut (.A(i_pre_data[86]), .B(i_pre_data[22]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[54])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i55_4_lut.init = 16'hca0a;
    LUT4 mux_191_i56_4_lut (.A(i_pre_data[87]), .B(i_pre_data[23]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[55])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i56_4_lut.init = 16'hca0a;
    PFUMX mux_479_i72 (.BLUT(n638), .ALUT(n1117[71]), .C0(n5864), .Z(i_data_95__N_360[71])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 mux_191_i57_4_lut (.A(i_pre_data[88]), .B(i_pre_data[24]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[56])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i57_4_lut.init = 16'hca0a;
    LUT4 mux_191_i58_4_lut (.A(i_pre_data[89]), .B(i_pre_data[25]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[57])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i58_4_lut.init = 16'hca0a;
    LUT4 mux_191_i59_4_lut (.A(i_pre_data[90]), .B(i_pre_data[26]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[58])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i59_4_lut.init = 16'hca0a;
    LUT4 mux_191_i60_4_lut (.A(i_pre_data[91]), .B(i_pre_data[27]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[59])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i60_4_lut.init = 16'hca0a;
    LUT4 mux_191_i61_4_lut (.A(i_pre_data[92]), .B(i_pre_data[28]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[60])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i61_4_lut.init = 16'hca0a;
    LUT4 mux_191_i62_4_lut (.A(i_pre_data[93]), .B(i_pre_data[29]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[61])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i62_4_lut.init = 16'hca0a;
    LUT4 mux_191_i63_4_lut (.A(i_pre_data[94]), .B(i_pre_data[30]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[62])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i63_4_lut.init = 16'hca0a;
    LUT4 mux_191_i64_4_lut (.A(i_pre_data[95]), .B(i_pre_data[31]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[63])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i64_4_lut.init = 16'hca0a;
    LUT4 i2812_4_lut (.A(i_state[2]), .B(i_state[1]), .C(i_state[0]), 
         .D(n3991), .Z(n1324[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(64[12:19])
    defparam i2812_4_lut.init = 16'hc5c0;
    LUT4 mux_191_i1_4_lut (.A(i_pre_data[32]), .B(i_data[64]), .C(i_tx_state[1]), 
         .D(i_valid[2]), .Z(n934[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_191_i1_4_lut.init = 16'hca0a;
    LUT4 mux_478_i42_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[9]), 
         .D(i_data[73]), .Z(n1117[41])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i42_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i41_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[8]), 
         .D(i_data[72]), .Z(n1117[40])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i41_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i40_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[7]), 
         .D(i_data[71]), .Z(n1117[39])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i40_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i39_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[6]), 
         .D(i_data[70]), .Z(n1117[38])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i39_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i38_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[5]), 
         .D(i_data[69]), .Z(n1117[37])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i38_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i37_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[4]), 
         .D(i_data[68]), .Z(n1117[36])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i37_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX i_dat_i_buf_i0_i17 (.D(i_pre_data[17]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i17.GSR = "ENABLED";
    LUT4 mux_478_i36_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[3]), 
         .D(i_data[67]), .Z(n1117[35])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i36_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i35_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[2]), 
         .D(i_data[66]), .Z(n1117[34])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i35_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i34_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[1]), 
         .D(i_data[65]), .Z(n1117[33])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i34_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut_adj_148 (.A(i_state[0]), .B(i_state[2]), .C(i_state[1]), 
         .D(n3973), .Z(n1324[0])) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_148.init = 16'h5150;
    LUT4 i2368_2_lut (.A(i_tx_state[0]), .B(i_tx_state[1]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam i2368_2_lut.init = 16'h6666;
    LUT4 ft601_rxf_n_I_0_1_lut (.A(FT601_RXF_N_c), .Z(ft601_rxf_n_N_615)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(89[26:41])
    defparam ft601_rxf_n_I_0_1_lut.init = 16'h5555;
    LUT4 mux_478_i33_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[0]), 
         .D(i_data[64]), .Z(n1117[32])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i33_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i_wr_en_I_0_1_lut (.A(i_wr_en), .Z(FT601_WR_N_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(236[19:30])
    defparam i_wr_en_I_0_1_lut.init = 16'h5555;
    LUT4 i499_1_lut (.A(i_byte_en), .Z(n1681)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(230[5:15])
    defparam i499_1_lut.init = 16'h5555;
    LUT4 mux_478_i43_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[10]), 
         .D(i_data[74]), .Z(n1117[42])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i43_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i44_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[11]), 
         .D(i_data[75]), .Z(n1117[43])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i44_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i45_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[12]), 
         .D(i_data[76]), .Z(n1117[44])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i45_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i46_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[13]), 
         .D(i_data[77]), .Z(n1117[45])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i46_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i47_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[14]), 
         .D(i_data[78]), .Z(n1117[46])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i47_3_lut_4_lut.init = 16'hf4b0;
    FD1P3IX i_valid_i0 (.D(n3943), .SP(FT601_CLK_c_enable_152), .CD(n3595), 
            .CK(FT601_CLK_c), .Q(i_valid[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_valid_i0.GSR = "ENABLED";
    LUT4 mux_478_i48_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[15]), 
         .D(i_data[79]), .Z(n1117[47])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i48_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i49_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[16]), 
         .D(i_data[80]), .Z(n1117[48])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i49_3_lut_4_lut.init = 16'hf4b0;
    FD1P3AX i_pre_data_i0_i1 (.D(n934[1]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i1.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i2 (.D(n934[2]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i2.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i3 (.D(n934[3]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i3.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i4 (.D(n934[4]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i4.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i5 (.D(n934[5]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i5.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i6 (.D(n934[6]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i6.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i7 (.D(n934[7]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i7.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i8 (.D(n934[8]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i8.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i9 (.D(n934[9]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i9.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i10 (.D(n934[10]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i10.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i11 (.D(n934[11]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i11.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i12 (.D(n934[12]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i12.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i13 (.D(n934[13]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i13.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i14 (.D(n934[14]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i14.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i15 (.D(n934[15]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i15.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i16 (.D(n934[16]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i16.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i17 (.D(n934[17]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i17.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i18 (.D(n934[18]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i18.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i19 (.D(n934[19]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i19.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i20 (.D(n934[20]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[20])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i20.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i21 (.D(n934[21]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[21])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i21.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i22 (.D(n934[22]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[22])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i22.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i23 (.D(n934[23]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[23])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i23.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i24 (.D(n934[24]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[24])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i24.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i25 (.D(n934[25]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[25])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i25.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i26 (.D(n934[26]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[26])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i26.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i27 (.D(n934[27]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[27])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i27.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i28 (.D(n934[28]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[28])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i28.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i29 (.D(n934[29]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[29])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i29.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i30 (.D(n934[30]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[30])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i30.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i31 (.D(n934[31]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[31])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i31.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i32 (.D(n934[32]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[32])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i32.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i33 (.D(n934[33]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[33])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i33.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i34 (.D(n934[34]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[34])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i34.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i35 (.D(n934[35]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[35])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i35.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i36 (.D(n934[36]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[36])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i36.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i37 (.D(n934[37]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[37])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i37.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i38 (.D(n934[38]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[38])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i38.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i39 (.D(n934[39]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[39])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i39.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i40 (.D(n934[40]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[40])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i40.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i41 (.D(n934[41]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[41])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i41.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i42 (.D(n934[42]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[42])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i42.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i43 (.D(n934[43]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[43])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i43.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i44 (.D(n934[44]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[44])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i44.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i45 (.D(n934[45]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[45])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i45.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i46 (.D(n934[46]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[46])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i46.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i47 (.D(n934[47]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[47])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i47.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i48 (.D(n934[48]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[48])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i48.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i49 (.D(n934[49]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[49])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i49.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i50 (.D(n934[50]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[50])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i50.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i51 (.D(n934[51]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[51])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i51.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i52 (.D(n934[52]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[52])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i52.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i53 (.D(n934[53]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[53])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i53.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i54 (.D(n934[54]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[54])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i54.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i55 (.D(n934[55]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[55])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i55.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i56 (.D(n934[56]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[56])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i56.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i57 (.D(n934[57]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[57])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i57.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i58 (.D(n934[58]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[58])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i58.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i59 (.D(n934[59]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[59])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i59.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i60 (.D(n934[60]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[60])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i60.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i61 (.D(n934[61]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[61])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i61.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i62 (.D(n934[62]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[62])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i62.GSR = "ENABLED";
    FD1P3AX i_pre_data_i0_i63 (.D(n934[63]), .SP(FT601_CLK_c_enable_238), 
            .CK(FT601_CLK_c), .Q(i_pre_data[63])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i63.GSR = "ENABLED";
    LUT4 mux_478_i50_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[17]), 
         .D(i_data[81]), .Z(n1117[49])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i50_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i51_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[18]), 
         .D(i_data[82]), .Z(n1117[50])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i51_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i52_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[19]), 
         .D(i_data[83]), .Z(n1117[51])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i52_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i53_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[20]), 
         .D(i_data[84]), .Z(n1117[52])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i53_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i54_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[21]), 
         .D(i_data[85]), .Z(n1117[53])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i54_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i55_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[22]), 
         .D(i_data[86]), .Z(n1117[54])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i55_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i56_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[23]), 
         .D(i_data[87]), .Z(n1117[55])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i56_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i57_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[24]), 
         .D(i_data[88]), .Z(n1117[56])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i57_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i58_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[25]), 
         .D(i_data[89]), .Z(n1117[57])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i58_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i59_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[26]), 
         .D(i_data[90]), .Z(n1117[58])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i59_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i60_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[27]), 
         .D(i_data[91]), .Z(n1117[59])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i60_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i61_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[28]), 
         .D(i_data[92]), .Z(n1117[60])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i61_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i62_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[29]), 
         .D(i_data[93]), .Z(n1117[61])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i62_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i63_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[30]), 
         .D(i_data[94]), .Z(n1117[62])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i63_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i64_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[31]), 
         .D(i_data[95]), .Z(n1117[63])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i64_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_478_i65_3_lut_4_lut (.A(i_tx_state[1]), .B(n6195), .C(i_data[32]), 
         .D(n645), .Z(n1117[64])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam mux_478_i65_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_rep_140 (.A(i_state[1]), .B(i_state[0]), .C(i_state[2]), 
         .Z(n6188)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_140.init = 16'h0404;
    FD1P3AX i_data_i1 (.D(i_data[33]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i1.GSR = "ENABLED";
    FD1P3AX i_data_i2 (.D(i_data[34]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i2.GSR = "ENABLED";
    FD1P3AX i_data_i3 (.D(i_data[35]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i3.GSR = "ENABLED";
    FD1P3AX i_data_i4 (.D(i_data[36]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i4.GSR = "ENABLED";
    FD1P3AX i_data_i5 (.D(i_data[37]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i5.GSR = "ENABLED";
    FD1P3AX i_data_i6 (.D(i_data[38]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i6.GSR = "ENABLED";
    FD1P3AX i_data_i7 (.D(i_data[39]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i7.GSR = "ENABLED";
    FD1P3AX i_data_i8 (.D(i_data[40]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i8.GSR = "ENABLED";
    FD1P3AX i_data_i9 (.D(i_data[41]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[9])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i9.GSR = "ENABLED";
    FD1P3AX i_data_i10 (.D(i_data[42]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[10])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i10.GSR = "ENABLED";
    FD1P3AX i_data_i11 (.D(i_data[43]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[11])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i11.GSR = "ENABLED";
    FD1P3AX i_data_i12 (.D(i_data[44]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[12])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i12.GSR = "ENABLED";
    FD1P3AX i_data_i13 (.D(i_data[45]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[13])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i13.GSR = "ENABLED";
    FD1P3AX i_data_i14 (.D(i_data[46]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[14])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i14.GSR = "ENABLED";
    FD1P3AX i_data_i15 (.D(i_data[47]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[15])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i15.GSR = "ENABLED";
    FD1P3AX i_data_i16 (.D(i_data[48]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[16])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i16.GSR = "ENABLED";
    FD1P3AX i_data_i17 (.D(i_data[49]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[17])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i17.GSR = "ENABLED";
    FD1P3AX i_data_i18 (.D(i_data[50]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i18.GSR = "ENABLED";
    FD1P3AX i_data_i19 (.D(i_data[51]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i19.GSR = "ENABLED";
    FD1P3AX i_data_i20 (.D(i_data[52]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[20])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i20.GSR = "ENABLED";
    FD1P3AX i_data_i21 (.D(i_data[53]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[21])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i21.GSR = "ENABLED";
    FD1P3AX i_data_i22 (.D(i_data[54]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[22])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i22.GSR = "ENABLED";
    FD1P3AX i_data_i23 (.D(i_data[55]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[23])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i23.GSR = "ENABLED";
    FD1P3AX i_data_i24 (.D(i_data[56]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[24])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i24.GSR = "ENABLED";
    FD1P3AX i_data_i25 (.D(i_data[57]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[25])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i25.GSR = "ENABLED";
    FD1P3AX i_data_i26 (.D(i_data[58]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[26])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i26.GSR = "ENABLED";
    FD1P3AX i_data_i27 (.D(i_data[59]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[27])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i27.GSR = "ENABLED";
    FD1P3AX i_data_i28 (.D(i_data[60]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[28])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i28.GSR = "ENABLED";
    FD1P3AX i_data_i29 (.D(i_data[61]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[29])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i29.GSR = "ENABLED";
    FD1P3AX i_data_i30 (.D(i_data[62]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[30])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i30.GSR = "ENABLED";
    FD1P3AX i_data_i31 (.D(i_data[63]), .SP(FT601_CLK_c_enable_120), .CK(FT601_CLK_c), 
            .Q(i_data[31])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i31.GSR = "ENABLED";
    FD1P3AX i_data_i32 (.D(n1117[32]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[32])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i32.GSR = "ENABLED";
    FD1P3AX i_data_i33 (.D(n1117[33]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[33])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i33.GSR = "ENABLED";
    FD1P3AX i_data_i34 (.D(n1117[34]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[34])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i34.GSR = "ENABLED";
    FD1P3AX i_data_i35 (.D(n1117[35]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[35])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i35.GSR = "ENABLED";
    FD1P3AX i_data_i36 (.D(n1117[36]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[36])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i36.GSR = "ENABLED";
    FD1P3AX i_data_i37 (.D(n1117[37]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[37])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i37.GSR = "ENABLED";
    FD1P3AX i_data_i38 (.D(n1117[38]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[38])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i38.GSR = "ENABLED";
    FD1P3AX i_data_i39 (.D(n1117[39]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[39])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i39.GSR = "ENABLED";
    FD1P3AX i_data_i40 (.D(n1117[40]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[40])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i40.GSR = "ENABLED";
    FD1P3AX i_data_i41 (.D(n1117[41]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[41])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i41.GSR = "ENABLED";
    FD1P3AX i_data_i42 (.D(n1117[42]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[42])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i42.GSR = "ENABLED";
    FD1P3AX i_data_i43 (.D(n1117[43]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[43])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i43.GSR = "ENABLED";
    FD1P3AX i_data_i44 (.D(n1117[44]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[44])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i44.GSR = "ENABLED";
    FD1P3AX i_data_i45 (.D(n1117[45]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[45])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i45.GSR = "ENABLED";
    FD1P3AX i_data_i46 (.D(n1117[46]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[46])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i46.GSR = "ENABLED";
    FD1P3AX i_data_i47 (.D(n1117[47]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[47])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i47.GSR = "ENABLED";
    FD1P3AX i_data_i48 (.D(n1117[48]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[48])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i48.GSR = "ENABLED";
    FD1P3AX i_data_i49 (.D(n1117[49]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[49])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i49.GSR = "ENABLED";
    FD1P3AX i_data_i50 (.D(n1117[50]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[50])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i50.GSR = "ENABLED";
    FD1P3AX i_data_i51 (.D(n1117[51]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[51])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i51.GSR = "ENABLED";
    FD1P3AX i_data_i52 (.D(n1117[52]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[52])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i52.GSR = "ENABLED";
    FD1P3AX i_data_i53 (.D(n1117[53]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[53])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i53.GSR = "ENABLED";
    FD1P3AX i_data_i54 (.D(n1117[54]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[54])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i54.GSR = "ENABLED";
    FD1P3AX i_data_i55 (.D(n1117[55]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[55])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i55.GSR = "ENABLED";
    FD1P3AX i_data_i56 (.D(n1117[56]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[56])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i56.GSR = "ENABLED";
    FD1P3AX i_data_i57 (.D(n1117[57]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[57])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i57.GSR = "ENABLED";
    FD1P3AX i_data_i58 (.D(n1117[58]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[58])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i58.GSR = "ENABLED";
    FD1P3AX i_data_i59 (.D(n1117[59]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[59])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i59.GSR = "ENABLED";
    FD1P3AX i_data_i60 (.D(n1117[60]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[60])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i60.GSR = "ENABLED";
    FD1P3AX i_data_i61 (.D(n1117[61]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[61])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i61.GSR = "ENABLED";
    FD1P3AX i_data_i62 (.D(n1117[62]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[62])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i62.GSR = "ENABLED";
    FD1P3AX i_data_i63 (.D(n1117[63]), .SP(FT601_CLK_c_enable_152), .CK(FT601_CLK_c), 
            .Q(i_data[63])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i63.GSR = "ENABLED";
    FD1P3AX i_data_i64 (.D(i_data_95__N_360[64]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[64])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i64.GSR = "ENABLED";
    FD1P3AX i_data_i65 (.D(i_data_95__N_360[65]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[65])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i65.GSR = "ENABLED";
    FD1P3AX i_data_i66 (.D(i_data_95__N_360[66]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[66])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i66.GSR = "ENABLED";
    FD1P3AX i_data_i67 (.D(i_data_95__N_360[67]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[67])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i67.GSR = "ENABLED";
    FD1P3AX i_data_i68 (.D(i_data_95__N_360[68]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[68])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i68.GSR = "ENABLED";
    FD1P3AX i_data_i69 (.D(i_data_95__N_360[69]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[69])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i69.GSR = "ENABLED";
    FD1P3AX i_data_i70 (.D(i_data_95__N_360[70]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[70])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i70.GSR = "ENABLED";
    FD1P3AX i_data_i71 (.D(i_data_95__N_360[71]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[71])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i71.GSR = "ENABLED";
    FD1P3AX i_data_i72 (.D(i_data_95__N_360[72]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[72])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i72.GSR = "ENABLED";
    FD1P3AX i_data_i73 (.D(i_data_95__N_360[73]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[73])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i73.GSR = "ENABLED";
    FD1P3AX i_data_i74 (.D(i_data_95__N_360[74]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[74])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i74.GSR = "ENABLED";
    FD1P3AX i_data_i75 (.D(i_data_95__N_360[75]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[75])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i75.GSR = "ENABLED";
    FD1P3AX i_data_i76 (.D(i_data_95__N_360[76]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[76])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i76.GSR = "ENABLED";
    FD1P3AX i_data_i77 (.D(i_data_95__N_360[77]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[77])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i77.GSR = "ENABLED";
    FD1P3AX i_data_i78 (.D(i_data_95__N_360[78]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[78])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i78.GSR = "ENABLED";
    FD1P3AX i_data_i79 (.D(i_data_95__N_360[79]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[79])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i79.GSR = "ENABLED";
    FD1P3AX i_data_i80 (.D(i_data_95__N_360[80]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[80])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i80.GSR = "ENABLED";
    FD1P3AX i_data_i81 (.D(i_data_95__N_360[81]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[81])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i81.GSR = "ENABLED";
    FD1P3AX i_data_i82 (.D(i_data_95__N_360[82]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[82])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i82.GSR = "ENABLED";
    FD1P3AX i_data_i83 (.D(i_data_95__N_360[83]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[83])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i83.GSR = "ENABLED";
    FD1P3AX i_data_i84 (.D(i_data_95__N_360[84]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[84])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i84.GSR = "ENABLED";
    FD1P3AX i_data_i85 (.D(i_data_95__N_360[85]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[85])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i85.GSR = "ENABLED";
    FD1P3AX i_data_i86 (.D(i_data_95__N_360[86]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[86])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i86.GSR = "ENABLED";
    FD1P3AX i_data_i87 (.D(i_data_95__N_360[87]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[87])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i87.GSR = "ENABLED";
    FD1P3AX i_data_i88 (.D(i_data_95__N_360[88]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[88])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i88.GSR = "ENABLED";
    FD1P3AX i_data_i89 (.D(i_data_95__N_360[89]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[89])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i89.GSR = "ENABLED";
    FD1P3AX i_data_i90 (.D(i_data_95__N_360[90]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[90])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i90.GSR = "ENABLED";
    FD1P3AX i_data_i91 (.D(i_data_95__N_360[91]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[91])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i91.GSR = "ENABLED";
    FD1P3AX i_data_i92 (.D(i_data_95__N_360[92]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[92])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i92.GSR = "ENABLED";
    FD1P3AX i_data_i93 (.D(i_data_95__N_360[93]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[93])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i93.GSR = "ENABLED";
    FD1P3AX i_data_i94 (.D(i_data_95__N_360[94]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[94])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i94.GSR = "ENABLED";
    FD1P3AX i_data_i95 (.D(i_data_95__N_360[95]), .SP(FT601_CLK_c_enable_184), 
            .CK(FT601_CLK_c), .Q(i_data[95])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_data_i95.GSR = "ENABLED";
    FD1P3AX i_state_i0_i1 (.D(n1324[1]), .SP(FT601_CLK_c_enable_187), .CK(FT601_CLK_c), 
            .Q(i_state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i1.GSR = "ENABLED";
    LUT4 mux_478_i91_4_lut (.A(i_pre_data[26]), .B(i_data[58]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[90])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i91_4_lut.init = 16'hac0c;
    LUT4 i1_3_lut_3_lut (.A(i_state[1]), .B(i_state[0]), .C(i_state[2]), 
         .Z(n1324[1])) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h2626;
    LUT4 i1_2_lut_rep_145 (.A(i_dat_rdy), .B(ft601_txe), .Z(n6193)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_145.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(i_dat_rdy), .B(ft601_txe), .C(ft601_oe_N_596), 
         .Z(n3973)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_3_lut_4_lut_adj_149 (.A(i_dat_rdy), .B(ft601_txe), .C(ft601_oe_N_596), 
         .D(i_state[1]), .Z(n3991)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_3_lut_4_lut_adj_149.init = 16'h0008;
    LUT4 i4589_2_lut_rep_146 (.A(i_state[1]), .B(i_state[0]), .Z(n6194)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4589_2_lut_rep_146.init = 16'heeee;
    FD1P3IX i_dat_i_buf_i0_i18 (.D(i_pre_data[18]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[18])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i18.GSR = "ENABLED";
    FD1P3AX i_state_i0_i2 (.D(n1324[2]), .SP(FT601_CLK_c_enable_187), .CK(FT601_CLK_c), 
            .Q(i_state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i_state_i0_i2.GSR = "ENABLED";
    LUT4 i4720_2_lut_2_lut_3_lut_4_lut (.A(i_state[1]), .B(i_state[0]), 
         .C(ft601_oe_N_596), .D(i_state[2]), .Z(n5319)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i4720_2_lut_2_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_2_lut_3_lut_4_lut (.A(i_state[1]), .B(i_state[0]), .C(ft601_oe_N_596), 
         .D(i_state[2]), .Z(n5742)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_147 (.A(i_tx_state[0]), .B(i_tx_state[2]), .Z(n6195)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_147.init = 16'h8888;
    FD1P3IX i_dat_i_buf_i0_i19 (.D(i_pre_data[19]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[19])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i19.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_138_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(i_tx_state[1]), 
         .Z(FT601_CLK_c_enable_120)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_138_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_150 (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(n6196), .D(i_tx_state[1]), .Z(n3917)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_4_lut_adj_150.init = 16'h0008;
    LUT4 i1_4_lut_4_lut_4_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(n6174), 
         .D(i_tx_state[1]), .Z(FT601_CLK_c_enable_236)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h33f8;
    FD1P3IX i_dat_i_buf_i0_i20 (.D(i_pre_data[20]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[20])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i20.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i8 (.D(i_pre_data[8]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[8])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_148 (.A(ft601_txe), .B(i_rd_en), .Z(n6196)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam i1_2_lut_rep_148.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_4_lut (.A(i_state[1]), .B(i_state[0]), .C(i_state[2]), 
         .D(ft601_oe_N_596), .Z(FT601_CLK_c_enable_194)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0414;
    LUT4 n3903_bdd_3_lut_4_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n6157)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam n3903_bdd_3_lut_4_lut.init = 16'hf008;
    LUT4 n169_bdd_3_lut_4_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n6142)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam n169_bdd_3_lut_4_lut.init = 16'h70f8;
    FD1P3AX i_wr_en_677 (.D(n1540), .SP(FT601_CLK_c_enable_191), .CK(FT601_CLK_c), 
            .Q(i_wr_en));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_wr_en_677.GSR = "ENABLED";
    FD1P3AX i_rd_en_672 (.D(n3525), .SP(FT601_CLK_c_enable_192), .CK(FT601_CLK_c), 
            .Q(i_rd_en)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam i_rd_en_672.GSR = "ENABLED";
    LUT4 n6147_bdd_3_lut_3_lut (.A(i_state[2]), .B(i_state[1]), .C(n6147), 
         .Z(FT601_CLK_c_enable_187)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam n6147_bdd_3_lut_3_lut.init = 16'h7474;
    LUT4 i2_2_lut_3_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam i2_2_lut_3_lut.init = 16'h8f8f;
    LUT4 i182_2_lut_3_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .Z(n175)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam i182_2_lut_3_lut.init = 16'hf8f8;
    FD1P3IX i_dat_i_buf_i0_i21 (.D(i_pre_data[21]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[21])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i21.GSR = "ENABLED";
    LUT4 mux_478_i80_4_lut (.A(i_pre_data[15]), .B(i_data[47]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[79])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i80_4_lut.init = 16'hac0c;
    LUT4 n169_bdd_3_lut_4808_4_lut (.A(i_valid[1]), .B(i_valid[0]), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n6141)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    defparam n169_bdd_3_lut_4808_4_lut.init = 16'h001f;
    LUT4 i1_2_lut_rep_126_3_lut_4_lut (.A(ft601_txe), .B(i_rd_en), .C(i_tx_state[0]), 
         .D(i_tx_state[2]), .Z(n6174)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(87[9] 94[16])
    defparam i1_2_lut_rep_126_3_lut_4_lut.init = 16'h0008;
    FD1P3AX ft601_rd_670 (.D(n6188), .SP(FT601_CLK_c_enable_194), .CK(FT601_CLK_c), 
            .Q(ft601_rd)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam ft601_rd_670.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i22 (.D(i_pre_data[22]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[22])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i22.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i23 (.D(i_pre_data[23]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[23])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i23.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i24 (.D(i_pre_data[24]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[24])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i24.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i25 (.D(i_pre_data[25]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[25])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i25.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i26 (.D(i_pre_data[26]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[26])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i26.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_149 (.A(i_tx_state[0]), .B(i_tx_state[2]), .Z(n6197)) /* synthesis lut_function=(A+(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_149.init = 16'heeee;
    FD1P3AX ft601_oe_669 (.D(n5742), .SP(FT601_CLK_c_enable_200), .CK(FT601_CLK_c), 
            .Q(ft601_oe)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(98[9] 148[16])
    defparam ft601_oe_669.GSR = "ENABLED";
    LUT4 i4755_2_lut_rep_133_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .Z(n6181)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i4755_2_lut_rep_133_3_lut.init = 16'h0101;
    FD1P3JX i_tx_state_i0_i0 (.D(n3928), .SP(FT601_CLK_c_enable_201), .PD(n3917), 
            .CK(FT601_CLK_c), .Q(i_tx_state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_tx_state_i0_i0.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i27 (.D(i_pre_data[27]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[27])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i27.GSR = "ENABLED";
    LUT4 i4760_2_lut_2_lut_3_lut_3_lut_4_lut_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .Z(n5864)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i4760_2_lut_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'hf7f7;
    LUT4 mux_478_i92_4_lut (.A(i_pre_data[27]), .B(i_data[59]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[91])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i92_4_lut.init = 16'hac0c;
    LUT4 mux_478_i81_4_lut (.A(i_pre_data[16]), .B(i_data[48]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[80])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i81_4_lut.init = 16'hac0c;
    LUT4 mux_478_i93_4_lut (.A(i_pre_data[28]), .B(i_data[60]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[92])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i93_4_lut.init = 16'hac0c;
    LUT4 ft601_txe_n_I_0_1_lut (.A(FT601_TXE_N_c), .Z(ft601_txe_n_N_613)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(90[26:41])
    defparam ft601_txe_n_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_151 (.A(i_valid[2]), .B(i_tx_state[0]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(77[12:19])
    defparam i1_2_lut_adj_151.init = 16'h8888;
    LUT4 ft601_oe_I_0_1_lut (.A(ft601_oe), .Z(ft601_oe_N_587)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(91[27:39])
    defparam ft601_oe_I_0_1_lut.init = 16'h5555;
    LUT4 ft601_rd_I_0_1_lut (.A(ft601_rd), .Z(ft601_rd_N_571)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(92[27:39])
    defparam ft601_rd_I_0_1_lut.init = 16'h5555;
    FD1P3IX i_dat_i_buf_i0_i28 (.D(i_pre_data[28]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[28])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i28.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_152 (.A(i_state[2]), .B(n6194), .C(ft601_oe_N_596), 
         .D(n6193), .Z(FT601_CLK_c_enable_200)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_152.init = 16'h1312;
    LUT4 i4661_3_lut (.A(\gen_data[0] ), .B(i_pre_data[0]), .C(i_pre_valid[0]), 
         .Z(n645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4661_3_lut.init = 16'hcaca;
    LUT4 mux_478_i73_4_lut (.A(i_pre_data[8]), .B(i_data[40]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[72])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i73_4_lut.init = 16'hac0c;
    FD1P3IX i_pre_data_i0_i95 (.D(i_pre_data[63]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[95])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i95.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i94 (.D(i_pre_data[62]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[94])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i94.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i93 (.D(i_pre_data[61]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[93])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i93.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i92 (.D(i_pre_data[60]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[92])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i92.GSR = "ENABLED";
    LUT4 mux_478_i74_4_lut (.A(i_pre_data[9]), .B(i_data[41]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[73])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i74_4_lut.init = 16'hac0c;
    FD1P3IX i_pre_data_i0_i91 (.D(i_pre_data[59]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[91])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i91.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i90 (.D(i_pre_data[58]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[90])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i90.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i89 (.D(i_pre_data[57]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[89])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i89.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i88 (.D(i_pre_data[56]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[88])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i88.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i87 (.D(i_pre_data[55]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[87])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i87.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i86 (.D(i_pre_data[54]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[86])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i86.GSR = "ENABLED";
    LUT4 mux_478_i75_4_lut (.A(i_pre_data[10]), .B(i_data[42]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[74])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i75_4_lut.init = 16'hac0c;
    FD1P3IX i_pre_data_i0_i85 (.D(i_pre_data[53]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[85])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i85.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i84 (.D(i_pre_data[52]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[84])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i84.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i83 (.D(i_pre_data[51]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[83])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i83.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i82 (.D(i_pre_data[50]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[82])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i82.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i81 (.D(i_pre_data[49]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[81])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i81.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i80 (.D(i_pre_data[48]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[80])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i80.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i79 (.D(i_pre_data[47]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[79])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i79.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i78 (.D(i_pre_data[46]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[78])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i78.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i77 (.D(i_pre_data[45]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[77])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i77.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i76 (.D(i_pre_data[44]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[76])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i76.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i75 (.D(i_pre_data[43]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[75])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i75.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i74 (.D(i_pre_data[42]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[74])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i74.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i73 (.D(i_pre_data[41]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[73])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i73.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i72 (.D(i_pre_data[40]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[72])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i72.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i71 (.D(i_pre_data[39]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[71])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i71.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i70 (.D(i_pre_data[38]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[70])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i70.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i69 (.D(i_pre_data[37]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[69])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i69.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i68 (.D(i_pre_data[36]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[68])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i68.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_153 (.A(i_tx_state[1]), .B(i_dat_rdy), .C(n6), .D(i_tx_state[2]), 
         .Z(n3561)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(76[12:22])
    defparam i1_4_lut_adj_153.init = 16'hc8cc;
    FD1P3IX i_pre_data_i0_i67 (.D(i_pre_data[35]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[67])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i67.GSR = "ENABLED";
    LUT4 i2416_4_lut (.A(FT601_CLK_c_enable_241), .B(n6196), .C(i_pre_valid[0]), 
         .D(n6181), .Z(n3604)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i2416_4_lut.init = 16'h020a;
    FD1P3IX i_pre_data_i0_i66 (.D(i_pre_data[34]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[66])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i66.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i65 (.D(i_pre_data[33]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[65])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i65.GSR = "ENABLED";
    FD1P3IX i_pre_data_i0_i64 (.D(i_pre_data[32]), .SP(FT601_CLK_c_enable_235), 
            .CD(GND_net), .CK(FT601_CLK_c), .Q(i_pre_data[64])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_data_i0_i64.GSR = "ENABLED";
    FD1P3JX i_valid_i2 (.D(n5709), .SP(FT601_CLK_c_enable_236), .PD(FT601_CLK_c_enable_120), 
            .CK(FT601_CLK_c), .Q(i_valid[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_valid_i2.GSR = "ENABLED";
    FD1P3AX i_valid_i1 (.D(i_valid_2__N_322[1]), .SP(FT601_CLK_c_enable_237), 
            .CK(FT601_CLK_c), .Q(i_valid[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_valid_i1.GSR = "ENABLED";
    LUT4 i2414_2_lut_3_lut_2_lut_2_lut_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .Z(n3595)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i2414_2_lut_3_lut_2_lut_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_139_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(i_valid[2]), 
         .Z(n6187)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_139_3_lut.init = 16'h2020;
    LUT4 i2876_4_lut_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), .C(i_tx_state[1]), 
         .Z(FT601_CLK_c_enable_237)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i2876_4_lut_3_lut.init = 16'h2b2b;
    LUT4 mux_478_i76_4_lut (.A(i_pre_data[11]), .B(i_data[43]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[75])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i76_4_lut.init = 16'hac0c;
    LUT4 i1_2_lut_rep_131_3_lut_4_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .D(i_valid[2]), .Z(FT601_CLK_c_enable_235)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_rep_131_3_lut_4_lut.init = 16'h2000;
    PFUMX i4818 (.BLUT(n6157), .ALUT(n6187), .C0(i_tx_state[1]), .Z(FT601_CLK_c_enable_238));
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_3_lut (.A(i_tx_state[0]), .B(i_tx_state[2]), 
         .C(i_tx_state[1]), .Z(FT601_CLK_c_enable_152)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i1_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'h2828;
    FD1P3AX i_pre_valid_i0_i2 (.D(n5298), .SP(FT601_CLK_c_enable_238), .CK(FT601_CLK_c), 
            .Q(i_pre_valid[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_pre_valid_i0_i2.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i29 (.D(i_pre_data[29]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[29])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i29.GSR = "ENABLED";
    LUT4 mux_478_i77_4_lut (.A(i_pre_data[12]), .B(i_data[44]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[76])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i77_4_lut.init = 16'hac0c;
    PFUMX i4811 (.BLUT(n6146), .ALUT(n6145), .C0(i_state[0]), .Z(n6147));
    PFUMX mux_479_i71 (.BLUT(n639), .ALUT(n1117[70]), .C0(n5864), .Z(i_data_95__N_360[70])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 mux_478_i78_4_lut (.A(i_pre_data[13]), .B(i_data[45]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[77])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i78_4_lut.init = 16'hac0c;
    PFUMX mux_479_i70 (.BLUT(n640), .ALUT(n1117[69]), .C0(n5864), .Z(i_data_95__N_360[69])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 mux_478_i82_4_lut (.A(i_pre_data[17]), .B(i_data[49]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[81])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i82_4_lut.init = 16'hac0c;
    FD1P3IX i_dat_i_buf_i0_i30 (.D(i_pre_data[30]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[30])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i30.GSR = "ENABLED";
    FD1P3IX i_dat_i_buf_i0_i31 (.D(i_pre_data[31]), .SP(FT601_CLK_c_enable_241), 
            .CD(n3604), .CK(FT601_CLK_c), .Q(i_dat_i_buf[31])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(153[9] 227[16])
    defparam i_dat_i_buf_i0_i31.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_154 (.A(i_state[1]), .B(i_dat_rdy), .C(i_state[2]), 
         .Z(n103)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_154.init = 16'h1010;
    PFUMX mux_479_i69 (.BLUT(n641), .ALUT(n1117[68]), .C0(n5864), .Z(i_data_95__N_360[68])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    PFUMX i4809 (.BLUT(n6142), .ALUT(n6141), .C0(i_tx_state[1]), .Z(FT601_CLK_c_enable_201));
    LUT4 i26_3_lut (.A(n11), .B(i_pre_data[0]), .C(i_pre_valid[0]), .Z(n5405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i26_3_lut.init = 16'hcaca;
    PFUMX mux_479_i68 (.BLUT(n642), .ALUT(n1117[67]), .C0(n5864), .Z(i_data_95__N_360[67])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 mux_478_i83_4_lut (.A(i_pre_data[18]), .B(i_data[50]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[82])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i83_4_lut.init = 16'hac0c;
    PFUMX mux_479_i67 (.BLUT(n643), .ALUT(n1117[66]), .C0(n5864), .Z(i_data_95__N_360[66])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4758_2_lut (.A(i_tx_state[1]), .B(i_tx_state[0]), .Z(n126)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4758_2_lut.init = 16'h1111;
    PFUMX mux_479_i66 (.BLUT(n644), .ALUT(n1117[65]), .C0(n5864), .Z(i_data_95__N_360[65])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=18, LSE_RCOL=23, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 mux_478_i84_4_lut (.A(i_pre_data[19]), .B(i_data[51]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[83])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i84_4_lut.init = 16'hac0c;
    LUT4 mux_478_i85_4_lut (.A(i_pre_data[20]), .B(i_data[52]), .C(FT601_CLK_c_enable_120), 
         .D(i_pre_valid[0]), .Z(n1117[84])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ft601.vhd(162[17] 225[24])
    defparam mux_478_i85_4_lut.init = 16'hac0c;
    PFUMX i20 (.BLUT(n10), .ALUT(n1), .C0(i_tx_state[2]), .Z(n5587));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \prng("10111100110011001111000001010011") 
//

module \prng("10111100110011001111000001010011")  (\rng[25] , sclk_derived_94, 
            n3602, \rng[26] , \rng[27] , \rng[28] , \rng[29] , \rng[30] , 
            \rng[31] , GND_net, \rng[24] );
    output \rng[25] ;
    input sclk_derived_94;
    input n3602;
    output \rng[26] ;
    output \rng[27] ;
    output \rng[28] ;
    output \rng[29] ;
    output \rng[30] ;
    output \rng[31] ;
    input GND_net;
    output \rng[24] ;
    
    wire sclk_derived_94 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/sclk_derived_94 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire [7:0]n6;
    
    wire n5270, n5271, n5269, n5268;
    
    FD1S3IX sr_i25 (.D(n6[1]), .CK(sclk_derived_94), .CD(n3602), .Q(\rng[25] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i25.GSR = "ENABLED";
    FD1S3JX sr_i26 (.D(n6[2]), .CK(sclk_derived_94), .PD(n3602), .Q(\rng[26] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i26.GSR = "ENABLED";
    FD1S3JX sr_i27 (.D(n6[3]), .CK(sclk_derived_94), .PD(n3602), .Q(\rng[27] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i27.GSR = "ENABLED";
    FD1S3JX sr_i28 (.D(n6[4]), .CK(sclk_derived_94), .PD(n3602), .Q(\rng[28] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i28.GSR = "ENABLED";
    FD1S3JX sr_i29 (.D(n6[5]), .CK(sclk_derived_94), .PD(n3602), .Q(\rng[29] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i29.GSR = "ENABLED";
    FD1S3IX sr_i30 (.D(n6[6]), .CK(sclk_derived_94), .CD(n3602), .Q(\rng[30] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i30.GSR = "ENABLED";
    FD1S3JX sr_i31 (.D(n6[7]), .CK(sclk_derived_94), .PD(n3602), .Q(\rng[31] )) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i31.GSR = "ENABLED";
    CCU2D add_404_7 (.A0(\rng[29] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng[30] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5270), .COUT(n5271), .S0(n6[5]), .S1(n6[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_404_7.INIT0 = 16'h5aaa;
    defparam add_404_7.INIT1 = 16'h5aaa;
    defparam add_404_7.INJECT1_0 = "NO";
    defparam add_404_7.INJECT1_1 = "NO";
    CCU2D add_404_5 (.A0(\rng[27] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng[28] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5269), .COUT(n5270), .S0(n6[3]), .S1(n6[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_404_5.INIT0 = 16'h5aaa;
    defparam add_404_5.INIT1 = 16'h5aaa;
    defparam add_404_5.INJECT1_0 = "NO";
    defparam add_404_5.INJECT1_1 = "NO";
    CCU2D add_404_9 (.A0(\rng[31] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5271), 
          .S0(n6[7]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_404_9.INIT0 = 16'h5aaa;
    defparam add_404_9.INIT1 = 16'h0000;
    defparam add_404_9.INJECT1_0 = "NO";
    defparam add_404_9.INJECT1_1 = "NO";
    CCU2D add_404_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng[24] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5268), .S1(n6[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_404_1.INIT0 = 16'hF000;
    defparam add_404_1.INIT1 = 16'h5555;
    defparam add_404_1.INJECT1_0 = "NO";
    defparam add_404_1.INJECT1_1 = "NO";
    FD1S3IX sr_i24 (.D(n6[0]), .CK(sclk_derived_94), .CD(n3602), .Q(\rng[24] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=17, LSE_RCOL=33, LSE_LLINE=163, LSE_RLINE=163 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/prng.vhd(51[9] 66[16])
    defparam sr_i24.GSR = "ENABLED";
    CCU2D add_404_3 (.A0(\rng[25] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\rng[26] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5268), .COUT(n5269), .S0(n6[1]), .S1(n6[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_404_3.INIT0 = 16'h5aaa;
    defparam add_404_3.INIT1 = 16'h5aaa;
    defparam add_404_3.INJECT1_0 = "NO";
    defparam add_404_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module deserializer8_1
//

module deserializer8_1 (par_byte, ce_N_10, GND_net, buf_clk, buf_dataini0, 
            VCC_net, sclk_derived_94, din_clk_N_1128);
    output [7:0]par_byte;
    output ce_N_10;
    input GND_net;
    input buf_clk;
    input buf_dataini0;
    input VCC_net;
    output sclk_derived_94;
    output din_clk_N_1128;
    
    wire sclk__inv /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire sclk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire buf_clk /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/deserializer_inst/buf_clk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(50[12:19])
    wire sclk_derived_94 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/sclk_derived_94 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire din_clk_N_1128 /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\ber_proc/din_clk_N_1128 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    
    wire sclk_derived_95_enable_10, n6165;
    wire [7:0]decoder_out;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(47[12:23])
    
    wire data_rdy_i, n6198, data_rdy_i_N_797;
    wire [6:0]lnk_trnd_buf;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(57[12:24])
    
    wire sclk_derived_95_enable_56, n97;
    wire [39:0]reg40;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(43[12:17])
    
    wire sclk_derived_95_enable_18;
    wire [39:0]n73;
    
    wire rx_ready;
    wire [2:0]\decode_proc.temp ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(109[18:22])
    
    wire sclk_derived_95_enable_40, n6210;
    wire [9:0]debug;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(16[9:14])
    wire [9:0]n114;
    
    wire n6177, n6209, n6178, n6213, n6212, n6216, n6204, n6183, 
        n2566, n3672, n6215, n6219, n6218, n6222, n6221, n6225, 
        n6224, n5748, n5828, n12, n65, n81, n5347, n6172, n4984;
    wire [6:0]n16;
    
    wire n6228, n6227, n6231, n6230, n4971, n6167, sclk_derived_95_enable_34, 
        mode, n6200, n2, n2_adj_1289, alignwd_N_801;
    wire [7:0]pdata2mux;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(44[12:21])
    
    wire sclk_derived_95_enable_51, n6166, n6, n6182, n3, n6_adj_1290, 
        n3_adj_1291, n6175, sclk_derived_95_enable_26, n10, n6203, 
        sclk_derived_95_enable_53, sclk_derived_95_enable_42, n5846, n6214, 
        n6232, n6229, n6226, n6223, n6220, n6217, n6211, alignwd, 
        sclk_derived_95_enable_43;
    wire [5:0]STATE;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(68[12:17])
    
    wire n5732, locked;
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(69[12:20])
    
    wire sclk_derived_95_enable_54, LOCK_P2, N_118_LI, n6199, sclk_derived_95_enable_57, 
        N_137, n3601, n5749, n6171, n5751, n5750, n5752, control_ind;
    
    FD1P3IX par_data__i0 (.D(decoder_out[0]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i0.GSR = "ENABLED";
    FD1S3IX data_rdy_i_63 (.D(data_rdy_i_N_797), .CK(sclk), .CD(n6198), 
            .Q(data_rdy_i));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(184[9] 202[16])
    defparam data_rdy_i_63.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf__i0 (.D(n97), .SP(sclk_derived_95_enable_56), .CK(sclk__inv), 
            .Q(lnk_trnd_buf[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i0.GSR = "ENABLED";
    FD1P3AX reg40_i0_i0 (.D(n73[0]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i0.GSR = "ENABLED";
    LUT4 rx_ready_bdd_4_lut (.A(rx_ready), .B(\decode_proc.temp [0]), .C(\decode_proc.temp [1]), 
         .D(\decode_proc.temp [2]), .Z(sclk_derived_95_enable_40)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C))+!A)) */ ;
    defparam rx_ready_bdd_4_lut.init = 16'h2820;
    LUT4 mux_21_Mux_9_i7_then_4_lut (.A(reg40[19]), .B(\decode_proc.temp [1]), 
         .C(\decode_proc.temp [2]), .D(reg40[39]), .Z(n6210)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_9_i7_then_4_lut.init = 16'h0e02;
    FD1P3AX decoder_in_i0_i0 (.D(n114[0]), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i0.GSR = "ENABLED";
    FD1S3IX \decode_proc.temp_i0  (.D(n6177), .CK(sclk__inv), .CD(\decode_proc.temp [0]), 
            .Q(\decode_proc.temp [0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam \decode_proc.temp_i0 .GSR = "ENABLED";
    LUT4 mux_21_Mux_9_i7_else_4_lut (.A(reg40[9]), .B(reg40[29]), .C(\decode_proc.temp [1]), 
         .D(\decode_proc.temp [2]), .Z(n6209)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_21_Mux_9_i7_else_4_lut.init = 16'h00ca;
    FD1S3JX \decode_proc.temp_i2  (.D(n6178), .CK(sclk__inv), .PD(n6198), 
            .Q(\decode_proc.temp [2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam \decode_proc.temp_i2 .GSR = "ENABLED";
    LUT4 mux_21_Mux_2_i7_then_4_lut (.A(reg40[12]), .B(reg40[32]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6213)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_2_i7_then_4_lut.init = 16'h0c0a;
    LUT4 mux_21_Mux_2_i7_else_4_lut (.A(reg40[22]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[2]), .Z(n6212)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_2_i7_else_4_lut.init = 16'h2320;
    LUT4 mux_21_Mux_8_i7_then_4_lut (.A(reg40[18]), .B(reg40[38]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6216)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_8_i7_then_4_lut.init = 16'h0c0a;
    LUT4 i2491_2_lut_3_lut_4_lut (.A(n6204), .B(n6183), .C(n2566), .D(rx_ready), 
         .Z(n3672)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i2491_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_21_Mux_8_i7_else_4_lut (.A(reg40[28]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[8]), .Z(n6215)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_8_i7_else_4_lut.init = 16'h2320;
    LUT4 mux_21_Mux_7_i7_then_4_lut (.A(reg40[17]), .B(reg40[37]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6219)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_7_i7_then_4_lut.init = 16'h0c0a;
    LUT4 mux_21_Mux_7_i7_else_4_lut (.A(reg40[27]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[7]), .Z(n6218)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_7_i7_else_4_lut.init = 16'h2320;
    FD1P3IX par_data__i7 (.D(decoder_out[7]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[7])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i7.GSR = "ENABLED";
    LUT4 mux_21_Mux_6_i7_then_4_lut (.A(reg40[16]), .B(reg40[36]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6222)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_6_i7_then_4_lut.init = 16'h0c0a;
    LUT4 mux_21_Mux_6_i7_else_4_lut (.A(reg40[26]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[6]), .Z(n6221)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_6_i7_else_4_lut.init = 16'h2320;
    LUT4 mux_21_Mux_5_i7_then_4_lut (.A(reg40[15]), .B(reg40[35]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6225)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_5_i7_then_4_lut.init = 16'h0c0a;
    FD1P3IX par_data__i6 (.D(decoder_out[6]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[6])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i6.GSR = "ENABLED";
    FD1P3IX par_data__i5 (.D(decoder_out[5]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i5.GSR = "ENABLED";
    FD1P3IX par_data__i4 (.D(decoder_out[4]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i4.GSR = "ENABLED";
    FD1P3IX par_data__i3 (.D(decoder_out[3]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i3.GSR = "ENABLED";
    FD1P3IX par_data__i2 (.D(decoder_out[2]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i2.GSR = "ENABLED";
    FD1P3IX par_data__i1 (.D(decoder_out[1]), .SP(sclk_derived_95_enable_10), 
            .CD(n6165), .CK(sclk__inv), .Q(par_byte[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam par_data__i1.GSR = "ENABLED";
    LUT4 mux_21_Mux_5_i7_else_4_lut (.A(reg40[25]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[5]), .Z(n6224)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_5_i7_else_4_lut.init = 16'h2320;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n6204), .B(n6183), .C(lnk_trnd_buf[4]), 
         .D(rx_ready), .Z(n5748)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h7000;
    LUT4 i6_4_lut (.A(n5828), .B(n12), .C(reg40[8]), .D(reg40[7]), .Z(n65)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut.init = 16'hfffd;
    LUT4 i3_4_lut (.A(n81), .B(n5347), .C(n65), .D(n6172), .Z(n4984)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(57[12:24])
    defparam i3_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n6204), .B(n6183), .C(lnk_trnd_buf[0]), 
         .D(rx_ready), .Z(n16[1])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h7000;
    LUT4 mux_21_Mux_4_i7_then_4_lut (.A(reg40[14]), .B(reg40[34]), .C(\decode_proc.temp [2]), 
         .D(\decode_proc.temp [1]), .Z(n6228)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_4_i7_then_4_lut.init = 16'h0c0a;
    LUT4 mux_21_Mux_4_i7_else_4_lut (.A(reg40[24]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [1]), .D(reg40[4]), .Z(n6227)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam mux_21_Mux_4_i7_else_4_lut.init = 16'h2320;
    LUT4 i4621_4_lut (.A(reg40[0]), .B(reg40[1]), .C(reg40[6]), .D(reg40[9]), 
         .Z(n5828)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4621_4_lut.init = 16'h8000;
    LUT4 mux_21_Mux_3_i7_then_4_lut (.A(reg40[13]), .B(\decode_proc.temp [1]), 
         .C(\decode_proc.temp [2]), .D(reg40[33]), .Z(n6231)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A ((C+!(D))+!B))) */ ;
    defparam mux_21_Mux_3_i7_then_4_lut.init = 16'h0e02;
    LUT4 mux_21_Mux_3_i7_else_4_lut (.A(reg40[3]), .B(reg40[23]), .C(\decode_proc.temp [1]), 
         .D(\decode_proc.temp [2]), .Z(n6230)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_21_Mux_3_i7_else_4_lut.init = 16'h00ca;
    LUT4 i1_3_lut_4_lut (.A(rx_ready), .B(n6178), .C(n5347), .D(n65), 
         .Z(n97)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0222;
    LUT4 i1_3_lut_4_lut_adj_136 (.A(rx_ready), .B(n6178), .C(n4971), .D(n6167), 
         .Z(sclk_derived_95_enable_34)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_136.init = 16'hf0f2;
    LUT4 i1_2_lut (.A(mode), .B(n81), .Z(ce_N_10)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i5_4_lut (.A(reg40[4]), .B(reg40[3]), .C(reg40[5]), .D(reg40[2]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 mux_21_Mux_0_i2_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(reg40[20]), .D(reg40[10]), .Z(n2)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam mux_21_Mux_0_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_21_Mux_1_i2_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(reg40[21]), .D(reg40[11]), .Z(n2_adj_1289)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam mux_21_Mux_1_i2_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(n4984), .D(n6204), .Z(alignwd_N_801)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'h10f0;
    LUT4 i3287_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[2]), .D(n6204), .Z(n73[18])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3287_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3402_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[1]), .D(n6204), .Z(n73[25])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3402_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3283_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[4]), .D(n6204), .Z(n73[4])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3283_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3291_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[0]), .D(n6204), .Z(n73[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3291_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i852_2_lut_rep_125_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(rx_ready), .D(n6204), .Z(sclk_derived_95_enable_51)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i852_2_lut_rep_125_3_lut_4_lut.init = 16'he000;
    LUT4 i3406_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[3]), .D(n6204), .Z(n73[3])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3406_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3290_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[6]), .D(n6204), .Z(n73[6])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3290_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 i1_2_lut_rep_118_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(rx_ready), .D(n6204), .Z(n6166)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_rep_118_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3292_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[7]), .D(n6204), .Z(n73[7])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3292_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 mux_21_Mux_1_i3_4_lut (.A(reg40[1]), .B(n6), .C(n6178), .D(n6182), 
         .Z(n3)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(128[21] 172[30])
    defparam mux_21_Mux_1_i3_4_lut.init = 16'hcac0;
    LUT4 i3407_2_lut_3_lut_4_lut (.A(\decode_proc.temp [0]), .B(n6200), 
         .C(pdata2mux[5]), .D(n6204), .Z(n73[13])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3407_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 mux_21_Mux_0_i3_4_lut (.A(reg40[0]), .B(n6_adj_1290), .C(n6178), 
         .D(n6182), .Z(n3_adj_1291)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(128[21] 172[30])
    defparam mux_21_Mux_0_i3_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut (.A(n6175), .B(n4971), .C(n6166), .D(n6182), .Z(sclk_derived_95_enable_26)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hdccc;
    LUT4 i4_4_lut (.A(reg40[8]), .B(reg40[4]), .C(reg40[5]), .D(reg40[7]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_138 (.A(lnk_trnd_buf[1]), .B(lnk_trnd_buf[2]), .C(lnk_trnd_buf[0]), 
         .D(lnk_trnd_buf[3]), .Z(n81)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam i3_4_lut_adj_138.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(\decode_proc.temp [2]), .B(n6203), .C(n2566), 
         .D(rx_ready), .Z(n4971)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(124[33:37])
    defparam i2_3_lut_4_lut.init = 16'h6000;
    LUT4 i1_2_lut_rep_117_3_lut_4_lut_4_lut (.A(\decode_proc.temp [2]), .B(n6203), 
         .C(rx_ready), .D(n6183), .Z(n6165)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(124[33:37])
    defparam i1_2_lut_rep_117_3_lut_4_lut_4_lut.init = 16'h2f0f;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n6182), .B(n6175), .C(rx_ready), .D(n6178), 
         .Z(sclk_derived_95_enable_10)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hffbf;
    FD1P3AX lnk_trnd_buf__i4 (.D(n6166), .SP(sclk_derived_95_enable_53), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i4.GSR = "ENABLED";
    FD1P3AX reg40_i0_i1 (.D(n73[25]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i1.GSR = "ENABLED";
    FD1P3AX reg40_i0_i2 (.D(n73[18]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i2.GSR = "ENABLED";
    FD1P3AX reg40_i0_i3 (.D(n73[3]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i3.GSR = "ENABLED";
    FD1P3AX reg40_i0_i4 (.D(n73[4]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i4.GSR = "ENABLED";
    FD1P3AX reg40_i0_i5 (.D(n73[13]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i5.GSR = "ENABLED";
    FD1P3AX reg40_i0_i6 (.D(n73[6]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i6.GSR = "ENABLED";
    FD1P3AX reg40_i0_i7 (.D(n73[7]), .SP(sclk_derived_95_enable_18), .CK(sclk__inv), 
            .Q(reg40[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i7.GSR = "ENABLED";
    FD1P3AX reg40_i0_i8 (.D(n73[0]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i8.GSR = "ENABLED";
    FD1P3AX reg40_i0_i9 (.D(n73[25]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i9.GSR = "ENABLED";
    FD1P3AX reg40_i0_i10 (.D(n73[18]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i10.GSR = "ENABLED";
    FD1P3AX reg40_i0_i11 (.D(n73[3]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i11.GSR = "ENABLED";
    FD1P3AX reg40_i0_i12 (.D(n73[4]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i12.GSR = "ENABLED";
    FD1P3AX reg40_i0_i13 (.D(n73[13]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i13.GSR = "ENABLED";
    FD1P3AX reg40_i0_i14 (.D(n73[6]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i14.GSR = "ENABLED";
    FD1P3AX reg40_i0_i15 (.D(n73[7]), .SP(sclk_derived_95_enable_26), .CK(sclk__inv), 
            .Q(reg40[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i15.GSR = "ENABLED";
    FD1P3AX reg40_i0_i16 (.D(n73[0]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i16.GSR = "ENABLED";
    FD1P3AX reg40_i0_i17 (.D(n73[25]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i17.GSR = "ENABLED";
    FD1P3AX reg40_i0_i18 (.D(n73[18]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i18.GSR = "ENABLED";
    FD1P3AX reg40_i0_i19 (.D(n73[3]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i19.GSR = "ENABLED";
    FD1P3AX reg40_i0_i20 (.D(n73[4]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i20.GSR = "ENABLED";
    FD1P3AX reg40_i0_i21 (.D(n73[13]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i21.GSR = "ENABLED";
    FD1P3AX reg40_i0_i22 (.D(n73[6]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i22.GSR = "ENABLED";
    FD1P3AX reg40_i0_i23 (.D(n73[7]), .SP(sclk_derived_95_enable_34), .CK(sclk__inv), 
            .Q(reg40[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i23.GSR = "ENABLED";
    FD1P3AX reg40_i0_i24 (.D(n73[0]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i24.GSR = "ENABLED";
    FD1P3AX reg40_i0_i25 (.D(n73[25]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i25.GSR = "ENABLED";
    FD1P3AX reg40_i0_i26 (.D(n73[18]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i26.GSR = "ENABLED";
    FD1P3AX reg40_i0_i27 (.D(n73[3]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i27.GSR = "ENABLED";
    FD1P3AX reg40_i0_i28 (.D(n73[4]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i28.GSR = "ENABLED";
    FD1P3AX reg40_i0_i29 (.D(n73[13]), .SP(sclk_derived_95_enable_40), .CK(sclk__inv), 
            .Q(reg40[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i29.GSR = "ENABLED";
    FD1P3AX reg40_i0_i30 (.D(n73[30]), .SP(sclk_derived_95_enable_42), .CK(sclk__inv), 
            .Q(reg40[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i30.GSR = "ENABLED";
    FD1P3AX reg40_i0_i31 (.D(n73[31]), .SP(sclk_derived_95_enable_42), .CK(sclk__inv), 
            .Q(reg40[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i31.GSR = "ENABLED";
    PFUMX mux_21_Mux_0_i7 (.BLUT(n2), .ALUT(n3_adj_1291), .C0(n5846), 
          .Z(n114[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;
    FD1P3AX decoder_in_i0_i1 (.D(n114[1]), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i1.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i2 (.D(n6214), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i2.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i3 (.D(n6232), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i3.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i4 (.D(n6229), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i4.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i5 (.D(n6226), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i5.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i6 (.D(n6223), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i6.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i7 (.D(n6220), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i7.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i8 (.D(n6217), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i8.GSR = "ENABLED";
    FD1P3AX decoder_in_i0_i9 (.D(n6211), .SP(rx_ready), .CK(sclk__inv), 
            .Q(debug[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam decoder_in_i0_i9.GSR = "ENABLED";
    PFUMX mux_21_Mux_1_i7 (.BLUT(n2_adj_1289), .ALUT(n3), .C0(n5846), 
          .Z(n114[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;
    FD1P3AX alignwd_62 (.D(alignwd_N_801), .SP(sclk_derived_95_enable_43), 
            .CK(sclk__inv), .Q(alignwd));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam alignwd_62.GSR = "ENABLED";
    LUT4 rx_start_I_0_1_lut_rep_150 (.A(rx_ready), .Z(n6198)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam rx_start_I_0_1_lut_rep_150.init = 16'h5555;
    LUT4 i2_4_lut_4_lut (.A(rx_ready), .B(STATE[0]), .C(n5732), .D(locked), 
         .Z(STATE_NS[1])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D)+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam i2_4_lut_4_lut.init = 16'hfc10;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rx_ready), .B(n6167), .C(n6203), 
         .D(n6178), .Z(sclk_derived_95_enable_54)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h5f77;
    LUT4 i1_4_lut_4_lut (.A(rx_ready), .B(LOCK_P2), .C(N_118_LI), .D(STATE[1]), 
         .Z(n5732)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam i1_4_lut_4_lut.init = 16'h0d00;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rx_ready), .B(n6182), .C(n6183), 
         .D(n6199), .Z(sclk_derived_95_enable_57)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hdfff;
    LUT4 i919_4_lut_4_lut (.A(rx_ready), .B(LOCK_P2), .C(locked), .D(STATE[5]), 
         .Z(N_137)) /* synthesis lut_function=(A (B (C (D)))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(337[53:67])
    defparam i919_4_lut_4_lut.init = 16'hd500;
    LUT4 i29_2_lut_rep_151 (.A(\decode_proc.temp [0]), .B(\decode_proc.temp [1]), 
         .Z(n6199)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(109[18:22])
    defparam i29_2_lut_rep_151.init = 16'h6666;
    LUT4 i1_2_lut_rep_152 (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .Z(n6200)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_rep_152.init = 16'hbbbb;
    LUT4 i3281_2_lut_rep_134_3_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [0]), .Z(n6182)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3281_2_lut_rep_134_3_lut.init = 16'h0b0b;
    LUT4 i1_2_lut_rep_124_3_lut_4_lut_2_lut_2_lut_2_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .Z(n6172)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_rep_124_3_lut_4_lut_2_lut_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_135_3_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [0]), .Z(n6183)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_rep_135_3_lut.init = 16'hfbfb;
    LUT4 mux_20_Mux_30_i7_3_lut_4_lut (.A(n6204), .B(n6183), .C(n6_adj_1290), 
         .D(pdata2mux[6]), .Z(n73[30])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam mux_20_Mux_30_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 i3403_2_lut_rep_127_3_lut_3_lut_2_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .Z(n6175)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i3403_2_lut_rep_127_3_lut_3_lut_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_119_3_lut_4_lut_2_lut_2_lut_2_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .Z(n6167)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1_2_lut_rep_119_3_lut_4_lut_2_lut_2_lut_2_lut.init = 16'hbbbb;
    LUT4 i2420_1_lut_2_lut_3_lut_4_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(rx_ready), .D(\decode_proc.temp [0]), .Z(n3601)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i2420_1_lut_2_lut_3_lut_4_lut.init = 16'h0f4f;
    LUT4 i1097_2_lut_rep_129_3_lut_4_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(rx_ready), .D(\decode_proc.temp [0]), .Z(n6177)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[24:32])
    defparam i1097_2_lut_rep_129_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i1_3_lut_4_lut_adj_139 (.A(n6204), .B(n6183), .C(n4984), .D(rx_ready), 
         .Z(sclk_derived_95_enable_43)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_3_lut_4_lut_adj_139.init = 16'hf800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n6204), .B(n6183), .C(lnk_trnd_buf[1]), 
         .D(rx_ready), .Z(n5749)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h7000;
    LUT4 \decode_proc.temp_1__bdd_4_lut  (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(rx_ready), .D(\decode_proc.temp [0]), .Z(sclk_derived_95_enable_42)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C (D))))) */ ;
    defparam \decode_proc.temp_1__bdd_4_lut .init = 16'h60a0;
    LUT4 i3418_2_lut_4_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [0]), .D(reg40[31]), .Z(n6)) /* synthesis lut_function=(A (C (D))+!A !((C+!(D))+!B)) */ ;
    defparam i3418_2_lut_4_lut.init = 16'ha400;
    LUT4 i3405_2_lut_4_lut (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [0]), .D(reg40[30]), .Z(n6_adj_1290)) /* synthesis lut_function=(A (C (D))+!A !((C+!(D))+!B)) */ ;
    defparam i3405_2_lut_4_lut.init = 16'ha400;
    LUT4 i1_3_lut_4_lut_adj_141 (.A(n6204), .B(n6183), .C(n2566), .D(rx_ready), 
         .Z(sclk_derived_95_enable_18)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_3_lut_4_lut_adj_141.init = 16'h8700;
    FD1P3IX reg40_i0_i39 (.D(pdata2mux[7]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[39])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i39.GSR = "ENABLED";
    FD1P3IX reg40_i0_i38 (.D(pdata2mux[6]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[38])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i38.GSR = "ENABLED";
    FD1P3IX reg40_i0_i37 (.D(pdata2mux[5]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[37])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i37.GSR = "ENABLED";
    FD1P3IX reg40_i0_i36 (.D(pdata2mux[4]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[36])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i36.GSR = "ENABLED";
    FD1P3IX reg40_i0_i35 (.D(pdata2mux[3]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[35])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i35.GSR = "ENABLED";
    LUT4 mux_20_Mux_31_i7_3_lut_4_lut (.A(n6204), .B(n6183), .C(n6), .D(pdata2mux[7]), 
         .Z(n73[31])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam mux_20_Mux_31_i7_3_lut_4_lut.init = 16'hf780;
    FD1P3IX reg40_i0_i34 (.D(pdata2mux[2]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i34.GSR = "ENABLED";
    FD1P3IX reg40_i0_i33 (.D(pdata2mux[1]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[33])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i33.GSR = "ENABLED";
    FD1P3IX reg40_i0_i32 (.D(pdata2mux[0]), .SP(sclk_derived_95_enable_51), 
            .CD(n3672), .CK(sclk__inv), .Q(reg40[32])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam reg40_i0_i32.GSR = "ENABLED";
    LUT4 \decode_proc.temp_1__bdd_3_lut  (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [2]), 
         .C(\decode_proc.temp [0]), .Z(n2566)) /* synthesis lut_function=(!(A (C)+!A !((C)+!B))) */ ;
    defparam \decode_proc.temp_1__bdd_3_lut .init = 16'h5b5b;
    LUT4 data_rdy_i_I_43_4_lut (.A(\decode_proc.temp [1]), .B(lnk_trnd_buf[6]), 
         .C(\decode_proc.temp [2]), .D(\decode_proc.temp [0]), .Z(data_rdy_i_N_797)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(190[24:59])
    defparam data_rdy_i_I_43_4_lut.init = 16'hc8cc;
    LUT4 i1_2_lut_rep_155 (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [0]), 
         .Z(n6203)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_155.init = 16'h8888;
    LUT4 i1_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut_3_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .C(\decode_proc.temp [2]), .Z(n6171)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h6060;
    FD1P3AX lnk_trnd_buf__i6 (.D(n5751), .SP(sclk_derived_95_enable_53), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i6.GSR = "ENABLED";
    LUT4 i3404_2_lut_rep_130_3_lut_4_lut_4_lut_3_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .C(\decode_proc.temp [2]), .Z(n6178)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;
    defparam i3404_2_lut_rep_130_3_lut_4_lut_4_lut_3_lut.init = 16'h6868;
    FD1P3AX lnk_trnd_buf__i5 (.D(n5748), .SP(sclk_derived_95_enable_53), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i5.GSR = "ENABLED";
    LUT4 i449_2_lut_rep_156 (.A(\decode_proc.temp [1]), .B(\decode_proc.temp [0]), 
         .C(\decode_proc.temp [2]), .Z(n6204)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i449_2_lut_rep_156.init = 16'h7878;
    LUT4 i4725_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut_3_lut_3_lut (.A(\decode_proc.temp [1]), 
         .B(\decode_proc.temp [0]), .C(\decode_proc.temp [2]), .Z(n5846)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;
    defparam i4725_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut_3_lut_3_lut.init = 16'hf9f9;
    FD1P3AX lnk_trnd_buf__i3 (.D(n5750), .SP(sclk_derived_95_enable_54), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_142 (.A(n6204), .B(n6183), .C(n6182), 
         .D(n6199), .Z(n5752)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_142.init = 16'h0400;
    FD1P3AX lnk_trnd_buf__i2 (.D(n5749), .SP(sclk_derived_95_enable_56), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i2.GSR = "ENABLED";
    FD1P3AX lnk_trnd_buf__i1 (.D(n16[1]), .SP(sclk_derived_95_enable_56), 
            .CK(sclk__inv), .Q(lnk_trnd_buf[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam lnk_trnd_buf__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n6204), .B(n6183), .C(lnk_trnd_buf[2]), 
         .D(rx_ready), .Z(n5750)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'h7000;
    PFUMX i4838 (.BLUT(n6230), .ALUT(n6231), .C0(\decode_proc.temp [0]), 
          .Z(n6232));
    PFUMX i4836 (.BLUT(n6227), .ALUT(n6228), .C0(\decode_proc.temp [0]), 
          .Z(n6229));
    PFUMX i4834 (.BLUT(n6224), .ALUT(n6225), .C0(\decode_proc.temp [0]), 
          .Z(n6226));
    FD1S3IX \decode_proc.temp_i1  (.D(n6199), .CK(sclk__inv), .CD(n3601), 
            .Q(\decode_proc.temp [1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam \decode_proc.temp_i1 .GSR = "ENABLED";
    PFUMX i4832 (.BLUT(n6221), .ALUT(n6222), .C0(\decode_proc.temp [0]), 
          .Z(n6223));
    FD1P3JX mode_58 (.D(control_ind), .SP(sclk_derived_95_enable_57), .PD(n6198), 
            .CK(sclk__inv), .Q(mode)) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=20, LSE_RCOL=47, LSE_LLINE=150, LSE_RLINE=150 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[9] 182[16])
    defparam mode_58.GSR = "ENABLED";
    PFUMX i4830 (.BLUT(n6218), .ALUT(n6219), .C0(\decode_proc.temp [0]), 
          .Z(n6220));
    PFUMX i4828 (.BLUT(n6215), .ALUT(n6216), .C0(\decode_proc.temp [0]), 
          .Z(n6217));
    PFUMX i4826 (.BLUT(n6212), .ALUT(n6213), .C0(\decode_proc.temp [0]), 
          .Z(n6214));
    PFUMX i4824 (.BLUT(n6209), .ALUT(n6210), .C0(\decode_proc.temp [0]), 
          .Z(n6211));
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(n6204), .B(n6183), .C(lnk_trnd_buf[5]), 
         .D(rx_ready), .Z(n5751)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(120[21] 126[28])
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h7000;
    DDRX4 deserializer_inst (.sclk__inv(sclk__inv), .sclk(sclk), .alignwd(alignwd), 
          .GND_net(GND_net), .buf_clk(buf_clk), .locked(locked), .buf_dataini0(buf_dataini0), 
          .VCC_net(VCC_net), .pdata2mux({pdata2mux}), .N_118_LI(N_118_LI), 
          .\STATE[0] (STATE[0]), .LOCK_P2(LOCK_P2), .N_137(N_137), .\STATE[5] (STATE[5]), 
          .rx_ready(rx_ready), .\STATE[1] (STATE[1]), .n6171(n6171), .n5752(n5752), 
          .n81(n81), .sclk_derived_95_enable_53(sclk_derived_95_enable_53), 
          .sclk_derived_95_enable_56(sclk_derived_95_enable_56), .\reg40[0] (reg40[0]), 
          .\reg40[6] (reg40[6]), .\reg40[1] (reg40[1]), .n5347(n5347), 
          .\STATE_NS[1] (STATE_NS[1]), .\reg40[2] (reg40[2]), .\reg40[9] (reg40[9]), 
          .n10(n10), .\reg40[3] (reg40[3])) /* synthesis NGD_DRC_MASK=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    dec_8b10b decoder_inst (.debug({debug}), .decoder_out({decoder_out}), 
            .sclk__inv(sclk__inv), .control_ind(control_ind), .sclk(sclk), 
            .data_rdy_i(data_rdy_i), .sclk_derived_94(sclk_derived_94), 
            .din_clk_N_1128(din_clk_N_1128));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(83[20:41])
    
endmodule
//
// Verilog Description of module DDRX4
//

module DDRX4 (sclk__inv, sclk, alignwd, GND_net, buf_clk, locked, 
            buf_dataini0, VCC_net, pdata2mux, N_118_LI, \STATE[0] , 
            LOCK_P2, N_137, \STATE[5] , rx_ready, \STATE[1] , n6171, 
            n5752, n81, sclk_derived_95_enable_53, sclk_derived_95_enable_56, 
            \reg40[0] , \reg40[6] , \reg40[1] , n5347, \STATE_NS[1] , 
            \reg40[2] , \reg40[9] , n10, \reg40[3] ) /* synthesis NGD_DRC_MASK=1 */ ;
    output sclk__inv;
    output sclk;
    input alignwd;
    input GND_net;
    input buf_clk;
    output locked;
    input buf_dataini0;
    input VCC_net;
    output [7:0]pdata2mux;
    output N_118_LI;
    output \STATE[0] ;
    output LOCK_P2;
    input N_137;
    output \STATE[5] ;
    output rx_ready;
    output \STATE[1] ;
    input n6171;
    input n5752;
    input n81;
    output sclk_derived_95_enable_53;
    output sclk_derived_95_enable_56;
    input \reg40[0] ;
    input \reg40[6] ;
    input \reg40[1] ;
    output n5347;
    input \STATE_NS[1] ;
    input \reg40[2] ;
    input \reg40[9] ;
    input n10;
    input \reg40[3] ;
    
    wire sclk__inv /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire sclk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire eclko /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(48[12:17])
    wire eclki /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(43[12:17])
    wire buf_clk /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/deserializer_inst/buf_clk */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(50[12:19])
    wire [1:0]clk_s /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/deserializer_inst/clk_s[1] */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(52[12:17])
    
    wire xstop, dqsdel, clk_s_1__N_811, freeze_t, uddcntln_t, dataini_t0, 
        clk_s_0__N_813, uddcntln_i, reset_inv, freeze_i;
    
    INV i4880 (.A(sclk), .Z(sclk__inv));
    CLKDIVC Inst7_CLKDIVC (.RST(GND_net), .CLKI(eclko), .ALIGNWD(alignwd), 
            .CDIVX(sclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    defparam Inst7_CLKDIVC.GSR = "DISABLED";
    defparam Inst7_CLKDIVC.DIV = "4.0";
    ECLKSYNCA Inst6_ECLKSYNCA (.ECLKI(eclki), .STOP(xstop), .ECLKO(eclko)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    DLLDELC Inst4_DLLDELC (.CLKI(buf_clk), .DQSDEL(dqsdel), .CLKO(eclki)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    defparam Inst4_DLLDELC.DEL_ADJ = "PLUS";
    defparam Inst4_DLLDELC.DEL_VAL = 0;
    FD1S3AX clk_s_1__15 (.D(clk_s_1__N_811), .CK(clk_s[0]), .Q(clk_s[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(306[5:13])
    defparam clk_s_1__15.GSR = "ENABLED";
    DQSDLLC Inst3_DQSDLLC (.CLK(eclko), .RST(GND_net), .UDDCNTLN(uddcntln_t), 
            .FREEZE(freeze_t), .LOCK(locked), .DQSDEL(dqsdel)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    defparam Inst3_DQSDLLC.GSR = "ENABLED";
    defparam Inst3_DQSDLLC.DEL_ADJ = "PLUS";
    defparam Inst3_DQSDLLC.DEL_VAL = 0;
    defparam Inst3_DQSDLLC.LOCK_SENSITIVITY = "LOW";
    defparam Inst3_DQSDLLC.FIN = "300.0";
    defparam Inst3_DQSDLLC.FORCE_MAX_DELAY = "NO";
    DELAYE udel_dataini0 (.A(buf_dataini0), .Z(dataini_t0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    defparam udel_dataini0.DEL_MODE = "ECLK_ALIGNED";
    defparam udel_dataini0.DEL_VALUE = "DELAY0";
    FD1S3AX clk_s_0__14 (.D(clk_s_0__N_813), .CK(buf_clk), .Q(clk_s[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(305[5:13])
    defparam clk_s_0__14.GSR = "ENABLED";
    AND2 AND2_t1 (.A(VCC_net), .B(uddcntln_i), .Z(uddcntln_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(188[15:19])
    INV INV_0 (.A(GND_net), .Z(reset_inv)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    OR2 OR2_t0 (.A(GND_net), .B(freeze_i), .Z(freeze_t)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(195[14:17])
    IDDRX4B Inst8_IDDRX4B0 (.D(dataini_t0), .ECLK(eclko), .SCLK(sclk), 
            .RST(GND_net), .ALIGNWD(alignwd), .Q0(pdata2mux[0]), .Q1(pdata2mux[1]), 
            .Q2(pdata2mux[2]), .Q3(pdata2mux[3]), .Q4(pdata2mux[4]), .Q5(pdata2mux[5]), 
            .Q6(pdata2mux[6]), .Q7(pdata2mux[7])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=25, LSE_RCOL=30, LSE_LLINE=67, LSE_RLINE=67 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(67[25:30])
    defparam Inst8_IDDRX4B0.GSR = "ENABLED";
    LUT4 clk_s_1__I_0_1_lut (.A(clk_s[1]), .Z(clk_s_1__N_811)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(306[17:29])
    defparam clk_s_1__I_0_1_lut.init = 16'h5555;
    LUT4 clk_s_0__I_0_1_lut (.A(clk_s[0]), .Z(clk_s_0__N_813)) /* synthesis lut_function=(!(A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(305[17:29])
    defparam clk_s_0__I_0_1_lut.init = 16'h5555;
    ddrx4_rx_sync Inst5_rx_sync (.N_118_LI(N_118_LI), .\STATE[0] (\STATE[0] ), 
            .locked(locked), .LOCK_P2(LOCK_P2), .N_137(N_137), .\STATE[5] (\STATE[5] ), 
            .xstop(xstop), .rx_ready(rx_ready), .freeze_i(freeze_i), .\STATE[1] (\STATE[1] ), 
            .n6171(n6171), .n5752(n5752), .n81(n81), .sclk_derived_95_enable_53(sclk_derived_95_enable_53), 
            .sclk_derived_95_enable_56(sclk_derived_95_enable_56), .uddcntln_i(uddcntln_i), 
            .\reg40[0] (\reg40[0] ), .\reg40[6] (\reg40[6] ), .\reg40[1] (\reg40[1] ), 
            .n5347(n5347), .\clk_s[1] (clk_s[1]), .\STATE_NS[1] (\STATE_NS[1] ), 
            .reset_inv(reset_inv), .\reg40[2] (\reg40[2] ), .\reg40[9] (\reg40[9] ), 
            .n10(n10), .\reg40[3] (\reg40[3] ));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(238[21:34])
    
endmodule
//
// Verilog Description of module ddrx4_rx_sync
//

module ddrx4_rx_sync (N_118_LI, \STATE[0] , locked, LOCK_P2, N_137, 
            \STATE[5] , xstop, rx_ready, freeze_i, \STATE[1] , n6171, 
            n5752, n81, sclk_derived_95_enable_53, sclk_derived_95_enable_56, 
            uddcntln_i, \reg40[0] , \reg40[6] , \reg40[1] , n5347, 
            \clk_s[1] , \STATE_NS[1] , reset_inv, \reg40[2] , \reg40[9] , 
            n10, \reg40[3] );
    output N_118_LI;
    output \STATE[0] ;
    input locked;
    output LOCK_P2;
    input N_137;
    output \STATE[5] ;
    output xstop;
    output rx_ready;
    output freeze_i;
    output \STATE[1] ;
    input n6171;
    input n5752;
    input n81;
    output sclk_derived_95_enable_53;
    output sclk_derived_95_enable_56;
    output uddcntln_i;
    input \reg40[0] ;
    input \reg40[6] ;
    input \reg40[1] ;
    output n5347;
    input \clk_s[1] ;
    input \STATE_NS[1] ;
    input reset_inv;
    input \reg40[2] ;
    input \reg40[9] ;
    input n10;
    input \reg40[3] ;
    
    wire \clk_s[1]  /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/deserializer_inst/clk_s[1] */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(52[12:17])
    
    wire n4486;
    wire [5:0]STATE;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(68[12:17])
    
    wire N_170_I, n11;
    wire [1:0]STATE_NS;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(69[12:20])
    wire [2:0]CTRL_CNT;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(73[12:20])
    
    wire n6190, N_169_I, RX_START_FAST;
    wire [2:2]CTRL_CNT_FAST;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(77[12:25])
    
    wire RX_STOPE_0, n4655, RX_STARTE_0_FAST, n4, RX_STARTE_0, n5774, 
        n4_adj_1288, FREEZEE_0, N_161_I, CTRL_CNT_N1_0_S_0_X0, UDDCNTLNE_0, 
        N_171_I, n6, RSTN_I, N_172_I, LOCK_P1, CTRL_CNT_N0, CTRL_CNT_N1;
    wire [2:2]CTRL_CNTE_0_FAST;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(78[12:28])
    wire [2:2]CTRL_CNTE_0;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(76[12:23])
    
    wire CTRL_CNT_N1_0_S_0_X1;
    
    LUT4 N_170_I_I_0_4_lut (.A(N_118_LI), .B(n4486), .C(STATE[3]), .D(STATE[4]), 
         .Z(N_170_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(285[17:85])
    defparam N_170_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i4723_4_lut (.A(\STATE[0] ), .B(locked), .C(n11), .D(LOCK_P2), 
         .Z(STATE_NS[0])) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(293[20] 294[60])
    defparam i4723_4_lut.init = 16'h2327;
    LUT4 N_137_I_0_4_lut (.A(N_137), .B(STATE[4]), .C(CTRL_CNT[2]), .D(n6190), 
         .Z(N_169_I)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(284[17:36])
    defparam N_137_I_0_4_lut.init = 16'haeaa;
    LUT4 i1_4_lut (.A(RX_START_FAST), .B(n6190), .C(\STATE[5] ), .D(CTRL_CNT_FAST[2]), 
         .Z(n11)) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(293[20] 294[60])
    defparam i1_4_lut.init = 16'h555d;
    LUT4 RX_STOPE_0_I_0_3_lut (.A(xstop), .B(STATE[2]), .C(STATE[4]), 
         .Z(RX_STOPE_0)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(314[21:63])
    defparam RX_STOPE_0_I_0_3_lut.init = 16'hcece;
    LUT4 i1_4_lut_adj_129 (.A(\STATE[5] ), .B(RX_START_FAST), .C(n6190), 
         .D(n4655), .Z(RX_STARTE_0_FAST)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_129.init = 16'ha888;
    LUT4 i3446_2_lut (.A(CTRL_CNT[2]), .B(LOCK_P2), .Z(n4655)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3446_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_130 (.A(\STATE[5] ), .B(rx_ready), .C(CTRL_CNT[2]), 
         .D(n4), .Z(RX_STARTE_0)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_130.init = 16'ha888;
    LUT4 FREEZEE_0_I_0_4_lut (.A(freeze_i), .B(\STATE[1] ), .C(n5774), 
         .D(n4_adj_1288), .Z(FREEZEE_0)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(316[21] 317[54])
    defparam FREEZEE_0_I_0_4_lut.init = 16'heeec;
    LUT4 i1_2_lut (.A(CTRL_CNT[0]), .B(STATE[4]), .Z(n4_adj_1288)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_131 (.A(CTRL_CNT[2]), .B(CTRL_CNT[1]), .Z(n5774)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(325[20] 327[46])
    defparam i1_2_lut_adj_131.init = 16'hbbbb;
    LUT4 i2_3_lut (.A(\STATE[0] ), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .Z(N_161_I)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(282[17:74])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 i1_3_lut_4_lut (.A(n6171), .B(rx_ready), .C(n5752), .D(n81), 
         .Z(sclk_derived_95_enable_53)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(54[12:19])
    defparam i1_3_lut_4_lut.init = 16'hfbbb;
    LUT4 i1_3_lut_4_lut_adj_132 (.A(n6171), .B(rx_ready), .C(n5752), .D(n81), 
         .Z(sclk_derived_95_enable_56)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(54[12:19])
    defparam i1_3_lut_4_lut_adj_132.init = 16'hbbfb;
    LUT4 i3307_4_lut (.A(N_118_LI), .B(rx_ready), .C(LOCK_P2), .D(locked), 
         .Z(n4486)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;
    defparam i3307_4_lut.init = 16'haeee;
    LUT4 CTRL_CNT_0__I_0_2_lut (.A(CTRL_CNT[0]), .B(\STATE[0] ), .Z(CTRL_CNT_N1_0_S_0_X0)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(330[29:57])
    defparam CTRL_CNT_0__I_0_2_lut.init = 16'h2222;
    LUT4 UDDCNTLNE_0_I_0_2_lut (.A(STATE[2]), .B(uddcntln_i), .Z(UDDCNTLNE_0)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(313[21:48])
    defparam UDDCNTLNE_0_I_0_2_lut.init = 16'h4444;
    LUT4 N_171_I_I_0_4_lut (.A(N_118_LI), .B(n4486), .C(STATE[2]), .D(STATE[3]), 
         .Z(N_171_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(286[17:85])
    defparam N_171_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i4_4_lut (.A(\reg40[0] ), .B(\reg40[6] ), .C(\reg40[1] ), .D(n6), 
         .Z(n5347)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(43[12:17])
    defparam i4_4_lut.init = 16'hfffe;
    FD1S3BX STATE0_REG_Z106 (.D(STATE_NS[0]), .CK(\clk_s[1] ), .PD(RSTN_I), 
            .Q(\STATE[0] )) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(126[23:30])
    defparam STATE0_REG_Z106.GSR = "ENABLED";
    FD1S3DX STATE1_REG_Z108 (.D(\STATE_NS[1] ), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(\STATE[1] )) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(134[23:30])
    defparam STATE1_REG_Z108.GSR = "ENABLED";
    FD1S3DX STAT2_REG_Z110 (.D(N_172_I), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(STATE[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(142[22:29])
    defparam STAT2_REG_Z110.GSR = "ENABLED";
    FD1S3DX STAT3_REG_Z112 (.D(N_171_I), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(STATE[3])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(150[22:29])
    defparam STAT3_REG_Z112.GSR = "ENABLED";
    FD1S3DX STAT4_REG_Z114 (.D(N_170_I), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(STATE[4])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(158[22:29])
    defparam STAT4_REG_Z114.GSR = "ENABLED";
    FD1S3DX STAT5_REG_Z116 (.D(N_169_I), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(\STATE[5] )) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(166[22:29])
    defparam STAT5_REG_Z116.GSR = "ENABLED";
    FD1S3DX RX_STOP_REG_Z118 (.D(RX_STOPE_0), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(xstop)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(174[24:31])
    defparam RX_STOP_REG_Z118.GSR = "ENABLED";
    FD1S3DX RX_START_FAST_REG_Z120 (.D(RX_STARTE_0_FAST), .CK(\clk_s[1] ), 
            .CD(RSTN_I), .Q(RX_START_FAST)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(182[30:37])
    defparam RX_START_FAST_REG_Z120.GSR = "ENABLED";
    FD1S3DX RX_START_REG_Z122 (.D(RX_STARTE_0), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(rx_ready)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(190[25:32])
    defparam RX_START_REG_Z122.GSR = "ENABLED";
    FD1S3DX LOCK_P2_REG_Z128 (.D(LOCK_P1), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(LOCK_P2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(214[24:31])
    defparam LOCK_P2_REG_Z128.GSR = "ENABLED";
    FD1S3DX LOCK_P1_REG_Z130 (.D(locked), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(LOCK_P1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(222[24:31])
    defparam LOCK_P1_REG_Z130.GSR = "ENABLED";
    FD1S3DX FREEZE_REG_Z132 (.D(FREEZEE_0), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(freeze_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(230[23:30])
    defparam FREEZE_REG_Z132.GSR = "ENABLED";
    FD1P3DX CTRL_CNT0_REG_Z134 (.D(CTRL_CNT_N0), .SP(N_161_I), .CK(\clk_s[1] ), 
            .CD(RSTN_I), .Q(CTRL_CNT[0])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(238[26:33])
    defparam CTRL_CNT0_REG_Z134.GSR = "ENABLED";
    FD1P3DX CTRL_CNT1_REG_Z136 (.D(CTRL_CNT_N1), .SP(N_161_I), .CK(\clk_s[1] ), 
            .CD(RSTN_I), .Q(CTRL_CNT[1])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(247[26:33])
    defparam CTRL_CNT1_REG_Z136.GSR = "ENABLED";
    FD1S3DX CTRL_CNT_FAST2_REG_Z138 (.D(CTRL_CNTE_0_FAST[2]), .CK(\clk_s[1] ), 
            .CD(RSTN_I), .Q(CTRL_CNT_FAST[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(256[31:38])
    defparam CTRL_CNT_FAST2_REG_Z138.GSR = "ENABLED";
    FD1S3DX CTRL_CNT2_REG_Z140 (.D(CTRL_CNTE_0[2]), .CK(\clk_s[1] ), .CD(RSTN_I), 
            .Q(CTRL_CNT[2])) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(264[26:33])
    defparam CTRL_CNT2_REG_Z140.GSR = "ENABLED";
    PFUMX CTRL_CNT_N1_0_S_0 (.BLUT(CTRL_CNT_N1_0_S_0_X0), .ALUT(CTRL_CNT_N1_0_S_0_X1), 
          .C0(CTRL_CNT[1]), .Z(CTRL_CNT_N1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(238[21:34])
    FD1S3BX UDDCNTLN_REG_Z104 (.D(UDDCNTLNE_0), .CK(\clk_s[1] ), .PD(RSTN_I), 
            .Q(uddcntln_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(118[25:32])
    defparam UDDCNTLN_REG_Z104.GSR = "ENABLED";
    INV RSTN_RNIB582 (.A(reset_inv), .Z(RSTN_I)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=21, LSE_RCOL=34, LSE_LLINE=238, LSE_RLINE=238 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/ddrx4_gearing.vhd(238[21:34])
    LUT4 i1_4_lut_adj_133 (.A(\reg40[2] ), .B(\reg40[9] ), .C(n10), .D(\reg40[3] ), 
         .Z(n6)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(43[12:17])
    defparam i1_4_lut_adj_133.init = 16'hdfff;
    LUT4 STATE_NS_I_MB_1_0__I_56_2_lut_rep_142 (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .Z(n6190)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_MB_1_0__I_56_2_lut_rep_142.init = 16'h4444;
    LUT4 STATE_NS_I_0_191_2_lut_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), 
         .C(CTRL_CNT_FAST[2]), .Z(N_118_LI)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(307[21:52])
    defparam STATE_NS_I_0_191_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(LOCK_P2), 
         .Z(n4)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(307[21:52])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_134 (.A(\STATE[0] ), .B(CTRL_CNT[0]), .C(n5774), 
         .D(\STATE[5] ), .Z(CTRL_CNT_N0)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_134.init = 16'h1110;
    LUT4 N_172_I_I_0_4_lut (.A(N_118_LI), .B(n4486), .C(\STATE[1] ), .D(STATE[2]), 
         .Z(N_172_I)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(287[17:85])
    defparam N_172_I_I_0_4_lut.init = 16'hb3a0;
    LUT4 i927_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT_FAST[2]), 
         .D(\STATE[0] ), .Z(CTRL_CNTE_0_FAST[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(319[29:56])
    defparam i927_3_lut_4_lut.init = 16'h00f8;
    LUT4 i928_3_lut_4_lut (.A(CTRL_CNT[0]), .B(CTRL_CNT[1]), .C(CTRL_CNT[2]), 
         .D(\STATE[0] ), .Z(CTRL_CNTE_0[2])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/rx_sync.vhd(319[29:56])
    defparam i928_3_lut_4_lut.init = 16'h00f8;
    LUT4 i1762_3_lut_4_lut (.A(\STATE[0] ), .B(CTRL_CNT[0]), .C(\STATE[5] ), 
         .D(CTRL_CNT[2]), .Z(CTRL_CNT_N1_0_S_0_X1)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1762_3_lut_4_lut.init = 16'h1110;
    
endmodule
//
// Verilog Description of module dec_8b10b
//

module dec_8b10b (debug, decoder_out, sclk__inv, control_ind, sclk, 
            data_rdy_i, sclk_derived_94, din_clk_N_1128);
    input [9:0]debug;
    output [7:0]decoder_out;
    input sclk__inv;
    output control_ind;
    input sclk;
    input data_rdy_i;
    output sclk_derived_94;
    output din_clk_N_1128;
    
    wire sclk__inv /* synthesis is_inv_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire sclk /* synthesis is_clock=1 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire sclk_derived_94 /* synthesis is_clock=1, SET_AS_NETWORK=\decoder_inst/sclk_derived_94 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(14[9:13])
    wire din_clk_N_1128 /* synthesis is_clock=1, is_inv_clock=1, SET_AS_NETWORK=\ber_proc/din_clk_N_1128 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    
    wire P31, P13, n6206, n2886, n6191, GO_N_922, n6086, AO_N_928, 
        BO_N_927, CO_N_926, DO_N_925, EO_N_924, FO_N_923, HO_N_921, 
        KO_N_917, OR123_N_990, n6168, n5779, n5, n5806, n6192, 
        n2842, n4, n17, n6202, n14, n6201, IOR134, n6205, n6163, 
        n4_adj_1286, n5733, n5771, OR122_N_983, OR127, P22_N_946, 
        n2856, n6164, n6169, n5820, n2895, n5767, n4_adj_1287, 
        n29, n24;
    
    LUT4 i1_4_lut_then_3_lut (.A(P31), .B(P13), .C(debug[4]), .Z(n6206)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(139[11] 141[47])
    defparam i1_4_lut_then_3_lut.init = 16'haeae;
    LUT4 debug_3__bdd_4_lut_4770 (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(P13)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam debug_3__bdd_4_lut_4770.init = 16'h0116;
    LUT4 XG_I_0_4_lut_4_lut (.A(n2886), .B(debug[6]), .C(n6191), .D(debug[5]), 
         .Z(GO_N_922)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(204[8] 205[11])
    defparam XG_I_0_4_lut_4_lut.init = 16'h6763;
    LUT4 debug_3__bdd_4_lut (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(n6086)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;
    defparam debug_3__bdd_4_lut.init = 16'h1008;
    FD1S3AX AO_223 (.D(AO_N_928), .CK(sclk__inv), .Q(decoder_out[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(166[3] 178[10])
    defparam AO_223.GSR = "ENABLED";
    FD1S3AX BO_224 (.D(BO_N_927), .CK(sclk__inv), .Q(decoder_out[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(166[3] 178[10])
    defparam BO_224.GSR = "ENABLED";
    FD1S3AX CO_225 (.D(CO_N_926), .CK(sclk__inv), .Q(decoder_out[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(166[3] 178[10])
    defparam CO_225.GSR = "ENABLED";
    FD1S3AX DO_226 (.D(DO_N_925), .CK(sclk__inv), .Q(decoder_out[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(166[3] 178[10])
    defparam DO_226.GSR = "ENABLED";
    FD1S3AX EO_227 (.D(EO_N_924), .CK(sclk__inv), .Q(decoder_out[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(166[3] 178[10])
    defparam EO_227.GSR = "ENABLED";
    FD1S3AX FO_228 (.D(FO_N_923), .CK(sclk__inv), .Q(decoder_out[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(212[3] 220[10])
    defparam FO_228.GSR = "ENABLED";
    FD1S3AX GO_229 (.D(GO_N_922), .CK(sclk__inv), .Q(decoder_out[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(212[3] 220[10])
    defparam GO_229.GSR = "ENABLED";
    FD1S3AX HO_230 (.D(HO_N_921), .CK(sclk__inv), .Q(decoder_out[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(212[3] 220[10])
    defparam HO_230.GSR = "ENABLED";
    FD1S3AX KO_222 (.D(KO_N_917), .CK(sclk__inv), .Q(control_ind)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=41, LSE_LLINE=83, LSE_RLINE=83 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(117[3] 121[10])
    defparam KO_222.GSR = "ENABLED";
    LUT4 XB_I_0_3_lut_4_lut (.A(OR123_N_990), .B(debug[1]), .C(n6168), 
         .D(n5779), .Z(BO_N_927)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(139[11] 141[47])
    defparam XB_I_0_3_lut_4_lut.init = 16'h3326;
    LUT4 i1_2_lut (.A(P31), .B(debug[7]), .Z(n5)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i4599_2_lut (.A(debug[9]), .B(debug[6]), .Z(n5806)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4599_2_lut.init = 16'heeee;
    LUT4 i33_4_lut (.A(n6192), .B(n2842), .C(debug[4]), .D(n4), .Z(n17)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam i33_4_lut.init = 16'hcac0;
    LUT4 i34_4_lut (.A(n6202), .B(n5), .C(debug[4]), .D(n5806), .Z(n14)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam i34_4_lut.init = 16'h0aca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n6202), .B(debug[9]), .C(debug[7]), 
         .D(n6201), .Z(IOR134)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0028;
    LUT4 debug_3__bdd_4_lut_4769 (.A(debug[3]), .B(debug[2]), .C(debug[0]), 
         .D(debug[1]), .Z(P31)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam debug_3__bdd_4_lut_4769.init = 16'h6880;
    LUT4 XF_I_0_4_lut (.A(debug[6]), .B(debug[5]), .C(n2886), .D(n6192), 
         .Z(FO_N_923)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(217[10:19])
    defparam XF_I_0_4_lut.init = 16'h323c;
    LUT4 i1_4_lut_else_3_lut (.A(debug[2]), .B(P13), .C(debug[4]), .D(debug[3]), 
         .Z(n6205)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B (C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(139[11] 141[47])
    defparam i1_4_lut_else_3_lut.init = 16'h0c0d;
    LUT4 sclk_N_659_I_0_2_lut_rep_137_2_lut (.A(sclk), .B(data_rdy_i), .Z(sclk_derived_94)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[31:45])
    defparam sclk_N_659_I_0_2_lut_rep_137_2_lut.init = 16'h4444;
    LUT4 din_clk_I_0_1_lut_2_lut_2_lut (.A(sclk), .B(data_rdy_i), .Z(din_clk_N_1128)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/deserializer8_1.vhd(111[31:45])
    defparam din_clk_I_0_1_lut_2_lut_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_143 (.A(debug[9]), .B(debug[7]), .Z(n6191)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_143.init = 16'heeee;
    LUT4 i1_3_lut_rep_115_4_lut (.A(debug[9]), .B(debug[7]), .C(debug[6]), 
         .D(n2886), .Z(n6163)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_rep_115_4_lut.init = 16'hff01;
    PFUMX i32 (.BLUT(n14), .ALUT(n17), .C0(debug[8]), .Z(KO_N_917));
    LUT4 i1_2_lut_rep_144 (.A(debug[9]), .B(debug[7]), .Z(n6192)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam i1_2_lut_rep_144.init = 16'h8888;
    LUT4 XH_I_0_4_lut_4_lut (.A(debug[9]), .B(debug[7]), .C(n6163), .D(debug[5]), 
         .Z(HO_N_921)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam XH_I_0_4_lut_4_lut.init = 16'h343c;
    LUT4 i2_4_lut (.A(debug[6]), .B(n4_adj_1286), .C(n5733), .D(IOR134), 
         .Z(n2886)) /* synthesis lut_function=(A (B+(D))+!A (C+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(202[8] 203[11])
    defparam i2_4_lut.init = 16'hffd8;
    LUT4 i1_2_lut_adj_121 (.A(debug[5]), .B(debug[9]), .Z(n4_adj_1286)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(189[12:28])
    defparam i1_2_lut_adj_121.init = 16'h8888;
    LUT4 XA_I_0_4_lut (.A(n5771), .B(debug[0]), .C(OR122_N_983), .D(OR127), 
         .Z(AO_N_928)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(173[10:19])
    defparam XA_I_0_4_lut.init = 16'h3336;
    LUT4 i1_3_lut (.A(debug[5]), .B(debug[7]), .C(debug[9]), .Z(n5733)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut.init = 16'h5151;
    LUT4 i1_4_lut (.A(P22_N_946), .B(debug[4]), .C(n6086), .D(debug[8]), 
         .Z(n2856)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(129[12:47])
    defparam i1_4_lut.init = 16'hc832;
    LUT4 i1_2_lut_adj_122 (.A(P13), .B(debug[6]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(120[10:27])
    defparam i1_2_lut_adj_122.init = 16'h8888;
    LUT4 i1_2_lut_rep_120 (.A(debug[2]), .B(n2856), .Z(n6168)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(89[8:26])
    defparam i1_2_lut_rep_120.init = 16'h8888;
    LUT4 i1_2_lut_adj_123 (.A(debug[3]), .B(debug[2]), .Z(n2842)) /* synthesis lut_function=(A (B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(88[10:28])
    defparam i1_2_lut_adj_123.init = 16'h8888;
    LUT4 i1_3_lut_rep_116_4_lut (.A(debug[2]), .B(n2856), .C(debug[1]), 
         .D(OR123_N_990), .Z(n6164)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(89[8:26])
    defparam i1_3_lut_rep_116_4_lut.init = 16'hff80;
    LUT4 i4591_2_lut_rep_153 (.A(debug[4]), .B(debug[8]), .Z(n6201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4591_2_lut_rep_153.init = 16'heeee;
    LUT4 i1_2_lut_rep_121 (.A(n2856), .B(debug[2]), .Z(n6169)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(129[12:47])
    defparam i1_2_lut_rep_121.init = 16'h2222;
    LUT4 i4613_2_lut_3_lut (.A(debug[4]), .B(debug[8]), .C(debug[0]), 
         .Z(n5820)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4613_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut (.A(n2856), .B(debug[2]), .C(debug[0]), .D(n2895), 
         .Z(n5771)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(129[12:47])
    defparam i1_3_lut_4_lut.init = 16'hff02;
    LUT4 i2_3_lut_4_lut (.A(debug[4]), .B(debug[8]), .C(P13), .D(debug[3]), 
         .Z(OR123_N_990)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(111[9:53])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 OR123_N_990_I_0_3_lut_4_lut (.A(n2856), .B(debug[2]), .C(debug[1]), 
         .D(OR123_N_990), .Z(OR127)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(129[12:47])
    defparam OR123_N_990_I_0_3_lut_4_lut.init = 16'hff02;
    LUT4 ANEB_I_0_236_2_lut_3_lut_4_lut (.A(debug[0]), .B(debug[1]), .C(debug[3]), 
         .D(debug[2]), .Z(P22_N_946)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(96[11:20])
    defparam ANEB_I_0_236_2_lut_3_lut_4_lut.init = 16'h0660;
    LUT4 i1_2_lut_3_lut_4_lut (.A(debug[1]), .B(debug[0]), .C(debug[8]), 
         .D(debug[4]), .Z(OR122_N_983)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(89[8:26])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i4717_2_lut_rep_154 (.A(debug[2]), .B(debug[3]), .Z(n6202)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4717_2_lut_rep_154.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_124 (.A(debug[0]), .B(debug[1]), .C(debug[8]), 
         .D(debug[4]), .Z(n5767)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_124.init = 16'hfffe;
    LUT4 i2_4_lut_adj_125 (.A(debug[0]), .B(n2895), .C(n6168), .D(OR122_N_983), 
         .Z(n5779)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(131[11] 133[18])
    defparam i2_4_lut_adj_125.init = 16'hffec;
    LUT4 XC_I_0_4_lut (.A(n6164), .B(debug[2]), .C(n5767), .D(n5771), 
         .Z(CO_N_926)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(175[10:19])
    defparam XC_I_0_4_lut.init = 16'h3363;
    LUT4 XD_I_0_3_lut (.A(OR127), .B(debug[3]), .C(n5779), .Z(DO_N_925)) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(176[10:19])
    defparam XD_I_0_3_lut.init = 16'h3636;
    LUT4 XE_I_0_4_lut (.A(debug[2]), .B(debug[4]), .C(n4_adj_1287), .D(n29), 
         .Z(EO_N_924)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C+(D))+!B !(C+(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(177[10:19])
    defparam XE_I_0_4_lut.init = 16'h393c;
    LUT4 i1_4_lut_adj_126 (.A(n24), .B(debug[1]), .C(n5820), .D(n6169), 
         .Z(n4_adj_1287)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(131[11] 133[18])
    defparam i1_4_lut_adj_126.init = 16'hbbab;
    LUT4 i1_4_lut_adj_127 (.A(debug[3]), .B(debug[0]), .C(n6201), .D(n2856), 
         .Z(n29)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !((D)+!C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(131[11] 133[18])
    defparam i1_4_lut_adj_127.init = 16'h3705;
    LUT4 i1_4_lut_adj_128 (.A(P13), .B(debug[4]), .C(debug[3]), .D(debug[8]), 
         .Z(n24)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/dec_8b10b.vhd(131[11] 133[18])
    defparam i1_4_lut_adj_128.init = 16'ha2aa;
    PFUMX i4822 (.BLUT(n6205), .ALUT(n6206), .C0(debug[8]), .Z(n2895));
    
endmodule
