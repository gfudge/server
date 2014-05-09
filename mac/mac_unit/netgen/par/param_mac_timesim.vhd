--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: param_mac_timesim.vhd
-- /___/   /\     Timestamp: Fri May  9 17:33:28 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf param_mac.pcf -rpw 100 -tpw 0 -ar Structure -tm param_mac -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim param_mac.ncd param_mac_timesim.vhd 
-- Device	: 3s50pq208-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: param_mac.ncd
-- Output file	: /home/gfudge/fpga/server/mac/mac_unit/netgen/par/param_mac_timesim.vhd
-- # of Entities	: 1
-- Design Name	: param_mac
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity param_mac is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    Accr_r : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end param_mac;

architecture Structure of param_mac is
  signal clk_BUFGP : STD_LOGIC; 
  signal reset_IBUF_375 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_1_Q : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_3_Q : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_5_Q : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_7_Q : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_9_Q : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_11_Q : STD_LOGIC; 
  signal I_REG4_q_0_DXMUX_512 : STD_LOGIC; 
  signal I_REG4_q_0_XORF_510 : STD_LOGIC; 
  signal I_REG4_q_0_CYINIT_509 : STD_LOGIC; 
  signal I_REG4_q_0_CY0F_508 : STD_LOGIC; 
  signal I_REG4_q_0_CYSELF_500 : STD_LOGIC; 
  signal I_REG4_q_0_BXINV_498 : STD_LOGIC; 
  signal I_REG4_q_0_DYMUX_491 : STD_LOGIC; 
  signal I_REG4_q_0_XORG_489 : STD_LOGIC; 
  signal I_REG4_q_0_CYMUXG_488 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_0_Q : STD_LOGIC; 
  signal I_REG4_q_0_CY0G_486 : STD_LOGIC; 
  signal I_REG4_q_0_CYSELG_478 : STD_LOGIC; 
  signal I_REG4_q_0_SRINV_476 : STD_LOGIC; 
  signal I_REG4_q_0_CLKINV_475 : STD_LOGIC; 
  signal I_REG4_q_2_DXMUX_569 : STD_LOGIC; 
  signal I_REG4_q_2_XORF_567 : STD_LOGIC; 
  signal I_REG4_q_2_CYINIT_566 : STD_LOGIC; 
  signal I_REG4_q_2_CY0F_565 : STD_LOGIC; 
  signal I_REG4_q_2_DYMUX_550 : STD_LOGIC; 
  signal I_REG4_q_2_XORG_548 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_2_Q : STD_LOGIC; 
  signal I_REG4_q_2_CYSELF_546 : STD_LOGIC; 
  signal I_REG4_q_2_CYMUXFAST_545 : STD_LOGIC; 
  signal I_REG4_q_2_CYAND_544 : STD_LOGIC; 
  signal I_REG4_q_2_FASTCARRY_543 : STD_LOGIC; 
  signal I_REG4_q_2_CYMUXG2_542 : STD_LOGIC; 
  signal I_REG4_q_2_CYMUXF2_541 : STD_LOGIC; 
  signal I_REG4_q_2_CY0G_540 : STD_LOGIC; 
  signal I_REG4_q_2_CYSELG_532 : STD_LOGIC; 
  signal I_REG4_q_2_SRINV_530 : STD_LOGIC; 
  signal I_REG4_q_2_CLKINV_529 : STD_LOGIC; 
  signal I_REG4_q_4_DXMUX_626 : STD_LOGIC; 
  signal I_REG4_q_4_XORF_624 : STD_LOGIC; 
  signal I_REG4_q_4_CYINIT_623 : STD_LOGIC; 
  signal I_REG4_q_4_CY0F_622 : STD_LOGIC; 
  signal I_REG4_q_4_DYMUX_607 : STD_LOGIC; 
  signal I_REG4_q_4_XORG_605 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_4_Q : STD_LOGIC; 
  signal I_REG4_q_4_CYSELF_603 : STD_LOGIC; 
  signal I_REG4_q_4_CYMUXFAST_602 : STD_LOGIC; 
  signal I_REG4_q_4_CYAND_601 : STD_LOGIC; 
  signal I_REG4_q_4_FASTCARRY_600 : STD_LOGIC; 
  signal I_REG4_q_4_CYMUXG2_599 : STD_LOGIC; 
  signal I_REG4_q_4_CYMUXF2_598 : STD_LOGIC; 
  signal I_REG4_q_4_CY0G_597 : STD_LOGIC; 
  signal I_REG4_q_4_CYSELG_589 : STD_LOGIC; 
  signal I_REG4_q_4_SRINV_587 : STD_LOGIC; 
  signal I_REG4_q_4_CLKINV_586 : STD_LOGIC; 
  signal I_REG4_q_6_DXMUX_683 : STD_LOGIC; 
  signal I_REG4_q_6_XORF_681 : STD_LOGIC; 
  signal I_REG4_q_6_CYINIT_680 : STD_LOGIC; 
  signal I_REG4_q_6_CY0F_679 : STD_LOGIC; 
  signal I_REG4_q_6_DYMUX_664 : STD_LOGIC; 
  signal I_REG4_q_6_XORG_662 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_6_Q : STD_LOGIC; 
  signal I_REG4_q_6_CYSELF_660 : STD_LOGIC; 
  signal I_REG4_q_6_CYMUXFAST_659 : STD_LOGIC; 
  signal I_REG4_q_6_CYAND_658 : STD_LOGIC; 
  signal I_REG4_q_6_FASTCARRY_657 : STD_LOGIC; 
  signal I_REG4_q_6_CYMUXG2_656 : STD_LOGIC; 
  signal I_REG4_q_6_CYMUXF2_655 : STD_LOGIC; 
  signal I_REG4_q_6_CY0G_654 : STD_LOGIC; 
  signal I_REG4_q_6_CYSELG_646 : STD_LOGIC; 
  signal I_REG4_q_6_SRINV_644 : STD_LOGIC; 
  signal I_REG4_q_6_CLKINV_643 : STD_LOGIC; 
  signal I_REG4_q_8_DXMUX_740 : STD_LOGIC; 
  signal I_REG4_q_8_XORF_738 : STD_LOGIC; 
  signal I_REG4_q_8_CYINIT_737 : STD_LOGIC; 
  signal I_REG4_q_8_CY0F_736 : STD_LOGIC; 
  signal I_REG4_q_8_DYMUX_721 : STD_LOGIC; 
  signal I_REG4_q_8_XORG_719 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_8_Q : STD_LOGIC; 
  signal I_REG4_q_8_CYSELF_717 : STD_LOGIC; 
  signal I_REG4_q_8_CYMUXFAST_716 : STD_LOGIC; 
  signal I_REG4_q_8_CYAND_715 : STD_LOGIC; 
  signal I_REG4_q_8_FASTCARRY_714 : STD_LOGIC; 
  signal I_REG4_q_8_CYMUXG2_713 : STD_LOGIC; 
  signal I_REG4_q_8_CYMUXF2_712 : STD_LOGIC; 
  signal I_REG4_q_8_CY0G_711 : STD_LOGIC; 
  signal I_REG4_q_8_CYSELG_703 : STD_LOGIC; 
  signal I_REG4_q_8_SRINV_701 : STD_LOGIC; 
  signal I_REG4_q_8_CLKINV_700 : STD_LOGIC; 
  signal I_REG4_q_10_DXMUX_797 : STD_LOGIC; 
  signal I_REG4_q_10_XORF_795 : STD_LOGIC; 
  signal I_REG4_q_10_CYINIT_794 : STD_LOGIC; 
  signal I_REG4_q_10_CY0F_793 : STD_LOGIC; 
  signal I_REG4_q_10_DYMUX_778 : STD_LOGIC; 
  signal I_REG4_q_10_XORG_776 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_10_Q : STD_LOGIC; 
  signal I_REG4_q_10_CYSELF_774 : STD_LOGIC; 
  signal I_REG4_q_10_CYMUXFAST_773 : STD_LOGIC; 
  signal I_REG4_q_10_CYAND_772 : STD_LOGIC; 
  signal I_REG4_q_10_FASTCARRY_771 : STD_LOGIC; 
  signal I_REG4_q_10_CYMUXG2_770 : STD_LOGIC; 
  signal I_REG4_q_10_CYMUXF2_769 : STD_LOGIC; 
  signal I_REG4_q_10_CY0G_768 : STD_LOGIC; 
  signal I_REG4_q_10_CYSELG_760 : STD_LOGIC; 
  signal I_REG4_q_10_SRINV_758 : STD_LOGIC; 
  signal I_REG4_q_10_CLKINV_757 : STD_LOGIC; 
  signal I_REG4_q_12_DXMUX_854 : STD_LOGIC; 
  signal I_REG4_q_12_XORF_852 : STD_LOGIC; 
  signal I_REG4_q_12_CYINIT_851 : STD_LOGIC; 
  signal I_REG4_q_12_CY0F_850 : STD_LOGIC; 
  signal I_REG4_q_12_DYMUX_835 : STD_LOGIC; 
  signal I_REG4_q_12_XORG_833 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_12_Q : STD_LOGIC; 
  signal I_REG4_q_12_CYSELF_831 : STD_LOGIC; 
  signal I_REG4_q_12_CYMUXFAST_830 : STD_LOGIC; 
  signal I_REG4_q_12_CYAND_829 : STD_LOGIC; 
  signal I_REG4_q_12_FASTCARRY_828 : STD_LOGIC; 
  signal I_REG4_q_12_CYMUXG2_827 : STD_LOGIC; 
  signal I_REG4_q_12_CYMUXF2_826 : STD_LOGIC; 
  signal I_REG4_q_12_CY0G_825 : STD_LOGIC; 
  signal I_REG4_q_12_CYSELG_817 : STD_LOGIC; 
  signal I_REG4_q_12_SRINV_815 : STD_LOGIC; 
  signal I_REG4_q_12_CLKINV_814 : STD_LOGIC; 
  signal I_REG4_q_14_DXMUX_903 : STD_LOGIC; 
  signal I_REG4_q_14_XORF_901 : STD_LOGIC; 
  signal I_REG4_q_14_CYINIT_900 : STD_LOGIC; 
  signal I_REG4_q_14_CY0F_899 : STD_LOGIC; 
  signal I_REG4_q_14_CYSELF_891 : STD_LOGIC; 
  signal I_REG4_q_14_DYMUX_883 : STD_LOGIC; 
  signal I_REG4_q_14_XORG_881 : STD_LOGIC; 
  signal I_ADD_Madd_Z_cy_14_Q : STD_LOGIC; 
  signal I_REG4_q_14_SRINV_871 : STD_LOGIC; 
  signal I_REG4_q_14_CLKINV_870 : STD_LOGIC; 
  signal Accr_r_0_O : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal Accr_r_1_O : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal Accr_r_2_O : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal Accr_r_3_O : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal Accr_r_4_O : STD_LOGIC; 
  signal A_4_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal Accr_r_5_O : STD_LOGIC; 
  signal A_5_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal Accr_r_6_O : STD_LOGIC; 
  signal A_6_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal Accr_r_7_O : STD_LOGIC; 
  signal A_7_INBUF : STD_LOGIC; 
  signal B_4_INBUF : STD_LOGIC; 
  signal Accr_r_8_O : STD_LOGIC; 
  signal B_5_INBUF : STD_LOGIC; 
  signal Accr_r_9_O : STD_LOGIC; 
  signal B_6_INBUF : STD_LOGIC; 
  signal B_7_INBUF : STD_LOGIC; 
  signal Accr_r_10_O : STD_LOGIC; 
  signal Accr_r_11_O : STD_LOGIC; 
  signal Accr_r_12_O : STD_LOGIC; 
  signal Accr_r_13_O : STD_LOGIC; 
  signal Accr_r_14_O : STD_LOGIC; 
  signal Accr_r_15_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD16 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD17 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD18 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD19 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD20 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD21 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD22 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD23 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD24 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD25 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD26 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD27 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD28 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD29 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD30 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD31 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD32 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD33 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD34 : STD_LOGIC; 
  signal I_MULT_Mmult_Z_PROD35 : STD_LOGIC; 
  signal I_REG1_q_1_DXMUX_1240 : STD_LOGIC; 
  signal I_REG1_q_1_DYMUX_1232 : STD_LOGIC; 
  signal I_REG1_q_1_SRINV_1230 : STD_LOGIC; 
  signal I_REG1_q_1_CLKINV_1229 : STD_LOGIC; 
  signal I_REG1_q_3_DXMUX_1264 : STD_LOGIC; 
  signal I_REG1_q_3_DYMUX_1256 : STD_LOGIC; 
  signal I_REG1_q_3_SRINV_1254 : STD_LOGIC; 
  signal I_REG1_q_3_CLKINV_1253 : STD_LOGIC; 
  signal I_REG1_q_5_DXMUX_1288 : STD_LOGIC; 
  signal I_REG1_q_5_DYMUX_1280 : STD_LOGIC; 
  signal I_REG1_q_5_SRINV_1278 : STD_LOGIC; 
  signal I_REG1_q_5_CLKINV_1277 : STD_LOGIC; 
  signal I_REG1_q_7_DXMUX_1312 : STD_LOGIC; 
  signal I_REG1_q_7_DYMUX_1304 : STD_LOGIC; 
  signal I_REG1_q_7_SRINV_1302 : STD_LOGIC; 
  signal I_REG1_q_7_CLKINV_1301 : STD_LOGIC; 
  signal I_REG2_q_1_DXMUX_1336 : STD_LOGIC; 
  signal I_REG2_q_1_DYMUX_1328 : STD_LOGIC; 
  signal I_REG2_q_1_SRINV_1326 : STD_LOGIC; 
  signal I_REG2_q_1_CLKINV_1325 : STD_LOGIC; 
  signal I_REG2_q_3_DXMUX_1360 : STD_LOGIC; 
  signal I_REG2_q_3_DYMUX_1352 : STD_LOGIC; 
  signal I_REG2_q_3_SRINV_1350 : STD_LOGIC; 
  signal I_REG2_q_3_CLKINV_1349 : STD_LOGIC; 
  signal I_REG2_q_5_DXMUX_1384 : STD_LOGIC; 
  signal I_REG2_q_5_DYMUX_1376 : STD_LOGIC; 
  signal I_REG2_q_5_SRINV_1374 : STD_LOGIC; 
  signal I_REG2_q_5_CLKINV_1373 : STD_LOGIC; 
  signal I_REG2_q_7_DXMUX_1408 : STD_LOGIC; 
  signal I_REG2_q_7_DYMUX_1400 : STD_LOGIC; 
  signal I_REG2_q_7_SRINV_1398 : STD_LOGIC; 
  signal I_REG2_q_7_CLKINV_1397 : STD_LOGIC; 
  signal I_REG3_q_1_DXMUX_1432 : STD_LOGIC; 
  signal I_REG3_q_1_DYMUX_1424 : STD_LOGIC; 
  signal I_REG3_q_1_SRINV_1422 : STD_LOGIC; 
  signal I_REG3_q_1_CLKINV_1421 : STD_LOGIC; 
  signal I_REG3_q_3_DXMUX_1456 : STD_LOGIC; 
  signal I_REG3_q_3_DYMUX_1448 : STD_LOGIC; 
  signal I_REG3_q_3_SRINV_1446 : STD_LOGIC; 
  signal I_REG3_q_3_CLKINV_1445 : STD_LOGIC; 
  signal I_REG3_q_5_DXMUX_1480 : STD_LOGIC; 
  signal I_REG3_q_5_DYMUX_1472 : STD_LOGIC; 
  signal I_REG3_q_5_SRINV_1470 : STD_LOGIC; 
  signal I_REG3_q_5_CLKINV_1469 : STD_LOGIC; 
  signal I_REG3_q_7_DXMUX_1504 : STD_LOGIC; 
  signal I_REG3_q_7_DYMUX_1496 : STD_LOGIC; 
  signal I_REG3_q_7_SRINV_1494 : STD_LOGIC; 
  signal I_REG3_q_7_CLKINV_1493 : STD_LOGIC; 
  signal I_REG3_q_9_DXMUX_1528 : STD_LOGIC; 
  signal I_REG3_q_9_DYMUX_1520 : STD_LOGIC; 
  signal I_REG3_q_9_SRINV_1518 : STD_LOGIC; 
  signal I_REG3_q_9_CLKINV_1517 : STD_LOGIC; 
  signal I_REG3_q_11_DXMUX_1552 : STD_LOGIC; 
  signal I_REG3_q_11_DYMUX_1544 : STD_LOGIC; 
  signal I_REG3_q_11_SRINV_1542 : STD_LOGIC; 
  signal I_REG3_q_11_CLKINV_1541 : STD_LOGIC; 
  signal I_REG3_q_13_DXMUX_1576 : STD_LOGIC; 
  signal I_REG3_q_13_DYMUX_1568 : STD_LOGIC; 
  signal I_REG3_q_13_SRINV_1566 : STD_LOGIC; 
  signal I_REG3_q_13_CLKINV_1565 : STD_LOGIC; 
  signal I_REG3_q_15_DXMUX_1600 : STD_LOGIC; 
  signal I_REG3_q_15_DYMUX_1592 : STD_LOGIC; 
  signal I_REG3_q_15_SRINV_1590 : STD_LOGIC; 
  signal I_REG3_q_15_CLKINV_1589 : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_17_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_16_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_A_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_17_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_16_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_15_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_14_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_13_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_11_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_10_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_9_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_MULT_Mmult_Z_B_0_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal I_REG3_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal I_REG4_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal I_REG2_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_REG1_q : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MRES_I : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal I_ADD_Madd_Z_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  I_REG4_q_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_0_XORF_510,
      O => I_REG4_q_0_DXMUX_512
    );
  I_REG4_q_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y0"
    )
    port map (
      I0 => I_REG4_q_0_CYINIT_509,
      I1 => I_ADD_Madd_Z_lut(0),
      O => I_REG4_q_0_XORF_510
    );
  I_REG4_q_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y0"
    )
    port map (
      IA => I_REG4_q_0_CY0F_508,
      IB => I_REG4_q_0_CYINIT_509,
      SEL => I_REG4_q_0_CYSELF_500,
      O => I_ADD_Madd_Z_cy_0_Q
    );
  I_REG4_q_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_0_BXINV_498,
      O => I_REG4_q_0_CYINIT_509
    );
  I_REG4_q_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(0),
      O => I_REG4_q_0_CY0F_508
    );
  I_REG4_q_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(0),
      O => I_REG4_q_0_CYSELF_500
    );
  I_REG4_q_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => I_REG4_q_0_BXINV_498
    );
  I_REG4_q_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_0_XORG_489,
      O => I_REG4_q_0_DYMUX_491
    );
  I_REG4_q_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y0"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_0_Q,
      I1 => I_ADD_Madd_Z_lut(1),
      O => I_REG4_q_0_XORG_489
    );
  I_REG4_q_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_0_CYMUXG_488,
      O => I_ADD_Madd_Z_cy_1_Q
    );
  I_REG4_q_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X0Y0"
    )
    port map (
      IA => I_REG4_q_0_CY0G_486,
      IB => I_ADD_Madd_Z_cy_0_Q,
      SEL => I_REG4_q_0_CYSELG_478,
      O => I_REG4_q_0_CYMUXG_488
    );
  I_REG4_q_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(1),
      O => I_REG4_q_0_CY0G_486
    );
  I_REG4_q_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(1),
      O => I_REG4_q_0_CYSELG_478
    );
  I_REG4_q_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_0_SRINV_476
    );
  I_REG4_q_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_0_CLKINV_475
    );
  I_ADD_Madd_Z_lut_1_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => I_REG3_q(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => I_REG4_q(1),
      O => I_ADD_Madd_Z_lut(1)
    );
  I_REG4_q_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_2_XORF_567,
      O => I_REG4_q_2_DXMUX_569
    );
  I_REG4_q_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      I0 => I_REG4_q_2_CYINIT_566,
      I1 => I_ADD_Madd_Z_lut(2),
      O => I_REG4_q_2_XORF_567
    );
  I_REG4_q_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      IA => I_REG4_q_2_CY0F_565,
      IB => I_REG4_q_2_CYINIT_566,
      SEL => I_REG4_q_2_CYSELF_546,
      O => I_ADD_Madd_Z_cy_2_Q
    );
  I_REG4_q_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      IA => I_REG4_q_2_CY0F_565,
      IB => I_REG4_q_2_CY0F_565,
      SEL => I_REG4_q_2_CYSELF_546,
      O => I_REG4_q_2_CYMUXF2_541
    );
  I_REG4_q_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_1_Q,
      O => I_REG4_q_2_CYINIT_566
    );
  I_REG4_q_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(2),
      O => I_REG4_q_2_CY0F_565
    );
  I_REG4_q_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(2),
      O => I_REG4_q_2_CYSELF_546
    );
  I_REG4_q_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_2_XORG_548,
      O => I_REG4_q_2_DYMUX_550
    );
  I_REG4_q_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_2_Q,
      I1 => I_ADD_Madd_Z_lut(3),
      O => I_REG4_q_2_XORG_548
    );
  I_REG4_q_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_2_CYMUXFAST_545,
      O => I_ADD_Madd_Z_cy_3_Q
    );
  I_REG4_q_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_1_Q,
      O => I_REG4_q_2_FASTCARRY_543
    );
  I_REG4_q_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      I0 => I_REG4_q_2_CYSELG_532,
      I1 => I_REG4_q_2_CYSELF_546,
      O => I_REG4_q_2_CYAND_544
    );
  I_REG4_q_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      IA => I_REG4_q_2_CYMUXG2_542,
      IB => I_REG4_q_2_FASTCARRY_543,
      SEL => I_REG4_q_2_CYAND_544,
      O => I_REG4_q_2_CYMUXFAST_545
    );
  I_REG4_q_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y1"
    )
    port map (
      IA => I_REG4_q_2_CY0G_540,
      IB => I_REG4_q_2_CYMUXF2_541,
      SEL => I_REG4_q_2_CYSELG_532,
      O => I_REG4_q_2_CYMUXG2_542
    );
  I_REG4_q_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(3),
      O => I_REG4_q_2_CY0G_540
    );
  I_REG4_q_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(3),
      O => I_REG4_q_2_CYSELG_532
    );
  I_REG4_q_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_2_SRINV_530
    );
  I_REG4_q_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_2_CLKINV_529
    );
  I_ADD_Madd_Z_lut_3_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X0Y1"
    )
    port map (
      ADR0 => I_REG3_q(3),
      ADR1 => VCC,
      ADR2 => I_REG4_q(3),
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(3)
    );
  I_REG4_q_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_4_XORF_624,
      O => I_REG4_q_4_DXMUX_626
    );
  I_REG4_q_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      I0 => I_REG4_q_4_CYINIT_623,
      I1 => I_ADD_Madd_Z_lut(4),
      O => I_REG4_q_4_XORF_624
    );
  I_REG4_q_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      IA => I_REG4_q_4_CY0F_622,
      IB => I_REG4_q_4_CYINIT_623,
      SEL => I_REG4_q_4_CYSELF_603,
      O => I_ADD_Madd_Z_cy_4_Q
    );
  I_REG4_q_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      IA => I_REG4_q_4_CY0F_622,
      IB => I_REG4_q_4_CY0F_622,
      SEL => I_REG4_q_4_CYSELF_603,
      O => I_REG4_q_4_CYMUXF2_598
    );
  I_REG4_q_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_3_Q,
      O => I_REG4_q_4_CYINIT_623
    );
  I_REG4_q_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(4),
      O => I_REG4_q_4_CY0F_622
    );
  I_REG4_q_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(4),
      O => I_REG4_q_4_CYSELF_603
    );
  I_REG4_q_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_4_XORG_605,
      O => I_REG4_q_4_DYMUX_607
    );
  I_REG4_q_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_4_Q,
      I1 => I_ADD_Madd_Z_lut(5),
      O => I_REG4_q_4_XORG_605
    );
  I_REG4_q_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_4_CYMUXFAST_602,
      O => I_ADD_Madd_Z_cy_5_Q
    );
  I_REG4_q_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_3_Q,
      O => I_REG4_q_4_FASTCARRY_600
    );
  I_REG4_q_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      I0 => I_REG4_q_4_CYSELG_589,
      I1 => I_REG4_q_4_CYSELF_603,
      O => I_REG4_q_4_CYAND_601
    );
  I_REG4_q_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      IA => I_REG4_q_4_CYMUXG2_599,
      IB => I_REG4_q_4_FASTCARRY_600,
      SEL => I_REG4_q_4_CYAND_601,
      O => I_REG4_q_4_CYMUXFAST_602
    );
  I_REG4_q_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y2"
    )
    port map (
      IA => I_REG4_q_4_CY0G_597,
      IB => I_REG4_q_4_CYMUXF2_598,
      SEL => I_REG4_q_4_CYSELG_589,
      O => I_REG4_q_4_CYMUXG2_599
    );
  I_REG4_q_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(5),
      O => I_REG4_q_4_CY0G_597
    );
  I_REG4_q_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(5),
      O => I_REG4_q_4_CYSELG_589
    );
  I_REG4_q_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_4_SRINV_587
    );
  I_REG4_q_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_4_CLKINV_586
    );
  I_ADD_Madd_Z_lut_5_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => I_REG3_q(5),
      ADR2 => VCC,
      ADR3 => I_REG4_q(5),
      O => I_ADD_Madd_Z_lut(5)
    );
  I_REG4_q_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_6_XORF_681,
      O => I_REG4_q_6_DXMUX_683
    );
  I_REG4_q_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      I0 => I_REG4_q_6_CYINIT_680,
      I1 => I_ADD_Madd_Z_lut(6),
      O => I_REG4_q_6_XORF_681
    );
  I_REG4_q_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      IA => I_REG4_q_6_CY0F_679,
      IB => I_REG4_q_6_CYINIT_680,
      SEL => I_REG4_q_6_CYSELF_660,
      O => I_ADD_Madd_Z_cy_6_Q
    );
  I_REG4_q_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      IA => I_REG4_q_6_CY0F_679,
      IB => I_REG4_q_6_CY0F_679,
      SEL => I_REG4_q_6_CYSELF_660,
      O => I_REG4_q_6_CYMUXF2_655
    );
  I_REG4_q_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_5_Q,
      O => I_REG4_q_6_CYINIT_680
    );
  I_REG4_q_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(6),
      O => I_REG4_q_6_CY0F_679
    );
  I_REG4_q_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(6),
      O => I_REG4_q_6_CYSELF_660
    );
  I_REG4_q_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_6_XORG_662,
      O => I_REG4_q_6_DYMUX_664
    );
  I_REG4_q_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_6_Q,
      I1 => I_ADD_Madd_Z_lut(7),
      O => I_REG4_q_6_XORG_662
    );
  I_REG4_q_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_6_CYMUXFAST_659,
      O => I_ADD_Madd_Z_cy_7_Q
    );
  I_REG4_q_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_5_Q,
      O => I_REG4_q_6_FASTCARRY_657
    );
  I_REG4_q_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      I0 => I_REG4_q_6_CYSELG_646,
      I1 => I_REG4_q_6_CYSELF_660,
      O => I_REG4_q_6_CYAND_658
    );
  I_REG4_q_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      IA => I_REG4_q_6_CYMUXG2_656,
      IB => I_REG4_q_6_FASTCARRY_657,
      SEL => I_REG4_q_6_CYAND_658,
      O => I_REG4_q_6_CYMUXFAST_659
    );
  I_REG4_q_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y3"
    )
    port map (
      IA => I_REG4_q_6_CY0G_654,
      IB => I_REG4_q_6_CYMUXF2_655,
      SEL => I_REG4_q_6_CYSELG_646,
      O => I_REG4_q_6_CYMUXG2_656
    );
  I_REG4_q_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(7),
      O => I_REG4_q_6_CY0G_654
    );
  I_REG4_q_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(7),
      O => I_REG4_q_6_CYSELG_646
    );
  I_REG4_q_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_6_SRINV_644
    );
  I_REG4_q_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_6_CLKINV_643
    );
  I_ADD_Madd_Z_lut_7_Q : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X0Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => I_REG3_q(7),
      ADR2 => I_REG4_q(7),
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(7)
    );
  I_REG4_q_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_8_XORF_738,
      O => I_REG4_q_8_DXMUX_740
    );
  I_REG4_q_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      I0 => I_REG4_q_8_CYINIT_737,
      I1 => I_ADD_Madd_Z_lut(8),
      O => I_REG4_q_8_XORF_738
    );
  I_REG4_q_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      IA => I_REG4_q_8_CY0F_736,
      IB => I_REG4_q_8_CYINIT_737,
      SEL => I_REG4_q_8_CYSELF_717,
      O => I_ADD_Madd_Z_cy_8_Q
    );
  I_REG4_q_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      IA => I_REG4_q_8_CY0F_736,
      IB => I_REG4_q_8_CY0F_736,
      SEL => I_REG4_q_8_CYSELF_717,
      O => I_REG4_q_8_CYMUXF2_712
    );
  I_REG4_q_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_7_Q,
      O => I_REG4_q_8_CYINIT_737
    );
  I_REG4_q_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(8),
      O => I_REG4_q_8_CY0F_736
    );
  I_REG4_q_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(8),
      O => I_REG4_q_8_CYSELF_717
    );
  I_REG4_q_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_8_XORG_719,
      O => I_REG4_q_8_DYMUX_721
    );
  I_REG4_q_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_8_Q,
      I1 => I_ADD_Madd_Z_lut(9),
      O => I_REG4_q_8_XORG_719
    );
  I_REG4_q_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_8_CYMUXFAST_716,
      O => I_ADD_Madd_Z_cy_9_Q
    );
  I_REG4_q_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_7_Q,
      O => I_REG4_q_8_FASTCARRY_714
    );
  I_REG4_q_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      I0 => I_REG4_q_8_CYSELG_703,
      I1 => I_REG4_q_8_CYSELF_717,
      O => I_REG4_q_8_CYAND_715
    );
  I_REG4_q_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      IA => I_REG4_q_8_CYMUXG2_713,
      IB => I_REG4_q_8_FASTCARRY_714,
      SEL => I_REG4_q_8_CYAND_715,
      O => I_REG4_q_8_CYMUXFAST_716
    );
  I_REG4_q_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y4"
    )
    port map (
      IA => I_REG4_q_8_CY0G_711,
      IB => I_REG4_q_8_CYMUXF2_712,
      SEL => I_REG4_q_8_CYSELG_703,
      O => I_REG4_q_8_CYMUXG2_713
    );
  I_REG4_q_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(9),
      O => I_REG4_q_8_CY0G_711
    );
  I_REG4_q_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(9),
      O => I_REG4_q_8_CYSELG_703
    );
  I_REG4_q_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_8_SRINV_701
    );
  I_REG4_q_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_8_CLKINV_700
    );
  I_ADD_Madd_Z_lut_9_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X0Y4"
    )
    port map (
      ADR0 => I_REG3_q(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => I_REG4_q(9),
      O => I_ADD_Madd_Z_lut(9)
    );
  I_REG4_q_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_10_XORF_795,
      O => I_REG4_q_10_DXMUX_797
    );
  I_REG4_q_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      I0 => I_REG4_q_10_CYINIT_794,
      I1 => I_ADD_Madd_Z_lut(10),
      O => I_REG4_q_10_XORF_795
    );
  I_REG4_q_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      IA => I_REG4_q_10_CY0F_793,
      IB => I_REG4_q_10_CYINIT_794,
      SEL => I_REG4_q_10_CYSELF_774,
      O => I_ADD_Madd_Z_cy_10_Q
    );
  I_REG4_q_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      IA => I_REG4_q_10_CY0F_793,
      IB => I_REG4_q_10_CY0F_793,
      SEL => I_REG4_q_10_CYSELF_774,
      O => I_REG4_q_10_CYMUXF2_769
    );
  I_REG4_q_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_9_Q,
      O => I_REG4_q_10_CYINIT_794
    );
  I_REG4_q_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(10),
      O => I_REG4_q_10_CY0F_793
    );
  I_REG4_q_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(10),
      O => I_REG4_q_10_CYSELF_774
    );
  I_REG4_q_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_10_XORG_776,
      O => I_REG4_q_10_DYMUX_778
    );
  I_REG4_q_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_10_Q,
      I1 => I_ADD_Madd_Z_lut(11),
      O => I_REG4_q_10_XORG_776
    );
  I_REG4_q_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_10_CYMUXFAST_773,
      O => I_ADD_Madd_Z_cy_11_Q
    );
  I_REG4_q_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_9_Q,
      O => I_REG4_q_10_FASTCARRY_771
    );
  I_REG4_q_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      I0 => I_REG4_q_10_CYSELG_760,
      I1 => I_REG4_q_10_CYSELF_774,
      O => I_REG4_q_10_CYAND_772
    );
  I_REG4_q_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      IA => I_REG4_q_10_CYMUXG2_770,
      IB => I_REG4_q_10_FASTCARRY_771,
      SEL => I_REG4_q_10_CYAND_772,
      O => I_REG4_q_10_CYMUXFAST_773
    );
  I_REG4_q_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y5"
    )
    port map (
      IA => I_REG4_q_10_CY0G_768,
      IB => I_REG4_q_10_CYMUXF2_769,
      SEL => I_REG4_q_10_CYSELG_760,
      O => I_REG4_q_10_CYMUXG2_770
    );
  I_REG4_q_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(11),
      O => I_REG4_q_10_CY0G_768
    );
  I_REG4_q_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(11),
      O => I_REG4_q_10_CYSELG_760
    );
  I_REG4_q_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_10_SRINV_758
    );
  I_REG4_q_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_10_CLKINV_757
    );
  I_ADD_Madd_Z_lut_11_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y5"
    )
    port map (
      ADR0 => I_REG4_q(11),
      ADR1 => I_REG3_q(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(11)
    );
  I_REG4_q_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_12_XORF_852,
      O => I_REG4_q_12_DXMUX_854
    );
  I_REG4_q_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      I0 => I_REG4_q_12_CYINIT_851,
      I1 => I_ADD_Madd_Z_lut(12),
      O => I_REG4_q_12_XORF_852
    );
  I_REG4_q_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      IA => I_REG4_q_12_CY0F_850,
      IB => I_REG4_q_12_CYINIT_851,
      SEL => I_REG4_q_12_CYSELF_831,
      O => I_ADD_Madd_Z_cy_12_Q
    );
  I_REG4_q_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      IA => I_REG4_q_12_CY0F_850,
      IB => I_REG4_q_12_CY0F_850,
      SEL => I_REG4_q_12_CYSELF_831,
      O => I_REG4_q_12_CYMUXF2_826
    );
  I_REG4_q_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_11_Q,
      O => I_REG4_q_12_CYINIT_851
    );
  I_REG4_q_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(12),
      O => I_REG4_q_12_CY0F_850
    );
  I_REG4_q_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(12),
      O => I_REG4_q_12_CYSELF_831
    );
  I_REG4_q_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_12_XORG_833,
      O => I_REG4_q_12_DYMUX_835
    );
  I_REG4_q_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_12_Q,
      I1 => I_ADD_Madd_Z_lut(13),
      O => I_REG4_q_12_XORG_833
    );
  I_REG4_q_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_cy_11_Q,
      O => I_REG4_q_12_FASTCARRY_828
    );
  I_REG4_q_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      I0 => I_REG4_q_12_CYSELG_817,
      I1 => I_REG4_q_12_CYSELF_831,
      O => I_REG4_q_12_CYAND_829
    );
  I_REG4_q_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      IA => I_REG4_q_12_CYMUXG2_827,
      IB => I_REG4_q_12_FASTCARRY_828,
      SEL => I_REG4_q_12_CYAND_829,
      O => I_REG4_q_12_CYMUXFAST_830
    );
  I_REG4_q_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y6"
    )
    port map (
      IA => I_REG4_q_12_CY0G_825,
      IB => I_REG4_q_12_CYMUXF2_826,
      SEL => I_REG4_q_12_CYSELG_817,
      O => I_REG4_q_12_CYMUXG2_827
    );
  I_REG4_q_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(13),
      O => I_REG4_q_12_CY0G_825
    );
  I_REG4_q_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(13),
      O => I_REG4_q_12_CYSELG_817
    );
  I_REG4_q_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_12_SRINV_815
    );
  I_REG4_q_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_12_CLKINV_814
    );
  I_ADD_Madd_Z_lut_13_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y6"
    )
    port map (
      ADR0 => I_REG3_q(13),
      ADR1 => I_REG4_q(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(13)
    );
  I_REG4_q_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_14_XORF_901,
      O => I_REG4_q_14_DXMUX_903
    );
  I_REG4_q_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X0Y7"
    )
    port map (
      I0 => I_REG4_q_14_CYINIT_900,
      I1 => I_ADD_Madd_Z_lut(14),
      O => I_REG4_q_14_XORF_901
    );
  I_REG4_q_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X0Y7"
    )
    port map (
      IA => I_REG4_q_14_CY0F_899,
      IB => I_REG4_q_14_CYINIT_900,
      SEL => I_REG4_q_14_CYSELF_891,
      O => I_ADD_Madd_Z_cy_14_Q
    );
  I_REG4_q_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_12_CYMUXFAST_830,
      O => I_REG4_q_14_CYINIT_900
    );
  I_REG4_q_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG3_q(14),
      O => I_REG4_q_14_CY0F_899
    );
  I_REG4_q_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_ADD_Madd_Z_lut(14),
      O => I_REG4_q_14_CYSELF_891
    );
  I_REG4_q_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q_14_XORG_881,
      O => I_REG4_q_14_DYMUX_883
    );
  I_REG4_q_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X0Y7"
    )
    port map (
      I0 => I_ADD_Madd_Z_cy_14_Q,
      I1 => I_ADD_Madd_Z_lut(15),
      O => I_REG4_q_14_XORG_881
    );
  I_REG4_q_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG4_q_14_SRINV_871
    );
  I_REG4_q_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG4_q_14_CLKINV_870
    );
  I_ADD_Madd_Z_lut_15_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X0Y7"
    )
    port map (
      ADR0 => I_REG4_q(15),
      ADR1 => VCC,
      ADR2 => I_REG3_q(15),
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(15)
    );
  Accr_r_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => Accr_r_0_O,
      O => Accr_r(0)
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  Accr_r_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => Accr_r_1_O,
      O => Accr_r(1)
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  Accr_r_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => Accr_r_2_O,
      O => Accr_r(2)
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  Accr_r_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => Accr_r_3_O,
      O => Accr_r(3)
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  Accr_r_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => Accr_r_4_O,
      O => Accr_r(4)
    );
  A_4_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(4),
      O => A_4_INBUF
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  Accr_r_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => Accr_r_5_O,
      O => Accr_r(5)
    );
  A_5_IBUF : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(5),
      O => A_5_INBUF
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  Accr_r_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => Accr_r_6_O,
      O => Accr_r(6)
    );
  A_6_IBUF : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(6),
      O => A_6_INBUF
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  Accr_r_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => Accr_r_7_O,
      O => Accr_r(7)
    );
  A_7_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 526 ps
    )
    port map (
      I => A(7),
      O => A_7_INBUF
    );
  B_4_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(4),
      O => B_4_INBUF
    );
  Accr_r_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => Accr_r_8_O,
      O => Accr_r(8)
    );
  B_5_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(5),
      O => B_5_INBUF
    );
  Accr_r_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => Accr_r_9_O,
      O => Accr_r(9)
    );
  B_6_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(6),
      O => B_6_INBUF
    );
  B_7_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => B(7),
      O => B_7_INBUF
    );
  Accr_r_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => Accr_r_10_O,
      O => Accr_r(10)
    );
  Accr_r_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => Accr_r_11_O,
      O => Accr_r(11)
    );
  Accr_r_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => Accr_r_12_O,
      O => Accr_r(12)
    );
  Accr_r_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => Accr_r_13_O,
      O => Accr_r(13)
    );
  Accr_r_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => Accr_r_14_O,
      O => Accr_r(14)
    );
  Accr_r_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => Accr_r_15_O,
      O => Accr_r(15)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_375
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  I_MULT_Mmult_Z : X_MULT18X18
    generic map(
      LOC => "MULT18X18_X0Y0"
    )
    port map (
      A(17) => NlwBufferSignal_I_MULT_Mmult_Z_A_17_Q,
      A(16) => NlwBufferSignal_I_MULT_Mmult_Z_A_16_Q,
      A(15) => NlwBufferSignal_I_MULT_Mmult_Z_A_15_Q,
      A(14) => NlwBufferSignal_I_MULT_Mmult_Z_A_14_Q,
      A(13) => NlwBufferSignal_I_MULT_Mmult_Z_A_13_Q,
      A(12) => NlwBufferSignal_I_MULT_Mmult_Z_A_12_Q,
      A(11) => NlwBufferSignal_I_MULT_Mmult_Z_A_11_Q,
      A(10) => NlwBufferSignal_I_MULT_Mmult_Z_A_10_Q,
      A(9) => NlwBufferSignal_I_MULT_Mmult_Z_A_9_Q,
      A(8) => NlwBufferSignal_I_MULT_Mmult_Z_A_8_Q,
      A(7) => NlwBufferSignal_I_MULT_Mmult_Z_A_7_Q,
      A(6) => I_REG1_q(6),
      A(5) => I_REG1_q(5),
      A(4) => I_REG1_q(4),
      A(3) => I_REG1_q(3),
      A(2) => I_REG1_q(2),
      A(1) => NlwBufferSignal_I_MULT_Mmult_Z_A_1_Q,
      A(0) => NlwBufferSignal_I_MULT_Mmult_Z_A_0_Q,
      B(17) => NlwBufferSignal_I_MULT_Mmult_Z_B_17_Q,
      B(16) => NlwBufferSignal_I_MULT_Mmult_Z_B_16_Q,
      B(15) => NlwBufferSignal_I_MULT_Mmult_Z_B_15_Q,
      B(14) => NlwBufferSignal_I_MULT_Mmult_Z_B_14_Q,
      B(13) => NlwBufferSignal_I_MULT_Mmult_Z_B_13_Q,
      B(12) => NlwBufferSignal_I_MULT_Mmult_Z_B_12_Q,
      B(11) => NlwBufferSignal_I_MULT_Mmult_Z_B_11_Q,
      B(10) => NlwBufferSignal_I_MULT_Mmult_Z_B_10_Q,
      B(9) => NlwBufferSignal_I_MULT_Mmult_Z_B_9_Q,
      B(8) => NlwBufferSignal_I_MULT_Mmult_Z_B_8_Q,
      B(7) => NlwBufferSignal_I_MULT_Mmult_Z_B_7_Q,
      B(6) => NlwBufferSignal_I_MULT_Mmult_Z_B_6_Q,
      B(5) => NlwBufferSignal_I_MULT_Mmult_Z_B_5_Q,
      B(4) => NlwBufferSignal_I_MULT_Mmult_Z_B_4_Q,
      B(3) => I_REG2_q(3),
      B(2) => I_REG2_q(2),
      B(1) => NlwBufferSignal_I_MULT_Mmult_Z_B_1_Q,
      B(0) => NlwBufferSignal_I_MULT_Mmult_Z_B_0_Q,
      P(35) => I_MULT_Mmult_Z_PROD35,
      P(34) => I_MULT_Mmult_Z_PROD34,
      P(33) => I_MULT_Mmult_Z_PROD33,
      P(32) => I_MULT_Mmult_Z_PROD32,
      P(31) => I_MULT_Mmult_Z_PROD31,
      P(30) => I_MULT_Mmult_Z_PROD30,
      P(29) => I_MULT_Mmult_Z_PROD29,
      P(28) => I_MULT_Mmult_Z_PROD28,
      P(27) => I_MULT_Mmult_Z_PROD27,
      P(26) => I_MULT_Mmult_Z_PROD26,
      P(25) => I_MULT_Mmult_Z_PROD25,
      P(24) => I_MULT_Mmult_Z_PROD24,
      P(23) => I_MULT_Mmult_Z_PROD23,
      P(22) => I_MULT_Mmult_Z_PROD22,
      P(21) => I_MULT_Mmult_Z_PROD21,
      P(20) => I_MULT_Mmult_Z_PROD20,
      P(19) => I_MULT_Mmult_Z_PROD19,
      P(18) => I_MULT_Mmult_Z_PROD18,
      P(17) => I_MULT_Mmult_Z_PROD17,
      P(16) => I_MULT_Mmult_Z_PROD16,
      P(15) => MRES_I(15),
      P(14) => MRES_I(14),
      P(13) => MRES_I(13),
      P(12) => MRES_I(12),
      P(11) => MRES_I(11),
      P(10) => MRES_I(10),
      P(9) => MRES_I(9),
      P(8) => MRES_I(8),
      P(7) => MRES_I(7),
      P(6) => MRES_I(6),
      P(5) => MRES_I(5),
      P(4) => MRES_I(4),
      P(3) => MRES_I(3),
      P(2) => MRES_I(2),
      P(1) => MRES_I(1),
      P(0) => MRES_I(0)
    );
  I_REG1_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_1_INBUF,
      O => I_REG1_q_1_DXMUX_1240
    );
  I_REG1_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_0_INBUF,
      O => I_REG1_q_1_DYMUX_1232
    );
  I_REG1_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG1_q_1_SRINV_1230
    );
  I_REG1_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG1_q_1_CLKINV_1229
    );
  I_REG1_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_3_INBUF,
      O => I_REG1_q_3_DXMUX_1264
    );
  I_REG1_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_2_INBUF,
      O => I_REG1_q_3_DYMUX_1256
    );
  I_REG1_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG1_q_3_SRINV_1254
    );
  I_REG1_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG1_q_3_CLKINV_1253
    );
  I_REG1_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_5_INBUF,
      O => I_REG1_q_5_DXMUX_1288
    );
  I_REG1_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_4_INBUF,
      O => I_REG1_q_5_DYMUX_1280
    );
  I_REG1_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG1_q_5_SRINV_1278
    );
  I_REG1_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG1_q_5_CLKINV_1277
    );
  I_REG1_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_7_INBUF,
      O => I_REG1_q_7_DXMUX_1312
    );
  I_REG1_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => A_6_INBUF,
      O => I_REG1_q_7_DYMUX_1304
    );
  I_REG1_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG1_q_7_SRINV_1302
    );
  I_REG1_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG1_q_7_CLKINV_1301
    );
  I_REG2_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_1_INBUF,
      O => I_REG2_q_1_DXMUX_1336
    );
  I_REG2_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_0_INBUF,
      O => I_REG2_q_1_DYMUX_1328
    );
  I_REG2_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG2_q_1_SRINV_1326
    );
  I_REG2_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG2_q_1_CLKINV_1325
    );
  I_REG2_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_3_INBUF,
      O => I_REG2_q_3_DXMUX_1360
    );
  I_REG2_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_2_INBUF,
      O => I_REG2_q_3_DYMUX_1352
    );
  I_REG2_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG2_q_3_SRINV_1350
    );
  I_REG2_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG2_q_3_CLKINV_1349
    );
  I_REG2_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_5_INBUF,
      O => I_REG2_q_5_DXMUX_1384
    );
  I_REG2_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_4_INBUF,
      O => I_REG2_q_5_DYMUX_1376
    );
  I_REG2_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG2_q_5_SRINV_1374
    );
  I_REG2_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG2_q_5_CLKINV_1373
    );
  I_REG2_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_7_INBUF,
      O => I_REG2_q_7_DXMUX_1408
    );
  I_REG2_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => B_6_INBUF,
      O => I_REG2_q_7_DYMUX_1400
    );
  I_REG2_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG2_q_7_SRINV_1398
    );
  I_REG2_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG2_q_7_CLKINV_1397
    );
  I_REG3_q_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(1),
      O => I_REG3_q_1_DXMUX_1432
    );
  I_REG3_q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(0),
      O => I_REG3_q_1_DYMUX_1424
    );
  I_REG3_q_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_1_SRINV_1422
    );
  I_REG3_q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_1_CLKINV_1421
    );
  I_REG3_q_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(3),
      O => I_REG3_q_3_DXMUX_1456
    );
  I_REG3_q_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(2),
      O => I_REG3_q_3_DYMUX_1448
    );
  I_REG3_q_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_3_SRINV_1446
    );
  I_REG3_q_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_3_CLKINV_1445
    );
  I_REG3_q_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(5),
      O => I_REG3_q_5_DXMUX_1480
    );
  I_REG3_q_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(4),
      O => I_REG3_q_5_DYMUX_1472
    );
  I_REG3_q_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_5_SRINV_1470
    );
  I_REG3_q_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_5_CLKINV_1469
    );
  I_REG3_q_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(7),
      O => I_REG3_q_7_DXMUX_1504
    );
  I_REG3_q_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(6),
      O => I_REG3_q_7_DYMUX_1496
    );
  I_REG3_q_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_7_SRINV_1494
    );
  I_REG3_q_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_7_CLKINV_1493
    );
  I_REG3_q_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(9),
      O => I_REG3_q_9_DXMUX_1528
    );
  I_REG3_q_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(8),
      O => I_REG3_q_9_DYMUX_1520
    );
  I_REG3_q_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_9_SRINV_1518
    );
  I_REG3_q_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_9_CLKINV_1517
    );
  I_REG3_q_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(11),
      O => I_REG3_q_11_DXMUX_1552
    );
  I_REG3_q_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(10),
      O => I_REG3_q_11_DYMUX_1544
    );
  I_REG3_q_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_11_SRINV_1542
    );
  I_REG3_q_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_11_CLKINV_1541
    );
  I_REG3_q_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(13),
      O => I_REG3_q_13_DXMUX_1576
    );
  I_REG3_q_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(12),
      O => I_REG3_q_13_DYMUX_1568
    );
  I_REG3_q_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_13_SRINV_1566
    );
  I_REG3_q_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_13_CLKINV_1565
    );
  I_REG3_q_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(15),
      O => I_REG3_q_15_DXMUX_1600
    );
  I_REG3_q_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => MRES_I(14),
      O => I_REG3_q_15_DYMUX_1592
    );
  I_REG3_q_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_375,
      O => I_REG3_q_15_SRINV_1590
    );
  I_REG3_q_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => I_REG3_q_15_CLKINV_1589
    );
  I_REG4_q_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_0_DYMUX_491,
      CE => VCC,
      CLK => I_REG4_q_0_CLKINV_475,
      SET => GND,
      RST => I_REG4_q_0_SRINV_476,
      O => I_REG4_q(1)
    );
  I_ADD_Madd_Z_lut_0_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => I_REG4_q(0),
      ADR1 => I_REG3_q(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(0)
    );
  I_REG4_q_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y0",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_0_DXMUX_512,
      CE => VCC,
      CLK => I_REG4_q_0_CLKINV_475,
      SET => GND,
      RST => I_REG4_q_0_SRINV_476,
      O => I_REG4_q(0)
    );
  I_REG4_q_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_2_DYMUX_550,
      CE => VCC,
      CLK => I_REG4_q_2_CLKINV_529,
      SET => GND,
      RST => I_REG4_q_2_SRINV_530,
      O => I_REG4_q(3)
    );
  I_ADD_Madd_Z_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y1"
    )
    port map (
      ADR0 => I_REG4_q(2),
      ADR1 => I_REG3_q(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(2)
    );
  I_REG4_q_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y1",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_2_DXMUX_569,
      CE => VCC,
      CLK => I_REG4_q_2_CLKINV_529,
      SET => GND,
      RST => I_REG4_q_2_SRINV_530,
      O => I_REG4_q(2)
    );
  I_REG3_q_9 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_9_DXMUX_1528,
      CE => VCC,
      CLK => I_REG3_q_9_CLKINV_1517,
      SET => GND,
      RST => I_REG3_q_9_SRINV_1518,
      O => I_REG3_q(9)
    );
  I_REG3_q_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_11_DYMUX_1544,
      CE => VCC,
      CLK => I_REG3_q_11_CLKINV_1541,
      SET => GND,
      RST => I_REG3_q_11_SRINV_1542,
      O => I_REG3_q(10)
    );
  I_REG3_q_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_11_DXMUX_1552,
      CE => VCC,
      CLK => I_REG3_q_11_CLKINV_1541,
      SET => GND,
      RST => I_REG3_q_11_SRINV_1542,
      O => I_REG3_q(11)
    );
  I_REG3_q_12 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_13_DYMUX_1568,
      CE => VCC,
      CLK => I_REG3_q_13_CLKINV_1565,
      SET => GND,
      RST => I_REG3_q_13_SRINV_1566,
      O => I_REG3_q(12)
    );
  I_REG3_q_13 : X_FF
    generic map(
      LOC => "SLICE_X3Y3",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_13_DXMUX_1576,
      CE => VCC,
      CLK => I_REG3_q_13_CLKINV_1565,
      SET => GND,
      RST => I_REG3_q_13_SRINV_1566,
      O => I_REG3_q(13)
    );
  I_REG3_q_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_15_DYMUX_1592,
      CE => VCC,
      CLK => I_REG3_q_15_CLKINV_1589,
      SET => GND,
      RST => I_REG3_q_15_SRINV_1590,
      O => I_REG3_q(14)
    );
  I_REG3_q_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y5",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_15_DXMUX_1600,
      CE => VCC,
      CLK => I_REG3_q_15_CLKINV_1589,
      SET => GND,
      RST => I_REG3_q_15_SRINV_1590,
      O => I_REG3_q(15)
    );
  I_REG4_q_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_4_DYMUX_607,
      CE => VCC,
      CLK => I_REG4_q_4_CLKINV_586,
      SET => GND,
      RST => I_REG4_q_4_SRINV_587,
      O => I_REG4_q(5)
    );
  I_ADD_Madd_Z_lut_4_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => I_REG3_q(4),
      ADR2 => VCC,
      ADR3 => I_REG4_q(4),
      O => I_ADD_Madd_Z_lut(4)
    );
  I_REG4_q_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y2",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_4_DXMUX_626,
      CE => VCC,
      CLK => I_REG4_q_4_CLKINV_586,
      SET => GND,
      RST => I_REG4_q_4_SRINV_587,
      O => I_REG4_q(4)
    );
  I_REG4_q_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_6_DYMUX_664,
      CE => VCC,
      CLK => I_REG4_q_6_CLKINV_643,
      SET => GND,
      RST => I_REG4_q_6_SRINV_644,
      O => I_REG4_q(7)
    );
  I_ADD_Madd_Z_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y3"
    )
    port map (
      ADR0 => I_REG4_q(6),
      ADR1 => I_REG3_q(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(6)
    );
  I_REG4_q_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y3",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_6_DXMUX_683,
      CE => VCC,
      CLK => I_REG4_q_6_CLKINV_643,
      SET => GND,
      RST => I_REG4_q_6_SRINV_644,
      O => I_REG4_q(6)
    );
  I_REG4_q_9 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_8_DYMUX_721,
      CE => VCC,
      CLK => I_REG4_q_8_CLKINV_700,
      SET => GND,
      RST => I_REG4_q_8_SRINV_701,
      O => I_REG4_q(9)
    );
  I_ADD_Madd_Z_lut_8_Q : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X0Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => I_REG3_q(8),
      ADR2 => VCC,
      ADR3 => I_REG4_q(8),
      O => I_ADD_Madd_Z_lut(8)
    );
  I_REG4_q_8 : X_FF
    generic map(
      LOC => "SLICE_X0Y4",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_8_DXMUX_740,
      CE => VCC,
      CLK => I_REG4_q_8_CLKINV_700,
      SET => GND,
      RST => I_REG4_q_8_SRINV_701,
      O => I_REG4_q(8)
    );
  I_REG4_q_11 : X_FF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_10_DYMUX_778,
      CE => VCC,
      CLK => I_REG4_q_10_CLKINV_757,
      SET => GND,
      RST => I_REG4_q_10_SRINV_758,
      O => I_REG4_q(11)
    );
  I_ADD_Madd_Z_lut_10_Q : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X0Y5"
    )
    port map (
      ADR0 => I_REG3_q(10),
      ADR1 => I_REG4_q(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(10)
    );
  I_REG4_q_10 : X_FF
    generic map(
      LOC => "SLICE_X0Y5",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_10_DXMUX_797,
      CE => VCC,
      CLK => I_REG4_q_10_CLKINV_757,
      SET => GND,
      RST => I_REG4_q_10_SRINV_758,
      O => I_REG4_q(10)
    );
  I_REG4_q_13 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_12_DYMUX_835,
      CE => VCC,
      CLK => I_REG4_q_12_CLKINV_814,
      SET => GND,
      RST => I_REG4_q_12_SRINV_815,
      O => I_REG4_q(13)
    );
  I_ADD_Madd_Z_lut_12_Q : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X0Y6"
    )
    port map (
      ADR0 => I_REG3_q(12),
      ADR1 => VCC,
      ADR2 => I_REG4_q(12),
      ADR3 => VCC,
      O => I_ADD_Madd_Z_lut(12)
    );
  I_REG4_q_12 : X_FF
    generic map(
      LOC => "SLICE_X0Y6",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_12_DXMUX_854,
      CE => VCC,
      CLK => I_REG4_q_12_CLKINV_814,
      SET => GND,
      RST => I_REG4_q_12_SRINV_815,
      O => I_REG4_q(12)
    );
  I_REG4_q_15 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_14_DYMUX_883,
      CE => VCC,
      CLK => I_REG4_q_14_CLKINV_870,
      SET => GND,
      RST => I_REG4_q_14_SRINV_871,
      O => I_REG4_q(15)
    );
  I_ADD_Madd_Z_lut_14_Q : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X0Y7"
    )
    port map (
      ADR0 => I_REG3_q(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => I_REG4_q(14),
      O => I_ADD_Madd_Z_lut(14)
    );
  I_REG4_q_14 : X_FF
    generic map(
      LOC => "SLICE_X0Y7",
      INIT => '0'
    )
    port map (
      I => I_REG4_q_14_DXMUX_903,
      CE => VCC,
      CLK => I_REG4_q_14_CLKINV_870,
      SET => GND,
      RST => I_REG4_q_14_SRINV_871,
      O => I_REG4_q(14)
    );
  I_REG1_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_1_DYMUX_1232,
      CE => VCC,
      CLK => I_REG1_q_1_CLKINV_1229,
      SET => GND,
      RST => I_REG1_q_1_SRINV_1230,
      O => I_REG1_q(0)
    );
  I_REG1_q_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y0",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_1_DXMUX_1240,
      CE => VCC,
      CLK => I_REG1_q_1_CLKINV_1229,
      SET => GND,
      RST => I_REG1_q_1_SRINV_1230,
      O => I_REG1_q(1)
    );
  I_REG1_q_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_3_DYMUX_1256,
      CE => VCC,
      CLK => I_REG1_q_3_CLKINV_1253,
      SET => GND,
      RST => I_REG1_q_3_SRINV_1254,
      O => I_REG1_q(2)
    );
  I_REG1_q_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y1",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_3_DXMUX_1264,
      CE => VCC,
      CLK => I_REG1_q_3_CLKINV_1253,
      SET => GND,
      RST => I_REG1_q_3_SRINV_1254,
      O => I_REG1_q(3)
    );
  I_REG1_q_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_5_DYMUX_1280,
      CE => VCC,
      CLK => I_REG1_q_5_CLKINV_1277,
      SET => GND,
      RST => I_REG1_q_5_SRINV_1278,
      O => I_REG1_q(4)
    );
  I_REG2_q_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_5_DYMUX_1376,
      CE => VCC,
      CLK => I_REG2_q_5_CLKINV_1373,
      SET => GND,
      RST => I_REG2_q_5_SRINV_1374,
      O => I_REG2_q(4)
    );
  I_REG2_q_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_5_DXMUX_1384,
      CE => VCC,
      CLK => I_REG2_q_5_CLKINV_1373,
      SET => GND,
      RST => I_REG2_q_5_SRINV_1374,
      O => I_REG2_q(5)
    );
  I_REG2_q_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_7_DYMUX_1400,
      CE => VCC,
      CLK => I_REG2_q_7_CLKINV_1397,
      SET => GND,
      RST => I_REG2_q_7_SRINV_1398,
      O => I_REG2_q(6)
    );
  I_REG2_q_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_7_DXMUX_1408,
      CE => VCC,
      CLK => I_REG2_q_7_CLKINV_1397,
      SET => GND,
      RST => I_REG2_q_7_SRINV_1398,
      O => I_REG2_q(7)
    );
  I_REG3_q_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_1_DYMUX_1424,
      CE => VCC,
      CLK => I_REG3_q_1_CLKINV_1421,
      SET => GND,
      RST => I_REG3_q_1_SRINV_1422,
      O => I_REG3_q(0)
    );
  I_REG3_q_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_1_DXMUX_1432,
      CE => VCC,
      CLK => I_REG3_q_1_CLKINV_1421,
      SET => GND,
      RST => I_REG3_q_1_SRINV_1422,
      O => I_REG3_q(1)
    );
  I_REG1_q_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y3",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_5_DXMUX_1288,
      CE => VCC,
      CLK => I_REG1_q_5_CLKINV_1277,
      SET => GND,
      RST => I_REG1_q_5_SRINV_1278,
      O => I_REG1_q(5)
    );
  I_REG1_q_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_7_DYMUX_1304,
      CE => VCC,
      CLK => I_REG1_q_7_CLKINV_1301,
      SET => GND,
      RST => I_REG1_q_7_SRINV_1302,
      O => I_REG1_q(6)
    );
  I_REG1_q_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      I => I_REG1_q_7_DXMUX_1312,
      CE => VCC,
      CLK => I_REG1_q_7_CLKINV_1301,
      SET => GND,
      RST => I_REG1_q_7_SRINV_1302,
      O => I_REG1_q(7)
    );
  I_REG2_q_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_1_DYMUX_1328,
      CE => VCC,
      CLK => I_REG2_q_1_CLKINV_1325,
      SET => GND,
      RST => I_REG2_q_1_SRINV_1326,
      O => I_REG2_q(0)
    );
  I_REG2_q_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_1_DXMUX_1336,
      CE => VCC,
      CLK => I_REG2_q_1_CLKINV_1325,
      SET => GND,
      RST => I_REG2_q_1_SRINV_1326,
      O => I_REG2_q(1)
    );
  I_REG2_q_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_3_DYMUX_1352,
      CE => VCC,
      CLK => I_REG2_q_3_CLKINV_1349,
      SET => GND,
      RST => I_REG2_q_3_SRINV_1350,
      O => I_REG2_q(2)
    );
  I_REG2_q_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y0",
      INIT => '0'
    )
    port map (
      I => I_REG2_q_3_DXMUX_1360,
      CE => VCC,
      CLK => I_REG2_q_3_CLKINV_1349,
      SET => GND,
      RST => I_REG2_q_3_SRINV_1350,
      O => I_REG2_q(3)
    );
  I_REG3_q_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_3_DYMUX_1448,
      CE => VCC,
      CLK => I_REG3_q_3_CLKINV_1445,
      SET => GND,
      RST => I_REG3_q_3_SRINV_1446,
      O => I_REG3_q(2)
    );
  I_REG3_q_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_3_DXMUX_1456,
      CE => VCC,
      CLK => I_REG3_q_3_CLKINV_1445,
      SET => GND,
      RST => I_REG3_q_3_SRINV_1446,
      O => I_REG3_q(3)
    );
  I_REG3_q_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_5_DYMUX_1472,
      CE => VCC,
      CLK => I_REG3_q_5_CLKINV_1469,
      SET => GND,
      RST => I_REG3_q_5_SRINV_1470,
      O => I_REG3_q(4)
    );
  I_REG3_q_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y2",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_5_DXMUX_1480,
      CE => VCC,
      CLK => I_REG3_q_5_CLKINV_1469,
      SET => GND,
      RST => I_REG3_q_5_SRINV_1470,
      O => I_REG3_q(5)
    );
  I_REG3_q_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_7_DYMUX_1496,
      CE => VCC,
      CLK => I_REG3_q_7_CLKINV_1493,
      SET => GND,
      RST => I_REG3_q_7_SRINV_1494,
      O => I_REG3_q(6)
    );
  I_REG3_q_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y0",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_7_DXMUX_1504,
      CE => VCC,
      CLK => I_REG3_q_7_CLKINV_1493,
      SET => GND,
      RST => I_REG3_q_7_SRINV_1494,
      O => I_REG3_q(7)
    );
  I_REG3_q_8 : X_FF
    generic map(
      LOC => "SLICE_X3Y5",
      INIT => '0'
    )
    port map (
      I => I_REG3_q_9_DYMUX_1520,
      CE => VCC,
      CLK => I_REG3_q_9_CLKINV_1517,
      SET => GND,
      RST => I_REG3_q_9_SRINV_1518,
      O => I_REG3_q(8)
    );
  Accr_r_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(0),
      O => Accr_r_0_O
    );
  Accr_r_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(1),
      O => Accr_r_1_O
    );
  Accr_r_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(2),
      O => Accr_r_2_O
    );
  Accr_r_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(3),
      O => Accr_r_3_O
    );
  Accr_r_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(4),
      O => Accr_r_4_O
    );
  Accr_r_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(5),
      O => Accr_r_5_O
    );
  Accr_r_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(6),
      O => Accr_r_6_O
    );
  Accr_r_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(7),
      O => Accr_r_7_O
    );
  Accr_r_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(8),
      O => Accr_r_8_O
    );
  Accr_r_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(9),
      O => Accr_r_9_O
    );
  Accr_r_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(10),
      O => Accr_r_10_O
    );
  Accr_r_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(11),
      O => Accr_r_11_O
    );
  Accr_r_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(12),
      O => Accr_r_12_O
    );
  Accr_r_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(13),
      O => Accr_r_13_O
    );
  Accr_r_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(14),
      O => Accr_r_14_O
    );
  Accr_r_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG4_q(15),
      O => Accr_r_15_O
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_17_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_17_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_16_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_16_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_15_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_15_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_14_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_14_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_13_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_13_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_12_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_12_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_11_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_11_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_10_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_10_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_9_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_8_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_7_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(1),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_1_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_A_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG1_q(0),
      O => NlwBufferSignal_I_MULT_Mmult_Z_A_0_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_17_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_17_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_16_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_16_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_15_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_15_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_14_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_14_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_13_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_13_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_12_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_12_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_11_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_11_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_10_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_10_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_9_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_8_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(7),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_7_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(6),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_6_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(5),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_5_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(4),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_4_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(1),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_1_Q
    );
  NlwBufferBlock_I_MULT_Mmult_Z_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG2_q(0),
      O => NlwBufferSignal_I_MULT_Mmult_Z_B_0_Q
    );
  NlwBlock_param_mac_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_param_mac_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

