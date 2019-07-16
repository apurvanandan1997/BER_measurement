// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Jul 13 09:16:35 2019
//
// Verilog Description of module calc_ber
//

module calc_ber (byte_recvd, din_clk, byte_actual, ce, reset, ber);   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(19[8:16])
    input [7:0]byte_recvd;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    input din_clk;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(22[9:16])
    input [7:0]byte_actual;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    input ce;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(24[9:11])
    input reset;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(25[9:14])
    output [63:0]ber;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    
    wire din_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=din_clk_c */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(22[9:16])
    
    wire GND_net, VCC_net, byte_recvd_c_7, byte_recvd_c_6, byte_recvd_c_5, 
        byte_recvd_c_4, byte_recvd_c_3, byte_recvd_c_2, byte_recvd_c_1, 
        byte_recvd_c_0, byte_actual_c_7, byte_actual_c_6, byte_actual_c_5, 
        byte_actual_c_4, byte_actual_c_3, byte_actual_c_2, byte_actual_c_1, 
        byte_actual_c_0, ce_c, reset_c, ber_c_63, ber_c_62, ber_c_61, 
        ber_c_60, ber_c_59, ber_c_58, ber_c_57, ber_c_56, ber_c_55, 
        ber_c_54, ber_c_53, ber_c_52, ber_c_51, ber_c_50, ber_c_49, 
        ber_c_48, ber_c_47, ber_c_46, ber_c_45, ber_c_44, ber_c_43, 
        ber_c_42, ber_c_41, ber_c_40, ber_c_39, ber_c_38, ber_c_37, 
        ber_c_36, ber_c_35, ber_c_34, ber_c_33, ber_c_32, ber_c_31, 
        ber_c_30, ber_c_29, ber_c_28, ber_c_27, ber_c_26, ber_c_25, 
        ber_c_24, ber_c_23, ber_c_22, ber_c_21, ber_c_20, ber_c_19, 
        ber_c_18, ber_c_17, ber_c_16, ber_c_15, ber_c_14, ber_c_13, 
        ber_c_12, ber_c_11, ber_c_10, ber_c_9, ber_c_8, ber_c_7, 
        ber_c_6, ber_c_5, ber_c_4, ber_c_3, ber_c_2, ber_c_1, ber_c_0, 
        n115;
    wire [60:0]count_bytes;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(34[12:23])
    wire [63:0]total_err_bits;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(35[12:26])
    
    wire n88, din_clk_c_enable_64, n917;
    wire [60:0]count_bytes_60__N_198;
    
    wire n130, n131, n132, n133, n134, n135, n136, n137, n138, 
        n139, n140, n141, n142, n143, n144, n145, n146, n147, 
        n148, n149, n150, n151, n152, n153, n154, n155, n156, 
        n157, n158, n159, n160, n161, n162, n163, n164, n165, 
        n166, n167, n168, n169, n170, n171, n172, n173, n174, 
        n175, n176, n177, n178, n179, n180, n181, n182, n183, 
        n184, n185, n186, n187, n188, n189, n190, n191, n192, 
        n193, n114, n112, n110, n109, n108, n106, n104, n1286, 
        n1285, n1284, n1283, n1282, n1281, n1280, n1279, n1278, 
        n1277, n1276, n1275, n1274, n1273, n1272, n1271, n1270, 
        n1269, n1268, n1267, n1266, n1265, n1264, n1263, n1262, 
        n1261, n1260, n1259, n1258, n1257, n1256, n1255, n1253, 
        n1252, n1251, n1250, n1249, n1248, n1247, n1246, n1245, 
        n1244, n1243, n1242, n1241, n1240, n1239, n1238, n1237, 
        n1236, n1235, n1234, n1233, n1232, n1231, n1230, n1229, 
        n1228, n1227, n1226, n1225, n959, n955, n1217, n102, 
        n84, n72, n83, n100, n80, n99, n68, n98, n96, n64, 
        n94, n120, n1381, n1380, n1379, n1378, n118, n1377, 
        n1376, n92, n1375, n1224, n1374, n1373, n1372, n1371, 
        n4, n4_adj_1, n1370, n1369, n4_adj_2, n1368, n904, n1367, 
        n1366, n1365;
    
    VHI i2 (.Z(VCC_net));
    OB ber_pad_63 (.I(ber_c_63), .O(ber[63]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    FD1S3IX total_err_bits__i0 (.D(n193), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[0])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i0.GSR = "ENABLED";
    FD1S3IX count_bytes__i0 (.D(count_bytes_60__N_198[0]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[0])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i0.GSR = "ENABLED";
    FD1P3AX ber_i0_i2 (.D(total_err_bits[1]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_1));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i2.GSR = "ENABLED";
    FD1P3AX ber_i0_i1 (.D(total_err_bits[0]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_0));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i1.GSR = "ENABLED";
    LUT4 i103_2_lut_rep_7_3_lut_4_lut (.A(byte_actual_c_0), .B(byte_recvd_c_0), 
         .C(byte_recvd_c_1), .D(byte_actual_c_1), .Z(n1371)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i103_2_lut_rep_7_3_lut_4_lut.init = 16'h6996;
    LUT4 i172_3_lut_rep_1_4_lut (.A(n904), .B(n1372), .C(n1367), .D(n955), 
         .Z(n1365)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i172_3_lut_rep_1_4_lut.init = 16'hf600;
    LUT4 i39_4_lut (.A(count_bytes[49]), .B(count_bytes[5]), .C(count_bytes[53]), 
         .D(count_bytes[8]), .Z(n100)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i39_4_lut.init = 16'h8000;
    LUT4 i22_2_lut (.A(count_bytes[36]), .B(count_bytes[40]), .Z(n83)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22_2_lut.init = 16'h8888;
    LUT4 byte_actual_7__I_0_i4_2_lut_rep_15 (.A(byte_actual_c_3), .B(byte_recvd_c_3), 
         .Z(n1379)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i4_2_lut_rep_15.init = 16'h6666;
    LUT4 i80_2_lut_4_lut_3_lut_4_lut (.A(n904), .B(n1372), .C(n955), .D(n1367), 
         .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i80_2_lut_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i60_4_lut (.A(n115), .B(n120), .C(n109), .D(n110), .Z(n1217)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i60_4_lut.init = 16'h8000;
    LUT4 i94_4_lut_3_lut_rep_8_4_lut (.A(byte_actual_c_3), .B(byte_recvd_c_3), 
         .C(n1371), .D(n1380), .Z(n1372)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i94_4_lut_3_lut_rep_8_4_lut.init = 16'hf660;
    LUT4 byte_actual_7__I_0_i3_2_lut_rep_16 (.A(byte_actual_c_2), .B(byte_recvd_c_2), 
         .Z(n1380)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i3_2_lut_rep_16.init = 16'h6666;
    LUT4 i1_2_lut_4_lut (.A(n1375), .B(n1374), .C(n1373), .D(n1376), 
         .Z(n4_adj_2)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i1_2_lut_4_lut.init = 16'h6996;
    LUT4 i53_4_lut (.A(count_bytes[41]), .B(n106), .C(n88), .D(count_bytes[47]), 
         .Z(n114)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i53_4_lut.init = 16'h8000;
    LUT4 i43_4_lut (.A(count_bytes[57]), .B(count_bytes[19]), .C(count_bytes[10]), 
         .D(count_bytes[39]), .Z(n104)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i43_4_lut.init = 16'h8000;
    LUT4 i23_2_lut (.A(count_bytes[43]), .B(count_bytes[55]), .Z(n84)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_5_4_lut (.A(n1378), .B(n1377), .C(n1380), .D(n1379), 
         .Z(n1369)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i2_3_lut_rep_5_4_lut.init = 16'h6996;
    LUT4 reset_I_0_2_lut_rep_17 (.A(reset_c), .B(ce_c), .Z(n1381)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(61[16:39])
    defparam reset_I_0_2_lut_rep_17.init = 16'hbbbb;
    LUT4 i344_2_lut_2_lut_3_lut (.A(reset_c), .B(ce_c), .C(n1217), .Z(din_clk_c_enable_64)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(61[16:39])
    defparam i344_2_lut_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut (.A(reset_c), .B(ce_c), .C(n1217), .Z(n917)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(61[16:39])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i35_4_lut (.A(count_bytes[18]), .B(count_bytes[3]), .C(count_bytes[45]), 
         .D(count_bytes[7]), .Z(n96)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i35_4_lut.init = 16'h8000;
    LUT4 i7_2_lut (.A(count_bytes[9]), .B(count_bytes[16]), .Z(n68)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i37_4_lut (.A(count_bytes[50]), .B(count_bytes[12]), .C(count_bytes[6]), 
         .D(count_bytes[13]), .Z(n98)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i37_4_lut.init = 16'h8000;
    LUT4 i11_2_lut (.A(count_bytes[42]), .B(count_bytes[48]), .Z(n72)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11_2_lut.init = 16'h8888;
    LUT4 i41_4_lut (.A(count_bytes[30]), .B(count_bytes[21]), .C(count_bytes[59]), 
         .D(count_bytes[25]), .Z(n102)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i41_4_lut.init = 16'h8000;
    LUT4 i59_4_lut (.A(n99), .B(n118), .C(n112), .D(n100), .Z(n120)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i59_4_lut.init = 16'h8000;
    LUT4 i96_2_lut_rep_4_4_lut (.A(n1380), .B(n1379), .C(n1371), .D(n904), 
         .Z(n1368)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i96_2_lut_rep_4_4_lut.init = 16'h17e8;
    LUT4 i48_4_lut (.A(count_bytes[34]), .B(n96), .C(n68), .D(count_bytes[2]), 
         .Z(n109)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i48_4_lut.init = 16'h8000;
    LUT4 i98_2_lut_4_lut (.A(n1380), .B(n1379), .C(n1371), .D(n904), 
         .Z(n959)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i98_2_lut_4_lut.init = 16'he800;
    LUT4 i78_2_lut_rep_2_4_lut (.A(n1369), .B(n1376), .C(n1370), .D(n1368), 
         .Z(n1366)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i78_2_lut_rep_2_4_lut.init = 16'he800;
    LUT4 byte_actual_7__I_0_i7_2_lut_rep_9 (.A(byte_actual_c_6), .B(byte_recvd_c_6), 
         .Z(n1373)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i7_2_lut_rep_9.init = 16'h6666;
    LUT4 i2_3_lut_rep_6_4_lut (.A(byte_actual_c_6), .B(byte_recvd_c_6), 
         .C(n1374), .D(n1375), .Z(n1370)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i2_3_lut_rep_6_4_lut.init = 16'h6996;
    LUT4 i49_4_lut (.A(count_bytes[0]), .B(n98), .C(n72), .D(count_bytes[27]), 
         .Z(n110)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i49_4_lut.init = 16'h8000;
    CCU2D add_19_65 (.A0(total_err_bits[63]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1286), .S0(n130));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_65.INIT0 = 16'h5aaa;
    defparam add_19_65.INIT1 = 16'h0000;
    defparam add_19_65.INJECT1_0 = "NO";
    defparam add_19_65.INJECT1_1 = "NO";
    CCU2D add_19_63 (.A0(total_err_bits[61]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[62]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1285), .COUT(n1286), .S0(n132), .S1(n131));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_63.INIT0 = 16'h5aaa;
    defparam add_19_63.INIT1 = 16'h5aaa;
    defparam add_19_63.INJECT1_0 = "NO";
    defparam add_19_63.INJECT1_1 = "NO";
    CCU2D add_19_61 (.A0(total_err_bits[59]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[60]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1284), .COUT(n1285), .S0(n134), .S1(n133));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_61.INIT0 = 16'h5aaa;
    defparam add_19_61.INIT1 = 16'h5aaa;
    defparam add_19_61.INJECT1_0 = "NO";
    defparam add_19_61.INJECT1_1 = "NO";
    CCU2D add_19_59 (.A0(total_err_bits[57]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[58]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1283), .COUT(n1284), .S0(n136), .S1(n135));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_59.INIT0 = 16'h5aaa;
    defparam add_19_59.INIT1 = 16'h5aaa;
    defparam add_19_59.INJECT1_0 = "NO";
    defparam add_19_59.INJECT1_1 = "NO";
    CCU2D add_19_57 (.A0(total_err_bits[55]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[56]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1282), .COUT(n1283), .S0(n138), .S1(n137));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_57.INIT0 = 16'h5aaa;
    defparam add_19_57.INIT1 = 16'h5aaa;
    defparam add_19_57.INJECT1_0 = "NO";
    defparam add_19_57.INJECT1_1 = "NO";
    CCU2D add_19_55 (.A0(total_err_bits[53]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[54]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1281), .COUT(n1282), .S0(n140), .S1(n139));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_55.INIT0 = 16'h5aaa;
    defparam add_19_55.INIT1 = 16'h5aaa;
    defparam add_19_55.INJECT1_0 = "NO";
    defparam add_19_55.INJECT1_1 = "NO";
    CCU2D add_19_53 (.A0(total_err_bits[51]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[52]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1280), .COUT(n1281), .S0(n142), .S1(n141));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_53.INIT0 = 16'h5aaa;
    defparam add_19_53.INIT1 = 16'h5aaa;
    defparam add_19_53.INJECT1_0 = "NO";
    defparam add_19_53.INJECT1_1 = "NO";
    CCU2D add_19_51 (.A0(total_err_bits[49]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[50]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1279), .COUT(n1280), .S0(n144), .S1(n143));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_51.INIT0 = 16'h5aaa;
    defparam add_19_51.INIT1 = 16'h5aaa;
    defparam add_19_51.INJECT1_0 = "NO";
    defparam add_19_51.INJECT1_1 = "NO";
    CCU2D add_19_49 (.A0(total_err_bits[47]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[48]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1278), .COUT(n1279), .S0(n146), .S1(n145));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_49.INIT0 = 16'h5aaa;
    defparam add_19_49.INIT1 = 16'h5aaa;
    defparam add_19_49.INJECT1_0 = "NO";
    defparam add_19_49.INJECT1_1 = "NO";
    CCU2D add_19_47 (.A0(total_err_bits[45]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[46]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1277), .COUT(n1278), .S0(n148), .S1(n147));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_47.INIT0 = 16'h5aaa;
    defparam add_19_47.INIT1 = 16'h5aaa;
    defparam add_19_47.INJECT1_0 = "NO";
    defparam add_19_47.INJECT1_1 = "NO";
    CCU2D add_19_45 (.A0(total_err_bits[43]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[44]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1276), .COUT(n1277), .S0(n150), .S1(n149));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_45.INIT0 = 16'h5aaa;
    defparam add_19_45.INIT1 = 16'h5aaa;
    defparam add_19_45.INJECT1_0 = "NO";
    defparam add_19_45.INJECT1_1 = "NO";
    CCU2D add_19_43 (.A0(total_err_bits[41]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[42]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1275), .COUT(n1276), .S0(n152), .S1(n151));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_43.INIT0 = 16'h5aaa;
    defparam add_19_43.INIT1 = 16'h5aaa;
    defparam add_19_43.INJECT1_0 = "NO";
    defparam add_19_43.INJECT1_1 = "NO";
    CCU2D add_19_41 (.A0(total_err_bits[39]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[40]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1274), .COUT(n1275), .S0(n154), .S1(n153));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_41.INIT0 = 16'h5aaa;
    defparam add_19_41.INIT1 = 16'h5aaa;
    defparam add_19_41.INJECT1_0 = "NO";
    defparam add_19_41.INJECT1_1 = "NO";
    CCU2D add_19_39 (.A0(total_err_bits[37]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[38]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1273), .COUT(n1274), .S0(n156), .S1(n155));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_39.INIT0 = 16'h5aaa;
    defparam add_19_39.INIT1 = 16'h5aaa;
    defparam add_19_39.INJECT1_0 = "NO";
    defparam add_19_39.INJECT1_1 = "NO";
    CCU2D add_19_37 (.A0(total_err_bits[35]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[36]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1272), .COUT(n1273), .S0(n158), .S1(n157));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_37.INIT0 = 16'h5aaa;
    defparam add_19_37.INIT1 = 16'h5aaa;
    defparam add_19_37.INJECT1_0 = "NO";
    defparam add_19_37.INJECT1_1 = "NO";
    CCU2D add_19_35 (.A0(total_err_bits[33]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[34]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1271), .COUT(n1272), .S0(n160), .S1(n159));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_35.INIT0 = 16'h5aaa;
    defparam add_19_35.INIT1 = 16'h5aaa;
    defparam add_19_35.INJECT1_0 = "NO";
    defparam add_19_35.INJECT1_1 = "NO";
    CCU2D add_19_33 (.A0(total_err_bits[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[32]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1270), .COUT(n1271), .S0(n162), .S1(n161));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_33.INIT0 = 16'h5aaa;
    defparam add_19_33.INIT1 = 16'h5aaa;
    defparam add_19_33.INJECT1_0 = "NO";
    defparam add_19_33.INJECT1_1 = "NO";
    CCU2D add_19_31 (.A0(total_err_bits[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1269), .COUT(n1270), .S0(n164), .S1(n163));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_31.INIT0 = 16'h5aaa;
    defparam add_19_31.INIT1 = 16'h5aaa;
    defparam add_19_31.INJECT1_0 = "NO";
    defparam add_19_31.INJECT1_1 = "NO";
    CCU2D add_19_29 (.A0(total_err_bits[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1268), .COUT(n1269), .S0(n166), .S1(n165));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_29.INIT0 = 16'h5aaa;
    defparam add_19_29.INIT1 = 16'h5aaa;
    defparam add_19_29.INJECT1_0 = "NO";
    defparam add_19_29.INJECT1_1 = "NO";
    CCU2D add_19_27 (.A0(total_err_bits[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1267), .COUT(n1268), .S0(n168), .S1(n167));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_27.INIT0 = 16'h5aaa;
    defparam add_19_27.INIT1 = 16'h5aaa;
    defparam add_19_27.INJECT1_0 = "NO";
    defparam add_19_27.INJECT1_1 = "NO";
    CCU2D add_19_25 (.A0(total_err_bits[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1266), .COUT(n1267), .S0(n170), .S1(n169));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_25.INIT0 = 16'h5aaa;
    defparam add_19_25.INIT1 = 16'h5aaa;
    defparam add_19_25.INJECT1_0 = "NO";
    defparam add_19_25.INJECT1_1 = "NO";
    CCU2D add_19_23 (.A0(total_err_bits[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1265), .COUT(n1266), .S0(n172), .S1(n171));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_23.INIT0 = 16'h5aaa;
    defparam add_19_23.INIT1 = 16'h5aaa;
    defparam add_19_23.INJECT1_0 = "NO";
    defparam add_19_23.INJECT1_1 = "NO";
    CCU2D add_19_21 (.A0(total_err_bits[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1264), .COUT(n1265), .S0(n174), .S1(n173));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_21.INIT0 = 16'h5aaa;
    defparam add_19_21.INIT1 = 16'h5aaa;
    defparam add_19_21.INJECT1_0 = "NO";
    defparam add_19_21.INJECT1_1 = "NO";
    CCU2D add_19_19 (.A0(total_err_bits[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1263), .COUT(n1264), .S0(n176), .S1(n175));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_19.INIT0 = 16'h5aaa;
    defparam add_19_19.INIT1 = 16'h5aaa;
    defparam add_19_19.INJECT1_0 = "NO";
    defparam add_19_19.INJECT1_1 = "NO";
    CCU2D add_19_17 (.A0(total_err_bits[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1262), .COUT(n1263), .S0(n178), .S1(n177));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_17.INIT0 = 16'h5aaa;
    defparam add_19_17.INIT1 = 16'h5aaa;
    defparam add_19_17.INJECT1_0 = "NO";
    defparam add_19_17.INJECT1_1 = "NO";
    CCU2D add_19_15 (.A0(total_err_bits[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1261), .COUT(n1262), .S0(n180), .S1(n179));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_15.INIT0 = 16'h5aaa;
    defparam add_19_15.INIT1 = 16'h5aaa;
    defparam add_19_15.INJECT1_0 = "NO";
    defparam add_19_15.INJECT1_1 = "NO";
    CCU2D add_19_13 (.A0(total_err_bits[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1260), .COUT(n1261), .S0(n182), .S1(n181));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_13.INIT0 = 16'h5aaa;
    defparam add_19_13.INIT1 = 16'h5aaa;
    defparam add_19_13.INJECT1_0 = "NO";
    defparam add_19_13.INJECT1_1 = "NO";
    CCU2D add_19_11 (.A0(total_err_bits[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1259), .COUT(n1260), .S0(n184), .S1(n183));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_11.INIT0 = 16'h5aaa;
    defparam add_19_11.INIT1 = 16'h5aaa;
    defparam add_19_11.INJECT1_0 = "NO";
    defparam add_19_11.INJECT1_1 = "NO";
    CCU2D add_19_9 (.A0(total_err_bits[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1258), .COUT(n1259), .S0(n186), .S1(n185));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_9.INIT0 = 16'h5aaa;
    defparam add_19_9.INIT1 = 16'h5aaa;
    defparam add_19_9.INJECT1_0 = "NO";
    defparam add_19_9.INJECT1_1 = "NO";
    CCU2D add_19_7 (.A0(total_err_bits[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(total_err_bits[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1257), .COUT(n1258), .S0(n188), .S1(n187));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_7.INIT0 = 16'h5aaa;
    defparam add_19_7.INIT1 = 16'h5aaa;
    defparam add_19_7.INJECT1_0 = "NO";
    defparam add_19_7.INJECT1_1 = "NO";
    CCU2D add_19_5 (.A0(total_err_bits[3]), .B0(n1366), .C0(n1365), .D0(n959), 
          .A1(total_err_bits[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1256), .COUT(n1257), .S0(n190), .S1(n189));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_5.INIT0 = 16'h56aa;
    defparam add_19_5.INIT1 = 16'h5aaa;
    defparam add_19_5.INJECT1_0 = "NO";
    defparam add_19_5.INJECT1_1 = "NO";
    CCU2D add_19_3 (.A0(n1368), .B0(n4), .C0(total_err_bits[1]), .D0(GND_net), 
          .A1(n959), .B1(n4_adj_1), .C1(total_err_bits[2]), .D1(GND_net), 
          .CIN(n1255), .COUT(n1256), .S0(n192), .S1(n191));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_3.INIT0 = 16'h9696;
    defparam add_19_3.INIT1 = 16'h9696;
    defparam add_19_3.INJECT1_0 = "NO";
    defparam add_19_3.INJECT1_1 = "NO";
    CCU2D add_19_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1369), .B1(n4_adj_2), .C1(total_err_bits[0]), .D1(GND_net), 
          .COUT(n1255), .S1(n193));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_19_1.INIT0 = 16'hF000;
    defparam add_19_1.INIT1 = 16'h9696;
    defparam add_19_1.INJECT1_0 = "NO";
    defparam add_19_1.INJECT1_1 = "NO";
    CCU2D add_17_61 (.A0(count_bytes[59]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[60]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1253), .S0(count_bytes_60__N_198[59]), .S1(count_bytes_60__N_198[60]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_61.INIT0 = 16'h5aaa;
    defparam add_17_61.INIT1 = 16'h5aaa;
    defparam add_17_61.INJECT1_0 = "NO";
    defparam add_17_61.INJECT1_1 = "NO";
    LUT4 i66_4_lut_3_lut_4_lut (.A(byte_actual_c_6), .B(byte_recvd_c_6), 
         .C(n1375), .D(n1374), .Z(n955)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i66_4_lut_3_lut_4_lut.init = 16'hf660;
    CCU2D add_17_59 (.A0(count_bytes[57]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[58]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1252), .COUT(n1253), .S0(count_bytes_60__N_198[57]), 
          .S1(count_bytes_60__N_198[58]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_59.INIT0 = 16'h5aaa;
    defparam add_17_59.INIT1 = 16'h5aaa;
    defparam add_17_59.INJECT1_0 = "NO";
    defparam add_17_59.INJECT1_1 = "NO";
    CCU2D add_17_57 (.A0(count_bytes[55]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[56]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1251), .COUT(n1252), .S0(count_bytes_60__N_198[55]), 
          .S1(count_bytes_60__N_198[56]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_57.INIT0 = 16'h5aaa;
    defparam add_17_57.INIT1 = 16'h5aaa;
    defparam add_17_57.INJECT1_0 = "NO";
    defparam add_17_57.INJECT1_1 = "NO";
    CCU2D add_17_55 (.A0(count_bytes[53]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[54]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1250), .COUT(n1251), .S0(count_bytes_60__N_198[53]), 
          .S1(count_bytes_60__N_198[54]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_55.INIT0 = 16'h5aaa;
    defparam add_17_55.INIT1 = 16'h5aaa;
    defparam add_17_55.INJECT1_0 = "NO";
    defparam add_17_55.INJECT1_1 = "NO";
    CCU2D add_17_53 (.A0(count_bytes[51]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[52]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1249), .COUT(n1250), .S0(count_bytes_60__N_198[51]), 
          .S1(count_bytes_60__N_198[52]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_53.INIT0 = 16'h5aaa;
    defparam add_17_53.INIT1 = 16'h5aaa;
    defparam add_17_53.INJECT1_0 = "NO";
    defparam add_17_53.INJECT1_1 = "NO";
    CCU2D add_17_51 (.A0(count_bytes[49]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[50]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1248), .COUT(n1249), .S0(count_bytes_60__N_198[49]), 
          .S1(count_bytes_60__N_198[50]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_51.INIT0 = 16'h5aaa;
    defparam add_17_51.INIT1 = 16'h5aaa;
    defparam add_17_51.INJECT1_0 = "NO";
    defparam add_17_51.INJECT1_1 = "NO";
    CCU2D add_17_49 (.A0(count_bytes[47]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[48]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1247), .COUT(n1248), .S0(count_bytes_60__N_198[47]), 
          .S1(count_bytes_60__N_198[48]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_49.INIT0 = 16'h5aaa;
    defparam add_17_49.INIT1 = 16'h5aaa;
    defparam add_17_49.INJECT1_0 = "NO";
    defparam add_17_49.INJECT1_1 = "NO";
    CCU2D add_17_47 (.A0(count_bytes[45]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[46]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1246), .COUT(n1247), .S0(count_bytes_60__N_198[45]), 
          .S1(count_bytes_60__N_198[46]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_47.INIT0 = 16'h5aaa;
    defparam add_17_47.INIT1 = 16'h5aaa;
    defparam add_17_47.INJECT1_0 = "NO";
    defparam add_17_47.INJECT1_1 = "NO";
    CCU2D add_17_45 (.A0(count_bytes[43]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[44]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1245), .COUT(n1246), .S0(count_bytes_60__N_198[43]), 
          .S1(count_bytes_60__N_198[44]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_45.INIT0 = 16'h5aaa;
    defparam add_17_45.INIT1 = 16'h5aaa;
    defparam add_17_45.INJECT1_0 = "NO";
    defparam add_17_45.INJECT1_1 = "NO";
    CCU2D add_17_43 (.A0(count_bytes[41]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[42]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1244), .COUT(n1245), .S0(count_bytes_60__N_198[41]), 
          .S1(count_bytes_60__N_198[42]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_43.INIT0 = 16'h5aaa;
    defparam add_17_43.INIT1 = 16'h5aaa;
    defparam add_17_43.INJECT1_0 = "NO";
    defparam add_17_43.INJECT1_1 = "NO";
    CCU2D add_17_41 (.A0(count_bytes[39]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[40]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1243), .COUT(n1244), .S0(count_bytes_60__N_198[39]), 
          .S1(count_bytes_60__N_198[40]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_41.INIT0 = 16'h5aaa;
    defparam add_17_41.INIT1 = 16'h5aaa;
    defparam add_17_41.INJECT1_0 = "NO";
    defparam add_17_41.INJECT1_1 = "NO";
    CCU2D add_17_39 (.A0(count_bytes[37]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[38]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1242), .COUT(n1243), .S0(count_bytes_60__N_198[37]), 
          .S1(count_bytes_60__N_198[38]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_39.INIT0 = 16'h5aaa;
    defparam add_17_39.INIT1 = 16'h5aaa;
    defparam add_17_39.INJECT1_0 = "NO";
    defparam add_17_39.INJECT1_1 = "NO";
    CCU2D add_17_37 (.A0(count_bytes[35]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[36]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1241), .COUT(n1242), .S0(count_bytes_60__N_198[35]), 
          .S1(count_bytes_60__N_198[36]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_37.INIT0 = 16'h5aaa;
    defparam add_17_37.INIT1 = 16'h5aaa;
    defparam add_17_37.INJECT1_0 = "NO";
    defparam add_17_37.INJECT1_1 = "NO";
    CCU2D add_17_35 (.A0(count_bytes[33]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[34]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1240), .COUT(n1241), .S0(count_bytes_60__N_198[33]), 
          .S1(count_bytes_60__N_198[34]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_35.INIT0 = 16'h5aaa;
    defparam add_17_35.INIT1 = 16'h5aaa;
    defparam add_17_35.INJECT1_0 = "NO";
    defparam add_17_35.INJECT1_1 = "NO";
    CCU2D add_17_33 (.A0(count_bytes[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[32]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1239), .COUT(n1240), .S0(count_bytes_60__N_198[31]), 
          .S1(count_bytes_60__N_198[32]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_33.INIT0 = 16'h5aaa;
    defparam add_17_33.INIT1 = 16'h5aaa;
    defparam add_17_33.INJECT1_0 = "NO";
    defparam add_17_33.INJECT1_1 = "NO";
    CCU2D add_17_31 (.A0(count_bytes[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1238), .COUT(n1239), .S0(count_bytes_60__N_198[29]), 
          .S1(count_bytes_60__N_198[30]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_31.INIT0 = 16'h5aaa;
    defparam add_17_31.INIT1 = 16'h5aaa;
    defparam add_17_31.INJECT1_0 = "NO";
    defparam add_17_31.INJECT1_1 = "NO";
    CCU2D add_17_29 (.A0(count_bytes[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1237), .COUT(n1238), .S0(count_bytes_60__N_198[27]), 
          .S1(count_bytes_60__N_198[28]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_29.INIT0 = 16'h5aaa;
    defparam add_17_29.INIT1 = 16'h5aaa;
    defparam add_17_29.INJECT1_0 = "NO";
    defparam add_17_29.INJECT1_1 = "NO";
    CCU2D add_17_27 (.A0(count_bytes[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1236), .COUT(n1237), .S0(count_bytes_60__N_198[25]), 
          .S1(count_bytes_60__N_198[26]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_27.INIT0 = 16'h5aaa;
    defparam add_17_27.INIT1 = 16'h5aaa;
    defparam add_17_27.INJECT1_0 = "NO";
    defparam add_17_27.INJECT1_1 = "NO";
    CCU2D add_17_25 (.A0(count_bytes[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1235), .COUT(n1236), .S0(count_bytes_60__N_198[23]), 
          .S1(count_bytes_60__N_198[24]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_25.INIT0 = 16'h5aaa;
    defparam add_17_25.INIT1 = 16'h5aaa;
    defparam add_17_25.INJECT1_0 = "NO";
    defparam add_17_25.INJECT1_1 = "NO";
    CCU2D add_17_23 (.A0(count_bytes[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1234), .COUT(n1235), .S0(count_bytes_60__N_198[21]), 
          .S1(count_bytes_60__N_198[22]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_23.INIT0 = 16'h5aaa;
    defparam add_17_23.INIT1 = 16'h5aaa;
    defparam add_17_23.INJECT1_0 = "NO";
    defparam add_17_23.INJECT1_1 = "NO";
    CCU2D add_17_21 (.A0(count_bytes[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1233), .COUT(n1234), .S0(count_bytes_60__N_198[19]), 
          .S1(count_bytes_60__N_198[20]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_21.INIT0 = 16'h5aaa;
    defparam add_17_21.INIT1 = 16'h5aaa;
    defparam add_17_21.INJECT1_0 = "NO";
    defparam add_17_21.INJECT1_1 = "NO";
    CCU2D add_17_19 (.A0(count_bytes[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1232), .COUT(n1233), .S0(count_bytes_60__N_198[17]), 
          .S1(count_bytes_60__N_198[18]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_19.INIT0 = 16'h5aaa;
    defparam add_17_19.INIT1 = 16'h5aaa;
    defparam add_17_19.INJECT1_0 = "NO";
    defparam add_17_19.INJECT1_1 = "NO";
    CCU2D add_17_17 (.A0(count_bytes[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1231), .COUT(n1232), .S0(count_bytes_60__N_198[15]), 
          .S1(count_bytes_60__N_198[16]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_17.INIT0 = 16'h5aaa;
    defparam add_17_17.INIT1 = 16'h5aaa;
    defparam add_17_17.INJECT1_0 = "NO";
    defparam add_17_17.INJECT1_1 = "NO";
    CCU2D add_17_15 (.A0(count_bytes[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1230), .COUT(n1231), .S0(count_bytes_60__N_198[13]), 
          .S1(count_bytes_60__N_198[14]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_15.INIT0 = 16'h5aaa;
    defparam add_17_15.INIT1 = 16'h5aaa;
    defparam add_17_15.INJECT1_0 = "NO";
    defparam add_17_15.INJECT1_1 = "NO";
    CCU2D add_17_13 (.A0(count_bytes[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1229), .COUT(n1230), .S0(count_bytes_60__N_198[11]), 
          .S1(count_bytes_60__N_198[12]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_13.INIT0 = 16'h5aaa;
    defparam add_17_13.INIT1 = 16'h5aaa;
    defparam add_17_13.INJECT1_0 = "NO";
    defparam add_17_13.INJECT1_1 = "NO";
    CCU2D add_17_11 (.A0(count_bytes[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_bytes[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1228), .COUT(n1229), .S0(count_bytes_60__N_198[9]), 
          .S1(count_bytes_60__N_198[10]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_11.INIT0 = 16'h5aaa;
    defparam add_17_11.INIT1 = 16'h5aaa;
    defparam add_17_11.INJECT1_0 = "NO";
    defparam add_17_11.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2D add_17_9 (.A0(count_bytes[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1227), .COUT(n1228), .S0(count_bytes_60__N_198[7]), .S1(count_bytes_60__N_198[8]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_9.INIT0 = 16'h5aaa;
    defparam add_17_9.INIT1 = 16'h5aaa;
    defparam add_17_9.INJECT1_0 = "NO";
    defparam add_17_9.INJECT1_1 = "NO";
    CCU2D add_17_7 (.A0(count_bytes[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1226), .COUT(n1227), .S0(count_bytes_60__N_198[5]), .S1(count_bytes_60__N_198[6]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_7.INIT0 = 16'h5aaa;
    defparam add_17_7.INIT1 = 16'h5aaa;
    defparam add_17_7.INJECT1_0 = "NO";
    defparam add_17_7.INJECT1_1 = "NO";
    CCU2D add_17_5 (.A0(count_bytes[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1225), .COUT(n1226), .S0(count_bytes_60__N_198[3]), .S1(count_bytes_60__N_198[4]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_5.INIT0 = 16'h5aaa;
    defparam add_17_5.INIT1 = 16'h5aaa;
    defparam add_17_5.INJECT1_0 = "NO";
    defparam add_17_5.INJECT1_1 = "NO";
    CCU2D add_17_3 (.A0(count_bytes[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1224), .COUT(n1225), .S0(count_bytes_60__N_198[1]), .S1(count_bytes_60__N_198[2]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_3.INIT0 = 16'h5aaa;
    defparam add_17_3.INIT1 = 16'h5aaa;
    defparam add_17_3.INJECT1_0 = "NO";
    defparam add_17_3.INJECT1_1 = "NO";
    LUT4 i19_2_lut (.A(count_bytes[37]), .B(count_bytes[1]), .Z(n80)) /* synthesis lut_function=(A (B)) */ ;
    defparam i19_2_lut.init = 16'h8888;
    OB ber_pad_62 (.I(ber_c_62), .O(ber[62]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_61 (.I(ber_c_61), .O(ber[61]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_60 (.I(ber_c_60), .O(ber[60]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_59 (.I(ber_c_59), .O(ber[59]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_58 (.I(ber_c_58), .O(ber[58]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_57 (.I(ber_c_57), .O(ber[57]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_56 (.I(ber_c_56), .O(ber[56]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_55 (.I(ber_c_55), .O(ber[55]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_54 (.I(ber_c_54), .O(ber[54]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_53 (.I(ber_c_53), .O(ber[53]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_52 (.I(ber_c_52), .O(ber[52]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_51 (.I(ber_c_51), .O(ber[51]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_50 (.I(ber_c_50), .O(ber[50]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_49 (.I(ber_c_49), .O(ber[49]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_48 (.I(ber_c_48), .O(ber[48]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_47 (.I(ber_c_47), .O(ber[47]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_46 (.I(ber_c_46), .O(ber[46]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_45 (.I(ber_c_45), .O(ber[45]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_44 (.I(ber_c_44), .O(ber[44]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_43 (.I(ber_c_43), .O(ber[43]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_42 (.I(ber_c_42), .O(ber[42]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_41 (.I(ber_c_41), .O(ber[41]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_40 (.I(ber_c_40), .O(ber[40]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_39 (.I(ber_c_39), .O(ber[39]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_38 (.I(ber_c_38), .O(ber[38]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_37 (.I(ber_c_37), .O(ber[37]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_36 (.I(ber_c_36), .O(ber[36]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_35 (.I(ber_c_35), .O(ber[35]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_34 (.I(ber_c_34), .O(ber[34]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_33 (.I(ber_c_33), .O(ber[33]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_32 (.I(ber_c_32), .O(ber[32]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_31 (.I(ber_c_31), .O(ber[31]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_30 (.I(ber_c_30), .O(ber[30]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_29 (.I(ber_c_29), .O(ber[29]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_28 (.I(ber_c_28), .O(ber[28]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_27 (.I(ber_c_27), .O(ber[27]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_26 (.I(ber_c_26), .O(ber[26]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_25 (.I(ber_c_25), .O(ber[25]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_24 (.I(ber_c_24), .O(ber[24]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_23 (.I(ber_c_23), .O(ber[23]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_22 (.I(ber_c_22), .O(ber[22]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_21 (.I(ber_c_21), .O(ber[21]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_20 (.I(ber_c_20), .O(ber[20]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_19 (.I(ber_c_19), .O(ber[19]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_18 (.I(ber_c_18), .O(ber[18]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_17 (.I(ber_c_17), .O(ber[17]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_16 (.I(ber_c_16), .O(ber[16]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_15 (.I(ber_c_15), .O(ber[15]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_14 (.I(ber_c_14), .O(ber[14]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_13 (.I(ber_c_13), .O(ber[13]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_12 (.I(ber_c_12), .O(ber[12]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_11 (.I(ber_c_11), .O(ber[11]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_10 (.I(ber_c_10), .O(ber[10]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_9 (.I(ber_c_9), .O(ber[9]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_8 (.I(ber_c_8), .O(ber[8]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_7 (.I(ber_c_7), .O(ber[7]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_6 (.I(ber_c_6), .O(ber[6]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_5 (.I(ber_c_5), .O(ber[5]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_4 (.I(ber_c_4), .O(ber[4]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_3 (.I(ber_c_3), .O(ber[3]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_2 (.I(ber_c_2), .O(ber[2]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_1 (.I(ber_c_1), .O(ber[1]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    OB ber_pad_0 (.I(ber_c_0), .O(ber[0]));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(26[9:12])
    IB byte_recvd_pad_7 (.I(byte_recvd[7]), .O(byte_recvd_c_7));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_6 (.I(byte_recvd[6]), .O(byte_recvd_c_6));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_5 (.I(byte_recvd[5]), .O(byte_recvd_c_5));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_4 (.I(byte_recvd[4]), .O(byte_recvd_c_4));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_3 (.I(byte_recvd[3]), .O(byte_recvd_c_3));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_2 (.I(byte_recvd[2]), .O(byte_recvd_c_2));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_1 (.I(byte_recvd[1]), .O(byte_recvd_c_1));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB byte_recvd_pad_0 (.I(byte_recvd[0]), .O(byte_recvd_c_0));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(21[9:19])
    IB din_clk_pad (.I(din_clk), .O(din_clk_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(22[9:16])
    IB byte_actual_pad_7 (.I(byte_actual[7]), .O(byte_actual_c_7));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_6 (.I(byte_actual[6]), .O(byte_actual_c_6));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_5 (.I(byte_actual[5]), .O(byte_actual_c_5));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_4 (.I(byte_actual[4]), .O(byte_actual_c_4));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_3 (.I(byte_actual[3]), .O(byte_actual_c_3));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_2 (.I(byte_actual[2]), .O(byte_actual_c_2));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_1 (.I(byte_actual[1]), .O(byte_actual_c_1));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB byte_actual_pad_0 (.I(byte_actual[0]), .O(byte_actual_c_0));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(23[9:20])
    IB ce_pad (.I(ce), .O(ce_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(24[9:11])
    IB reset_pad (.I(reset), .O(reset_c));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(25[9:14])
    CCU2D add_17_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count_bytes[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1224), .S1(count_bytes_60__N_198[0]));   // /usr/local/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam add_17_1.INIT0 = 16'hF000;
    defparam add_17_1.INIT1 = 16'h5555;
    defparam add_17_1.INJECT1_0 = "NO";
    defparam add_17_1.INJECT1_1 = "NO";
    FD1P3AX ber_i0_i3 (.D(total_err_bits[2]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_2));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i3.GSR = "ENABLED";
    FD1P3AX ber_i0_i4 (.D(total_err_bits[3]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_3));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i4.GSR = "ENABLED";
    FD1P3AX ber_i0_i5 (.D(total_err_bits[4]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_4));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i5.GSR = "ENABLED";
    FD1P3AX ber_i0_i6 (.D(total_err_bits[5]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_5));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i6.GSR = "ENABLED";
    FD1P3AX ber_i0_i7 (.D(total_err_bits[6]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_6));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i7.GSR = "ENABLED";
    FD1P3AX ber_i0_i8 (.D(total_err_bits[7]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_7));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i8.GSR = "ENABLED";
    FD1P3AX ber_i0_i9 (.D(total_err_bits[8]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_8));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i9.GSR = "ENABLED";
    FD1P3AX ber_i0_i10 (.D(total_err_bits[9]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_9));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i10.GSR = "ENABLED";
    FD1P3AX ber_i0_i11 (.D(total_err_bits[10]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_10));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i11.GSR = "ENABLED";
    FD1P3AX ber_i0_i12 (.D(total_err_bits[11]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_11));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i12.GSR = "ENABLED";
    FD1P3AX ber_i0_i13 (.D(total_err_bits[12]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_12));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i13.GSR = "ENABLED";
    FD1P3AX ber_i0_i14 (.D(total_err_bits[13]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_13));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i14.GSR = "ENABLED";
    FD1P3AX ber_i0_i15 (.D(total_err_bits[14]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_14));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i15.GSR = "ENABLED";
    FD1P3AX ber_i0_i16 (.D(total_err_bits[15]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_15));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i16.GSR = "ENABLED";
    FD1P3AX ber_i0_i17 (.D(total_err_bits[16]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_16));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i17.GSR = "ENABLED";
    FD1P3AX ber_i0_i18 (.D(total_err_bits[17]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_17));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i18.GSR = "ENABLED";
    FD1P3AX ber_i0_i19 (.D(total_err_bits[18]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_18));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i19.GSR = "ENABLED";
    FD1P3AX ber_i0_i20 (.D(total_err_bits[19]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_19));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i20.GSR = "ENABLED";
    FD1P3AX ber_i0_i21 (.D(total_err_bits[20]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_20));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i21.GSR = "ENABLED";
    FD1P3AX ber_i0_i22 (.D(total_err_bits[21]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_21));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i22.GSR = "ENABLED";
    FD1P3AX ber_i0_i23 (.D(total_err_bits[22]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_22));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i23.GSR = "ENABLED";
    FD1P3AX ber_i0_i24 (.D(total_err_bits[23]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_23));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i24.GSR = "ENABLED";
    FD1P3AX ber_i0_i25 (.D(total_err_bits[24]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_24));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i25.GSR = "ENABLED";
    FD1P3AX ber_i0_i26 (.D(total_err_bits[25]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_25));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i26.GSR = "ENABLED";
    FD1P3AX ber_i0_i27 (.D(total_err_bits[26]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_26));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i27.GSR = "ENABLED";
    FD1P3AX ber_i0_i28 (.D(total_err_bits[27]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_27));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i28.GSR = "ENABLED";
    FD1P3AX ber_i0_i29 (.D(total_err_bits[28]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_28));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i29.GSR = "ENABLED";
    FD1P3AX ber_i0_i30 (.D(total_err_bits[29]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_29));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i30.GSR = "ENABLED";
    FD1P3AX ber_i0_i31 (.D(total_err_bits[30]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_30));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i31.GSR = "ENABLED";
    FD1P3AX ber_i0_i32 (.D(total_err_bits[31]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_31));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i32.GSR = "ENABLED";
    FD1P3AX ber_i0_i33 (.D(total_err_bits[32]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_32));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i33.GSR = "ENABLED";
    FD1P3AX ber_i0_i34 (.D(total_err_bits[33]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_33));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i34.GSR = "ENABLED";
    FD1P3AX ber_i0_i35 (.D(total_err_bits[34]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_34));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i35.GSR = "ENABLED";
    FD1P3AX ber_i0_i36 (.D(total_err_bits[35]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_35));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i36.GSR = "ENABLED";
    FD1P3AX ber_i0_i37 (.D(total_err_bits[36]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_36));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i37.GSR = "ENABLED";
    FD1P3AX ber_i0_i38 (.D(total_err_bits[37]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_37));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i38.GSR = "ENABLED";
    FD1P3AX ber_i0_i39 (.D(total_err_bits[38]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_38));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i39.GSR = "ENABLED";
    FD1P3AX ber_i0_i40 (.D(total_err_bits[39]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_39));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i40.GSR = "ENABLED";
    FD1P3AX ber_i0_i41 (.D(total_err_bits[40]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_40));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i41.GSR = "ENABLED";
    FD1P3AX ber_i0_i42 (.D(total_err_bits[41]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_41));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i42.GSR = "ENABLED";
    FD1P3AX ber_i0_i43 (.D(total_err_bits[42]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_42));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i43.GSR = "ENABLED";
    FD1P3AX ber_i0_i44 (.D(total_err_bits[43]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_43));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i44.GSR = "ENABLED";
    FD1P3AX ber_i0_i45 (.D(total_err_bits[44]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_44));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i45.GSR = "ENABLED";
    FD1P3AX ber_i0_i46 (.D(total_err_bits[45]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_45));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i46.GSR = "ENABLED";
    FD1P3AX ber_i0_i47 (.D(total_err_bits[46]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_46));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i47.GSR = "ENABLED";
    FD1P3AX ber_i0_i48 (.D(total_err_bits[47]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_47));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i48.GSR = "ENABLED";
    FD1P3AX ber_i0_i49 (.D(total_err_bits[48]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_48));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i49.GSR = "ENABLED";
    FD1P3AX ber_i0_i50 (.D(total_err_bits[49]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_49));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i50.GSR = "ENABLED";
    FD1P3AX ber_i0_i51 (.D(total_err_bits[50]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_50));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i51.GSR = "ENABLED";
    FD1P3AX ber_i0_i52 (.D(total_err_bits[51]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_51));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i52.GSR = "ENABLED";
    FD1P3AX ber_i0_i53 (.D(total_err_bits[52]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_52));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i53.GSR = "ENABLED";
    FD1P3AX ber_i0_i54 (.D(total_err_bits[53]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_53));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i54.GSR = "ENABLED";
    FD1P3AX ber_i0_i55 (.D(total_err_bits[54]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_54));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i55.GSR = "ENABLED";
    FD1P3AX ber_i0_i56 (.D(total_err_bits[55]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_55));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i56.GSR = "ENABLED";
    FD1P3AX ber_i0_i57 (.D(total_err_bits[56]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_56));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i57.GSR = "ENABLED";
    FD1P3AX ber_i0_i58 (.D(total_err_bits[57]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_57));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i58.GSR = "ENABLED";
    FD1P3AX ber_i0_i59 (.D(total_err_bits[58]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_58));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i59.GSR = "ENABLED";
    FD1P3AX ber_i0_i60 (.D(total_err_bits[59]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_59));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i60.GSR = "ENABLED";
    FD1P3AX ber_i0_i61 (.D(total_err_bits[60]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_60));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i61.GSR = "ENABLED";
    FD1P3AX ber_i0_i62 (.D(total_err_bits[61]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_61));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i62.GSR = "ENABLED";
    FD1P3AX ber_i0_i63 (.D(total_err_bits[62]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_62));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i63.GSR = "ENABLED";
    FD1P3AX ber_i0_i64 (.D(total_err_bits[63]), .SP(din_clk_c_enable_64), 
            .CK(din_clk_c), .Q(ber_c_63));   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam ber_i0_i64.GSR = "ENABLED";
    FD1S3IX total_err_bits__i1 (.D(n192), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[1])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i1.GSR = "ENABLED";
    LUT4 i47_4_lut (.A(count_bytes[22]), .B(n94), .C(n64), .D(count_bytes[15]), 
         .Z(n108)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i47_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_1 (.A(n1369), .B(n1376), .C(n1370), .D(n955), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(51[22:27])
    defparam i1_2_lut_4_lut_adj_1.init = 16'h17e8;
    LUT4 byte_actual_7__I_0_i5_2_lut_rep_10 (.A(byte_actual_c_4), .B(byte_recvd_c_4), 
         .Z(n1374)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i5_2_lut_rep_10.init = 16'h6666;
    LUT4 byte_actual_7__I_0_i6_2_lut_rep_11 (.A(byte_actual_c_5), .B(byte_recvd_c_5), 
         .Z(n1375)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i6_2_lut_rep_11.init = 16'h6666;
    LUT4 i45_4_lut (.A(count_bytes[56]), .B(count_bytes[14]), .C(count_bytes[58]), 
         .D(count_bytes[28]), .Z(n106)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i45_4_lut.init = 16'h8000;
    LUT4 i31_3_lut (.A(count_bytes[52]), .B(count_bytes[44]), .C(count_bytes[35]), 
         .Z(n92)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i31_3_lut.init = 16'h8080;
    LUT4 i27_2_lut (.A(count_bytes[4]), .B(count_bytes[31]), .Z(n88)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27_2_lut.init = 16'h8888;
    LUT4 i33_4_lut (.A(count_bytes[51]), .B(count_bytes[24]), .C(count_bytes[17]), 
         .D(count_bytes[32]), .Z(n94)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i33_4_lut.init = 16'h8000;
    LUT4 i3_2_lut (.A(count_bytes[60]), .B(count_bytes[29]), .Z(n64)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i38_4_lut (.A(count_bytes[20]), .B(count_bytes[26]), .C(count_bytes[23]), 
         .D(count_bytes[46]), .Z(n99)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i38_4_lut.init = 16'h8000;
    LUT4 i57_4_lut (.A(n83), .B(n114), .C(n104), .D(n84), .Z(n118)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i57_4_lut.init = 16'h8000;
    LUT4 byte_actual_7__I_0_i2_2_lut_rep_13 (.A(byte_actual_c_1), .B(byte_recvd_c_1), 
         .Z(n1377)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i2_2_lut_rep_13.init = 16'h6666;
    LUT4 i54_4_lut (.A(count_bytes[54]), .B(n108), .C(n92), .D(count_bytes[38]), 
         .Z(n115)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i54_4_lut.init = 16'h8000;
    LUT4 byte_actual_7__I_0_i1_2_lut_rep_14 (.A(byte_actual_c_0), .B(byte_recvd_c_0), 
         .Z(n1378)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i1_2_lut_rep_14.init = 16'h6666;
    LUT4 i51_4_lut (.A(count_bytes[11]), .B(n102), .C(n80), .D(count_bytes[33]), 
         .Z(n112)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i51_4_lut.init = 16'h8000;
    LUT4 byte_actual_7__I_0_i8_2_lut_rep_12 (.A(byte_actual_c_7), .B(byte_recvd_c_7), 
         .Z(n1376)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam byte_actual_7__I_0_i8_2_lut_rep_12.init = 16'h6666;
    LUT4 i73_4_lut_3_lut_rep_3_4_lut (.A(byte_actual_c_7), .B(byte_recvd_c_7), 
         .C(n1370), .D(n1369), .Z(n1367)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i73_4_lut_3_lut_rep_3_4_lut.init = 16'hf660;
    LUT4 i106_2_lut_3_lut_4_lut (.A(byte_actual_c_0), .B(byte_recvd_c_0), 
         .C(byte_recvd_c_1), .D(byte_actual_c_1), .Z(n904)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(40[19:30])
    defparam i106_2_lut_3_lut_4_lut.init = 16'h0660;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX total_err_bits__i2 (.D(n191), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[2])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i2.GSR = "ENABLED";
    FD1S3IX total_err_bits__i3 (.D(n190), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[3])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i3.GSR = "ENABLED";
    FD1S3IX total_err_bits__i4 (.D(n189), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[4])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i4.GSR = "ENABLED";
    FD1S3IX total_err_bits__i5 (.D(n188), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[5])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i5.GSR = "ENABLED";
    FD1S3IX total_err_bits__i6 (.D(n187), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[6])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i6.GSR = "ENABLED";
    FD1S3IX total_err_bits__i7 (.D(n186), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[7])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i7.GSR = "ENABLED";
    FD1S3IX total_err_bits__i8 (.D(n185), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[8])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i8.GSR = "ENABLED";
    FD1S3IX total_err_bits__i9 (.D(n184), .CK(din_clk_c), .CD(n917), .Q(total_err_bits[9])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i9.GSR = "ENABLED";
    FD1S3IX total_err_bits__i10 (.D(n183), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[10])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i10.GSR = "ENABLED";
    FD1S3IX total_err_bits__i11 (.D(n182), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[11])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i11.GSR = "ENABLED";
    FD1S3IX total_err_bits__i12 (.D(n181), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[12])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i12.GSR = "ENABLED";
    FD1S3IX total_err_bits__i13 (.D(n180), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[13])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i13.GSR = "ENABLED";
    FD1S3IX total_err_bits__i14 (.D(n179), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[14])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i14.GSR = "ENABLED";
    FD1S3IX total_err_bits__i15 (.D(n178), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[15])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i15.GSR = "ENABLED";
    FD1S3IX total_err_bits__i16 (.D(n177), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[16])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i16.GSR = "ENABLED";
    FD1S3IX total_err_bits__i17 (.D(n176), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[17])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i17.GSR = "ENABLED";
    FD1S3IX total_err_bits__i18 (.D(n175), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[18])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i18.GSR = "ENABLED";
    FD1S3IX total_err_bits__i19 (.D(n174), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[19])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i19.GSR = "ENABLED";
    FD1S3IX total_err_bits__i20 (.D(n173), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[20])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i20.GSR = "ENABLED";
    FD1S3IX total_err_bits__i21 (.D(n172), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[21])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i21.GSR = "ENABLED";
    FD1S3IX total_err_bits__i22 (.D(n171), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[22])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i22.GSR = "ENABLED";
    FD1S3IX total_err_bits__i23 (.D(n170), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[23])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i23.GSR = "ENABLED";
    FD1S3IX total_err_bits__i24 (.D(n169), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[24])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i24.GSR = "ENABLED";
    FD1S3IX total_err_bits__i25 (.D(n168), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[25])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i25.GSR = "ENABLED";
    FD1S3IX total_err_bits__i26 (.D(n167), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[26])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i26.GSR = "ENABLED";
    FD1S3IX total_err_bits__i27 (.D(n166), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[27])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i27.GSR = "ENABLED";
    FD1S3IX total_err_bits__i28 (.D(n165), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[28])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i28.GSR = "ENABLED";
    FD1S3IX total_err_bits__i29 (.D(n164), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[29])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i29.GSR = "ENABLED";
    FD1S3IX total_err_bits__i30 (.D(n163), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[30])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i30.GSR = "ENABLED";
    FD1S3IX total_err_bits__i31 (.D(n162), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[31])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i31.GSR = "ENABLED";
    FD1S3IX total_err_bits__i32 (.D(n161), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[32])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i32.GSR = "ENABLED";
    FD1S3IX total_err_bits__i33 (.D(n160), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[33])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i33.GSR = "ENABLED";
    FD1S3IX total_err_bits__i34 (.D(n159), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[34])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i34.GSR = "ENABLED";
    FD1S3IX total_err_bits__i35 (.D(n158), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[35])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i35.GSR = "ENABLED";
    FD1S3IX total_err_bits__i36 (.D(n157), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[36])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i36.GSR = "ENABLED";
    FD1S3IX total_err_bits__i37 (.D(n156), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[37])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i37.GSR = "ENABLED";
    FD1S3IX total_err_bits__i38 (.D(n155), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[38])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i38.GSR = "ENABLED";
    FD1S3IX total_err_bits__i39 (.D(n154), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[39])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i39.GSR = "ENABLED";
    FD1S3IX total_err_bits__i40 (.D(n153), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[40])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i40.GSR = "ENABLED";
    FD1S3IX total_err_bits__i41 (.D(n152), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[41])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i41.GSR = "ENABLED";
    FD1S3IX total_err_bits__i42 (.D(n151), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[42])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i42.GSR = "ENABLED";
    FD1S3IX total_err_bits__i43 (.D(n150), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[43])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i43.GSR = "ENABLED";
    FD1S3IX total_err_bits__i44 (.D(n149), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[44])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i44.GSR = "ENABLED";
    FD1S3IX total_err_bits__i45 (.D(n148), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[45])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i45.GSR = "ENABLED";
    FD1S3IX total_err_bits__i46 (.D(n147), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[46])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i46.GSR = "ENABLED";
    FD1S3IX total_err_bits__i47 (.D(n146), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[47])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i47.GSR = "ENABLED";
    FD1S3IX total_err_bits__i48 (.D(n145), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[48])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i48.GSR = "ENABLED";
    FD1S3IX total_err_bits__i49 (.D(n144), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[49])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i49.GSR = "ENABLED";
    FD1S3IX total_err_bits__i50 (.D(n143), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[50])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i50.GSR = "ENABLED";
    FD1S3IX total_err_bits__i51 (.D(n142), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[51])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i51.GSR = "ENABLED";
    FD1S3IX total_err_bits__i52 (.D(n141), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[52])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i52.GSR = "ENABLED";
    FD1S3IX total_err_bits__i53 (.D(n140), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[53])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i53.GSR = "ENABLED";
    FD1S3IX total_err_bits__i54 (.D(n139), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[54])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i54.GSR = "ENABLED";
    FD1S3IX total_err_bits__i55 (.D(n138), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[55])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i55.GSR = "ENABLED";
    FD1S3IX total_err_bits__i56 (.D(n137), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[56])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i56.GSR = "ENABLED";
    FD1S3IX total_err_bits__i57 (.D(n136), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[57])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i57.GSR = "ENABLED";
    FD1S3IX total_err_bits__i58 (.D(n135), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[58])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i58.GSR = "ENABLED";
    FD1S3IX total_err_bits__i59 (.D(n134), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[59])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i59.GSR = "ENABLED";
    FD1S3IX total_err_bits__i60 (.D(n133), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[60])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i60.GSR = "ENABLED";
    FD1S3IX total_err_bits__i61 (.D(n132), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[61])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i61.GSR = "ENABLED";
    FD1S3IX total_err_bits__i62 (.D(n131), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[62])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i62.GSR = "ENABLED";
    FD1S3IX total_err_bits__i63 (.D(n130), .CK(din_clk_c), .CD(n917), 
            .Q(total_err_bits[63])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam total_err_bits__i63.GSR = "ENABLED";
    FD1S3IX count_bytes__i1 (.D(count_bytes_60__N_198[1]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[1])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i1.GSR = "ENABLED";
    FD1S3IX count_bytes__i2 (.D(count_bytes_60__N_198[2]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[2])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i2.GSR = "ENABLED";
    FD1S3IX count_bytes__i3 (.D(count_bytes_60__N_198[3]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[3])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i3.GSR = "ENABLED";
    FD1S3IX count_bytes__i4 (.D(count_bytes_60__N_198[4]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[4])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i4.GSR = "ENABLED";
    FD1S3IX count_bytes__i5 (.D(count_bytes_60__N_198[5]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[5])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i5.GSR = "ENABLED";
    FD1S3IX count_bytes__i6 (.D(count_bytes_60__N_198[6]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[6])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i6.GSR = "ENABLED";
    FD1S3IX count_bytes__i7 (.D(count_bytes_60__N_198[7]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[7])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i7.GSR = "ENABLED";
    FD1S3IX count_bytes__i8 (.D(count_bytes_60__N_198[8]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[8])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i8.GSR = "ENABLED";
    FD1S3IX count_bytes__i9 (.D(count_bytes_60__N_198[9]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[9])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i9.GSR = "ENABLED";
    FD1S3IX count_bytes__i10 (.D(count_bytes_60__N_198[10]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[10])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i10.GSR = "ENABLED";
    FD1S3IX count_bytes__i11 (.D(count_bytes_60__N_198[11]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[11])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i11.GSR = "ENABLED";
    FD1S3IX count_bytes__i12 (.D(count_bytes_60__N_198[12]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[12])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i12.GSR = "ENABLED";
    FD1S3IX count_bytes__i13 (.D(count_bytes_60__N_198[13]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[13])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i13.GSR = "ENABLED";
    FD1S3IX count_bytes__i14 (.D(count_bytes_60__N_198[14]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[14])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i14.GSR = "ENABLED";
    FD1S3IX count_bytes__i15 (.D(count_bytes_60__N_198[15]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[15])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i15.GSR = "ENABLED";
    FD1S3IX count_bytes__i16 (.D(count_bytes_60__N_198[16]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[16])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i16.GSR = "ENABLED";
    FD1S3IX count_bytes__i17 (.D(count_bytes_60__N_198[17]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[17])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i17.GSR = "ENABLED";
    FD1S3IX count_bytes__i18 (.D(count_bytes_60__N_198[18]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[18])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i18.GSR = "ENABLED";
    FD1S3IX count_bytes__i19 (.D(count_bytes_60__N_198[19]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[19])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i19.GSR = "ENABLED";
    FD1S3IX count_bytes__i20 (.D(count_bytes_60__N_198[20]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[20])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i20.GSR = "ENABLED";
    FD1S3IX count_bytes__i21 (.D(count_bytes_60__N_198[21]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[21])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i21.GSR = "ENABLED";
    FD1S3IX count_bytes__i22 (.D(count_bytes_60__N_198[22]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[22])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i22.GSR = "ENABLED";
    FD1S3IX count_bytes__i23 (.D(count_bytes_60__N_198[23]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[23])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i23.GSR = "ENABLED";
    FD1S3IX count_bytes__i24 (.D(count_bytes_60__N_198[24]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[24])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i24.GSR = "ENABLED";
    FD1S3IX count_bytes__i25 (.D(count_bytes_60__N_198[25]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[25])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i25.GSR = "ENABLED";
    FD1S3IX count_bytes__i26 (.D(count_bytes_60__N_198[26]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[26])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i26.GSR = "ENABLED";
    FD1S3IX count_bytes__i27 (.D(count_bytes_60__N_198[27]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[27])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i27.GSR = "ENABLED";
    FD1S3IX count_bytes__i28 (.D(count_bytes_60__N_198[28]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[28])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i28.GSR = "ENABLED";
    FD1S3IX count_bytes__i29 (.D(count_bytes_60__N_198[29]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[29])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i29.GSR = "ENABLED";
    FD1S3IX count_bytes__i30 (.D(count_bytes_60__N_198[30]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[30])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i30.GSR = "ENABLED";
    FD1S3IX count_bytes__i31 (.D(count_bytes_60__N_198[31]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[31])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i31.GSR = "ENABLED";
    FD1S3IX count_bytes__i32 (.D(count_bytes_60__N_198[32]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[32])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i32.GSR = "ENABLED";
    FD1S3IX count_bytes__i33 (.D(count_bytes_60__N_198[33]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[33])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i33.GSR = "ENABLED";
    FD1S3IX count_bytes__i34 (.D(count_bytes_60__N_198[34]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[34])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i34.GSR = "ENABLED";
    FD1S3IX count_bytes__i35 (.D(count_bytes_60__N_198[35]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[35])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i35.GSR = "ENABLED";
    FD1S3IX count_bytes__i36 (.D(count_bytes_60__N_198[36]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[36])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i36.GSR = "ENABLED";
    FD1S3IX count_bytes__i37 (.D(count_bytes_60__N_198[37]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[37])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i37.GSR = "ENABLED";
    FD1S3IX count_bytes__i38 (.D(count_bytes_60__N_198[38]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[38])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i38.GSR = "ENABLED";
    FD1S3IX count_bytes__i39 (.D(count_bytes_60__N_198[39]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[39])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i39.GSR = "ENABLED";
    FD1S3IX count_bytes__i40 (.D(count_bytes_60__N_198[40]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[40])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i40.GSR = "ENABLED";
    FD1S3IX count_bytes__i41 (.D(count_bytes_60__N_198[41]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[41])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i41.GSR = "ENABLED";
    FD1S3IX count_bytes__i42 (.D(count_bytes_60__N_198[42]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[42])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i42.GSR = "ENABLED";
    FD1S3IX count_bytes__i43 (.D(count_bytes_60__N_198[43]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[43])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i43.GSR = "ENABLED";
    FD1S3IX count_bytes__i44 (.D(count_bytes_60__N_198[44]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[44])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i44.GSR = "ENABLED";
    FD1S3IX count_bytes__i45 (.D(count_bytes_60__N_198[45]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[45])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i45.GSR = "ENABLED";
    FD1S3IX count_bytes__i46 (.D(count_bytes_60__N_198[46]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[46])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i46.GSR = "ENABLED";
    FD1S3IX count_bytes__i47 (.D(count_bytes_60__N_198[47]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[47])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i47.GSR = "ENABLED";
    FD1S3IX count_bytes__i48 (.D(count_bytes_60__N_198[48]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[48])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i48.GSR = "ENABLED";
    FD1S3IX count_bytes__i49 (.D(count_bytes_60__N_198[49]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[49])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i49.GSR = "ENABLED";
    FD1S3IX count_bytes__i50 (.D(count_bytes_60__N_198[50]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[50])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i50.GSR = "ENABLED";
    FD1S3IX count_bytes__i51 (.D(count_bytes_60__N_198[51]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[51])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i51.GSR = "ENABLED";
    FD1S3IX count_bytes__i52 (.D(count_bytes_60__N_198[52]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[52])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i52.GSR = "ENABLED";
    FD1S3IX count_bytes__i53 (.D(count_bytes_60__N_198[53]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[53])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i53.GSR = "ENABLED";
    FD1S3IX count_bytes__i54 (.D(count_bytes_60__N_198[54]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[54])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i54.GSR = "ENABLED";
    FD1S3IX count_bytes__i55 (.D(count_bytes_60__N_198[55]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[55])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i55.GSR = "ENABLED";
    FD1S3IX count_bytes__i56 (.D(count_bytes_60__N_198[56]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[56])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i56.GSR = "ENABLED";
    FD1S3IX count_bytes__i57 (.D(count_bytes_60__N_198[57]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[57])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i57.GSR = "ENABLED";
    FD1S3IX count_bytes__i58 (.D(count_bytes_60__N_198[58]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[58])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i58.GSR = "ENABLED";
    FD1S3IX count_bytes__i59 (.D(count_bytes_60__N_198[59]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[59])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i59.GSR = "ENABLED";
    FD1S3IX count_bytes__i60 (.D(count_bytes_60__N_198[60]), .CK(din_clk_c), 
            .CD(n1381), .Q(count_bytes[60])) /* synthesis lse_init_val=0 */ ;   // /home/apurvan/GSoC/usb-plug-mod-working/BER_measurement/MachXO2/Receiver/calc_ber.vhd(60[9] 76[16])
    defparam count_bytes__i60.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

