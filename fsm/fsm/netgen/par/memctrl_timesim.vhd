--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: memctrl_timesim.vhd
-- /___/   /\     Timestamp: Sun May 11 19:09:50 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf memctrl.pcf -rpw 100 -tpw 0 -ar Structure -tm memctrl -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim memctrl.ncd memctrl_timesim.vhd 
-- Device	: 3s50pq208-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: memctrl.ncd
-- Output file	: /home/gfudge/fpga/server/fsm/fsm/netgen/par/memctrl_timesim.vhd
-- # of Entities	: 1
-- Design Name	: memctrl
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

entity memctrl is
  port (
    reset : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    request : in STD_LOGIC := 'X'; 
    ready : out STD_LOGIC; 
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    address : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    burst : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end memctrl;

architecture Structure of memctrl is
  signal clock_BUFGP : STD_LOGIC; 
  signal reset_IBUF_499 : STD_LOGIC; 
  signal I_FSM_maddr_not0002_0 : STD_LOGIC; 
  signal I_FSM_N01 : STD_LOGIC; 
  signal burst_3_IBUF_522 : STD_LOGIC; 
  signal request_IBUF_523 : STD_LOGIC; 
  signal address_0_IBUF_525 : STD_LOGIC; 
  signal address_1_IBUF_527 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_1_Q : STD_LOGIC; 
  signal address_2_IBUF_530 : STD_LOGIC; 
  signal address_3_IBUF_532 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_3_Q : STD_LOGIC; 
  signal address_4_IBUF_535 : STD_LOGIC; 
  signal address_5_IBUF_537 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_5_Q : STD_LOGIC; 
  signal address_6_IBUF_540 : STD_LOGIC; 
  signal address_7_IBUF_542 : STD_LOGIC; 
  signal address_8_IBUF_545 : STD_LOGIC; 
  signal address_9_IBUF_547 : STD_LOGIC; 
  signal I_FSM_rdy_549 : STD_LOGIC; 
  signal burst_0_IBUF_573 : STD_LOGIC; 
  signal burst_1_IBUF_574 : STD_LOGIC; 
  signal burst_2_IBUF_575 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O : STD_LOGIC; 
  signal I_FSM_dout_7_DXMUX_624 : STD_LOGIC; 
  signal I_FSM_dout_7_DYMUX_615 : STD_LOGIC; 
  signal I_FSM_dout_7_SRINV_613 : STD_LOGIC; 
  signal I_FSM_dout_7_CLKINV_612 : STD_LOGIC; 
  signal I_FSM_dout_7_CEINV_611 : STD_LOGIC; 
  signal I_FSM_dout_19_DXMUX_652 : STD_LOGIC; 
  signal I_FSM_dout_19_DYMUX_643 : STD_LOGIC; 
  signal I_FSM_dout_19_SRINV_641 : STD_LOGIC; 
  signal I_FSM_dout_19_CLKINV_640 : STD_LOGIC; 
  signal I_FSM_dout_19_CEINV_639 : STD_LOGIC; 
  signal I_FSM_dout_27_DXMUX_680 : STD_LOGIC; 
  signal I_FSM_dout_27_DYMUX_671 : STD_LOGIC; 
  signal I_FSM_dout_27_SRINV_669 : STD_LOGIC; 
  signal I_FSM_dout_27_CLKINV_668 : STD_LOGIC; 
  signal I_FSM_dout_27_CEINV_667 : STD_LOGIC; 
  signal I_FSM_dout_9_DXMUX_708 : STD_LOGIC; 
  signal I_FSM_dout_9_DYMUX_699 : STD_LOGIC; 
  signal I_FSM_dout_9_SRINV_697 : STD_LOGIC; 
  signal I_FSM_dout_9_CLKINV_696 : STD_LOGIC; 
  signal I_FSM_dout_9_CEINV_695 : STD_LOGIC; 
  signal I_FSM_dout_29_DXMUX_736 : STD_LOGIC; 
  signal I_FSM_dout_29_DYMUX_727 : STD_LOGIC; 
  signal I_FSM_dout_29_SRINV_725 : STD_LOGIC; 
  signal I_FSM_dout_29_CLKINV_724 : STD_LOGIC; 
  signal I_FSM_dout_29_CEINV_723 : STD_LOGIC; 
  signal I_FSM_state_ir_0_DYMUX_753 : STD_LOGIC; 
  signal I_FSM_state_ir_0_CLKINV_750 : STD_LOGIC; 
  signal I_FSM_state_ir_0_CEINV_749 : STD_LOGIC; 
  signal I_FSM_cnt_ir_3_DXMUX_791 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir3 : STD_LOGIC; 
  signal I_FSM_state_ir_0_not0001 : STD_LOGIC; 
  signal I_FSM_cnt_ir_3_CLKINV_775 : STD_LOGIC; 
  signal I_FSM_cnt_ir_3_CEINV_774 : STD_LOGIC; 
  signal I_FSM_rdy_and0000 : STD_LOGIC; 
  signal memaddr_0_DXMUX_860 : STD_LOGIC; 
  signal memaddr_0_XORF_858 : STD_LOGIC; 
  signal memaddr_0_CYINIT_857 : STD_LOGIC; 
  signal memaddr_0_CYSELF_850 : STD_LOGIC; 
  signal memaddr_0_DYMUX_840 : STD_LOGIC; 
  signal memaddr_0_XORG_838 : STD_LOGIC; 
  signal memaddr_0_CYMUXG_837 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_0_Q : STD_LOGIC; 
  signal memaddr_0_LOGIC_ZERO_835 : STD_LOGIC; 
  signal memaddr_0_CYSELG_828 : STD_LOGIC; 
  signal memaddr_0_SRINV_826 : STD_LOGIC; 
  signal memaddr_0_CLKINV_825 : STD_LOGIC; 
  signal memaddr_0_CEINV_824 : STD_LOGIC; 
  signal memaddr_2_DXMUX_920 : STD_LOGIC; 
  signal memaddr_2_XORF_918 : STD_LOGIC; 
  signal memaddr_2_CYINIT_917 : STD_LOGIC; 
  signal memaddr_2_DYMUX_902 : STD_LOGIC; 
  signal memaddr_2_XORG_900 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_2_Q : STD_LOGIC; 
  signal memaddr_2_CYSELF_898 : STD_LOGIC; 
  signal memaddr_2_CYMUXFAST_897 : STD_LOGIC; 
  signal memaddr_2_CYAND_896 : STD_LOGIC; 
  signal memaddr_2_FASTCARRY_895 : STD_LOGIC; 
  signal memaddr_2_CYMUXG2_894 : STD_LOGIC; 
  signal memaddr_2_CYMUXF2_893 : STD_LOGIC; 
  signal memaddr_2_LOGIC_ZERO_892 : STD_LOGIC; 
  signal memaddr_2_CYSELG_885 : STD_LOGIC; 
  signal memaddr_2_SRINV_883 : STD_LOGIC; 
  signal memaddr_2_CLKINV_882 : STD_LOGIC; 
  signal memaddr_2_CEINV_881 : STD_LOGIC; 
  signal memaddr_4_DXMUX_980 : STD_LOGIC; 
  signal memaddr_4_XORF_978 : STD_LOGIC; 
  signal memaddr_4_CYINIT_977 : STD_LOGIC; 
  signal memaddr_4_DYMUX_962 : STD_LOGIC; 
  signal memaddr_4_XORG_960 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_4_Q : STD_LOGIC; 
  signal memaddr_4_CYSELF_958 : STD_LOGIC; 
  signal memaddr_4_CYMUXFAST_957 : STD_LOGIC; 
  signal memaddr_4_CYAND_956 : STD_LOGIC; 
  signal memaddr_4_FASTCARRY_955 : STD_LOGIC; 
  signal memaddr_4_CYMUXG2_954 : STD_LOGIC; 
  signal memaddr_4_CYMUXF2_953 : STD_LOGIC; 
  signal memaddr_4_LOGIC_ZERO_952 : STD_LOGIC; 
  signal memaddr_4_CYSELG_945 : STD_LOGIC; 
  signal memaddr_4_SRINV_943 : STD_LOGIC; 
  signal memaddr_4_CLKINV_942 : STD_LOGIC; 
  signal memaddr_4_CEINV_941 : STD_LOGIC; 
  signal memaddr_6_DXMUX_1040 : STD_LOGIC; 
  signal memaddr_6_XORF_1038 : STD_LOGIC; 
  signal memaddr_6_CYINIT_1037 : STD_LOGIC; 
  signal memaddr_6_DYMUX_1022 : STD_LOGIC; 
  signal memaddr_6_XORG_1020 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_6_Q : STD_LOGIC; 
  signal memaddr_6_CYSELF_1018 : STD_LOGIC; 
  signal memaddr_6_CYMUXFAST_1017 : STD_LOGIC; 
  signal memaddr_6_CYAND_1016 : STD_LOGIC; 
  signal memaddr_6_FASTCARRY_1015 : STD_LOGIC; 
  signal memaddr_6_CYMUXG2_1014 : STD_LOGIC; 
  signal memaddr_6_CYMUXF2_1013 : STD_LOGIC; 
  signal memaddr_6_LOGIC_ZERO_1012 : STD_LOGIC; 
  signal memaddr_6_CYSELG_1005 : STD_LOGIC; 
  signal memaddr_6_SRINV_1003 : STD_LOGIC; 
  signal memaddr_6_CLKINV_1002 : STD_LOGIC; 
  signal memaddr_6_CEINV_1001 : STD_LOGIC; 
  signal memaddr_8_DXMUX_1093 : STD_LOGIC; 
  signal memaddr_8_XORF_1091 : STD_LOGIC; 
  signal memaddr_8_LOGIC_ZERO_1090 : STD_LOGIC; 
  signal memaddr_8_CYINIT_1089 : STD_LOGIC; 
  signal memaddr_8_CYSELF_1082 : STD_LOGIC; 
  signal memaddr_8_DYMUX_1073 : STD_LOGIC; 
  signal memaddr_8_XORG_1071 : STD_LOGIC; 
  signal I_FSM_Mcount_maddr_cy_8_Q : STD_LOGIC; 
  signal memaddr_8_SRINV_1062 : STD_LOGIC; 
  signal memaddr_8_CLKINV_1061 : STD_LOGIC; 
  signal memaddr_8_CEINV_1060 : STD_LOGIC; 
  signal ready_O : STD_LOGIC; 
  signal dataout_0_O : STD_LOGIC; 
  signal dataout_1_O : STD_LOGIC; 
  signal dataout_2_O : STD_LOGIC; 
  signal dataout_3_O : STD_LOGIC; 
  signal dataout_4_O : STD_LOGIC; 
  signal dataout_5_O : STD_LOGIC; 
  signal dataout_6_O : STD_LOGIC; 
  signal dataout_7_O : STD_LOGIC; 
  signal dataout_8_O : STD_LOGIC; 
  signal dataout_9_O : STD_LOGIC; 
  signal address_0_INBUF : STD_LOGIC; 
  signal address_1_INBUF : STD_LOGIC; 
  signal address_2_INBUF : STD_LOGIC; 
  signal address_3_INBUF : STD_LOGIC; 
  signal address_4_INBUF : STD_LOGIC; 
  signal address_5_INBUF : STD_LOGIC; 
  signal address_6_INBUF : STD_LOGIC; 
  signal address_7_INBUF : STD_LOGIC; 
  signal dataout_10_O : STD_LOGIC; 
  signal address_8_INBUF : STD_LOGIC; 
  signal dataout_11_O : STD_LOGIC; 
  signal address_9_INBUF : STD_LOGIC; 
  signal dataout_20_O : STD_LOGIC; 
  signal dataout_12_O : STD_LOGIC; 
  signal dataout_21_O : STD_LOGIC; 
  signal dataout_13_O : STD_LOGIC; 
  signal dataout_30_O : STD_LOGIC; 
  signal dataout_22_O : STD_LOGIC; 
  signal dataout_14_O : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal dataout_31_O : STD_LOGIC; 
  signal dataout_23_O : STD_LOGIC; 
  signal dataout_15_O : STD_LOGIC; 
  signal dataout_24_O : STD_LOGIC; 
  signal dataout_16_O : STD_LOGIC; 
  signal dataout_25_O : STD_LOGIC; 
  signal dataout_17_O : STD_LOGIC; 
  signal dataout_26_O : STD_LOGIC; 
  signal dataout_18_O : STD_LOGIC; 
  signal dataout_27_O : STD_LOGIC; 
  signal dataout_19_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal dataout_28_O : STD_LOGIC; 
  signal dataout_29_O : STD_LOGIC; 
  signal burst_0_INBUF : STD_LOGIC; 
  signal burst_1_INBUF : STD_LOGIC; 
  signal request_INBUF : STD_LOGIC; 
  signal burst_2_INBUF : STD_LOGIC; 
  signal burst_3_INBUF : STD_LOGIC; 
  signal clock_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clock_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIPA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIPA0 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA15 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA14 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA13 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA12 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA11 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA10 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA9 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA8 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA7 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA6 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA5 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA4 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA3 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA2 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir1_DIA0 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOPA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOPA0 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOA15 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOA14 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIPA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIPA0 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA15 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA14 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA13 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA12 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA11 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA10 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA9 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA8 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA7 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA6 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA5 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA4 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA3 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA2 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DIA0 : STD_LOGIC; 
  signal I_FSM_maddr_not0002 : STD_LOGIC; 
  signal I_FSM_N01_pack_1 : STD_LOGIC; 
  signal I_FSM_cnt_ir_2_DXMUX_1626 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir2 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O_pack_2 : STD_LOGIC; 
  signal I_FSM_cnt_ir_2_CLKINV_1608 : STD_LOGIC; 
  signal I_FSM_cnt_ir_2_CEINV_1607 : STD_LOGIC; 
  signal I_FSM_cnt_ir_1_DXMUX_1672 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir1 : STD_LOGIC; 
  signal I_FSM_cnt_ir_1_DYMUX_1657 : STD_LOGIC; 
  signal I_FSM_Mcount_cnt_ir : STD_LOGIC; 
  signal I_FSM_cnt_ir_1_SRINV_1648 : STD_LOGIC; 
  signal I_FSM_cnt_ir_1_CLKINV_1647 : STD_LOGIC; 
  signal I_FSM_cnt_ir_1_CEINV_1646 : STD_LOGIC; 
  signal I_FSM_rdy_DYMUX_1696 : STD_LOGIC; 
  signal I_FSM_rdy_mux0000 : STD_LOGIC; 
  signal I_FSM_rdy_CLKINV_1688 : STD_LOGIC; 
  signal I_FSM_rdy_CEINV_1687 : STD_LOGIC; 
  signal I_FSM_dout_11_DXMUX_1721 : STD_LOGIC; 
  signal I_FSM_dout_11_DYMUX_1712 : STD_LOGIC; 
  signal I_FSM_dout_11_SRINV_1710 : STD_LOGIC; 
  signal I_FSM_dout_11_CLKINV_1709 : STD_LOGIC; 
  signal I_FSM_dout_11_CEINV_1708 : STD_LOGIC; 
  signal I_FSM_dout_1_DXMUX_1749 : STD_LOGIC; 
  signal I_FSM_dout_1_DYMUX_1740 : STD_LOGIC; 
  signal I_FSM_dout_1_SRINV_1738 : STD_LOGIC; 
  signal I_FSM_dout_1_CLKINV_1737 : STD_LOGIC; 
  signal I_FSM_dout_1_CEINV_1736 : STD_LOGIC; 
  signal I_FSM_dout_13_DXMUX_1777 : STD_LOGIC; 
  signal I_FSM_dout_13_DYMUX_1768 : STD_LOGIC; 
  signal I_FSM_dout_13_SRINV_1766 : STD_LOGIC; 
  signal I_FSM_dout_13_CLKINV_1765 : STD_LOGIC; 
  signal I_FSM_dout_13_CEINV_1764 : STD_LOGIC; 
  signal I_FSM_dout_21_DXMUX_1805 : STD_LOGIC; 
  signal I_FSM_dout_21_DYMUX_1796 : STD_LOGIC; 
  signal I_FSM_dout_21_SRINV_1794 : STD_LOGIC; 
  signal I_FSM_dout_21_CLKINV_1793 : STD_LOGIC; 
  signal I_FSM_dout_21_CEINV_1792 : STD_LOGIC; 
  signal I_FSM_dout_3_DXMUX_1833 : STD_LOGIC; 
  signal I_FSM_dout_3_DYMUX_1824 : STD_LOGIC; 
  signal I_FSM_dout_3_SRINV_1822 : STD_LOGIC; 
  signal I_FSM_dout_3_CLKINV_1821 : STD_LOGIC; 
  signal I_FSM_dout_3_CEINV_1820 : STD_LOGIC; 
  signal I_FSM_dout_15_DXMUX_1861 : STD_LOGIC; 
  signal I_FSM_dout_15_DYMUX_1852 : STD_LOGIC; 
  signal I_FSM_dout_15_SRINV_1850 : STD_LOGIC; 
  signal I_FSM_dout_15_CLKINV_1849 : STD_LOGIC; 
  signal I_FSM_dout_15_CEINV_1848 : STD_LOGIC; 
  signal I_FSM_dout_23_DXMUX_1889 : STD_LOGIC; 
  signal I_FSM_dout_23_DYMUX_1880 : STD_LOGIC; 
  signal I_FSM_dout_23_SRINV_1878 : STD_LOGIC; 
  signal I_FSM_dout_23_CLKINV_1877 : STD_LOGIC; 
  signal I_FSM_dout_23_CEINV_1876 : STD_LOGIC; 
  signal I_FSM_dout_31_DXMUX_1917 : STD_LOGIC; 
  signal I_FSM_dout_31_DYMUX_1908 : STD_LOGIC; 
  signal I_FSM_dout_31_SRINV_1906 : STD_LOGIC; 
  signal I_FSM_dout_31_CLKINV_1905 : STD_LOGIC; 
  signal I_FSM_dout_31_CEINV_1904 : STD_LOGIC; 
  signal I_FSM_dout_5_DXMUX_1945 : STD_LOGIC; 
  signal I_FSM_dout_5_DYMUX_1936 : STD_LOGIC; 
  signal I_FSM_dout_5_SRINV_1934 : STD_LOGIC; 
  signal I_FSM_dout_5_CLKINV_1933 : STD_LOGIC; 
  signal I_FSM_dout_5_CEINV_1932 : STD_LOGIC; 
  signal I_FSM_dout_17_DXMUX_1973 : STD_LOGIC; 
  signal I_FSM_dout_17_DYMUX_1964 : STD_LOGIC; 
  signal I_FSM_dout_17_SRINV_1962 : STD_LOGIC; 
  signal I_FSM_dout_17_CLKINV_1961 : STD_LOGIC; 
  signal I_FSM_dout_17_CEINV_1960 : STD_LOGIC; 
  signal I_FSM_dout_25_DXMUX_2001 : STD_LOGIC; 
  signal I_FSM_dout_25_DYMUX_1992 : STD_LOGIC; 
  signal I_FSM_dout_25_SRINV_1990 : STD_LOGIC; 
  signal I_FSM_dout_25_CLKINV_1989 : STD_LOGIC; 
  signal I_FSM_dout_25_CEINV_1988 : STD_LOGIC; 
  signal I_FSM_cnt_ir_3_FFX_RSTAND_797 : STD_LOGIC; 
  signal I_FSM_state_ir_0_FFY_RSTAND_759 : STD_LOGIC; 
  signal I_FSM_cnt_ir_2_FFX_RSTAND_1632 : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal membuf : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal I_FSM_state_ir : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_FSM_dout : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal I_FSM_cnt_ir : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal memaddr : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal I_FSM_Mcount_maddr_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  I_FSM_dout_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(7),
      O => I_FSM_dout_7_DXMUX_624
    );
  I_FSM_dout_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(6),
      O => I_FSM_dout_7_DYMUX_615
    );
  I_FSM_dout_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_7_SRINV_613
    );
  I_FSM_dout_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_7_CLKINV_612
    );
  I_FSM_dout_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_7_CEINV_611
    );
  I_FSM_dout_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(19),
      O => I_FSM_dout_19_DXMUX_652
    );
  I_FSM_dout_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(18),
      O => I_FSM_dout_19_DYMUX_643
    );
  I_FSM_dout_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_19_SRINV_641
    );
  I_FSM_dout_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_19_CLKINV_640
    );
  I_FSM_dout_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_19_CEINV_639
    );
  I_FSM_dout_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(27),
      O => I_FSM_dout_27_DXMUX_680
    );
  I_FSM_dout_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(26),
      O => I_FSM_dout_27_DYMUX_671
    );
  I_FSM_dout_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_27_SRINV_669
    );
  I_FSM_dout_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_27_CLKINV_668
    );
  I_FSM_dout_27_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_27_CEINV_667
    );
  I_FSM_dout_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(9),
      O => I_FSM_dout_9_DXMUX_708
    );
  I_FSM_dout_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(8),
      O => I_FSM_dout_9_DYMUX_699
    );
  I_FSM_dout_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_9_SRINV_697
    );
  I_FSM_dout_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_9_CLKINV_696
    );
  I_FSM_dout_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_9_CEINV_695
    );
  I_FSM_dout_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(29),
      O => I_FSM_dout_29_DXMUX_736
    );
  I_FSM_dout_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(28),
      O => I_FSM_dout_29_DYMUX_727
    );
  I_FSM_dout_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_29_SRINV_725
    );
  I_FSM_dout_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_29_CLKINV_724
    );
  I_FSM_dout_29_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_29_CEINV_723
    );
  I_FSM_state_ir_0_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_state_ir_0_DYMUX_753
    );
  I_FSM_state_ir_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_state_ir_0_CLKINV_750
    );
  I_FSM_state_ir_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir_0_not0001,
      O => I_FSM_state_ir_0_CEINV_749
    );
  I_FSM_cnt_ir_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_cnt_ir3,
      O => I_FSM_cnt_ir_3_DXMUX_791
    );
  I_FSM_cnt_ir_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_cnt_ir_3_CLKINV_775
    );
  I_FSM_cnt_ir_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => I_FSM_cnt_ir_3_CEINV_774
    );
  I_FSM_rdy_and00001 : X_LUT4
    generic map(
      INIT => X"5500",
      LOC => "SLICE_X0Y26"
    )
    port map (
      ADR0 => reset_IBUF_499,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => I_FSM_state_ir(0),
      O => I_FSM_rdy_and0000
    );
  memaddr_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X2Y18"
    )
    port map (
      O => memaddr_0_LOGIC_ZERO_835
    );
  memaddr_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_0_XORF_858,
      O => memaddr_0_DXMUX_860
    );
  memaddr_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y18"
    )
    port map (
      I0 => memaddr_0_CYINIT_857,
      I1 => I_FSM_Mcount_maddr_lut(0),
      O => memaddr_0_XORF_858
    );
  memaddr_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y18"
    )
    port map (
      IA => memaddr_0_LOGIC_ZERO_835,
      IB => memaddr_0_CYINIT_857,
      SEL => memaddr_0_CYSELF_850,
      O => I_FSM_Mcount_maddr_cy_0_Q
    );
  memaddr_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => memaddr_0_CYINIT_857
    );
  memaddr_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(0),
      O => memaddr_0_CYSELF_850
    );
  memaddr_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_0_XORG_838,
      O => memaddr_0_DYMUX_840
    );
  memaddr_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y18"
    )
    port map (
      I0 => I_FSM_Mcount_maddr_cy_0_Q,
      I1 => I_FSM_Mcount_maddr_lut(1),
      O => memaddr_0_XORG_838
    );
  memaddr_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_0_CYMUXG_837,
      O => I_FSM_Mcount_maddr_cy_1_Q
    );
  memaddr_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X2Y18"
    )
    port map (
      IA => memaddr_0_LOGIC_ZERO_835,
      IB => I_FSM_Mcount_maddr_cy_0_Q,
      SEL => memaddr_0_CYSELG_828,
      O => memaddr_0_CYMUXG_837
    );
  memaddr_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(1),
      O => memaddr_0_CYSELG_828
    );
  memaddr_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => memaddr_0_SRINV_826
    );
  memaddr_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => memaddr_0_CLKINV_825
    );
  memaddr_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => memaddr_0_CEINV_824
    );
  I_FSM_Mcount_maddr_lut_1_Q : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => I_FSM_state_ir(0),
      ADR1 => VCC,
      ADR2 => address_1_IBUF_527,
      ADR3 => memaddr(1),
      O => I_FSM_Mcount_maddr_lut(1)
    );
  memaddr_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      O => memaddr_2_LOGIC_ZERO_892
    );
  memaddr_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_2_XORF_918,
      O => memaddr_2_DXMUX_920
    );
  memaddr_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      I0 => memaddr_2_CYINIT_917,
      I1 => I_FSM_Mcount_maddr_lut(2),
      O => memaddr_2_XORF_918
    );
  memaddr_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      IA => memaddr_2_LOGIC_ZERO_892,
      IB => memaddr_2_CYINIT_917,
      SEL => memaddr_2_CYSELF_898,
      O => I_FSM_Mcount_maddr_cy_2_Q
    );
  memaddr_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      IA => memaddr_2_LOGIC_ZERO_892,
      IB => memaddr_2_LOGIC_ZERO_892,
      SEL => memaddr_2_CYSELF_898,
      O => memaddr_2_CYMUXF2_893
    );
  memaddr_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_1_Q,
      O => memaddr_2_CYINIT_917
    );
  memaddr_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(2),
      O => memaddr_2_CYSELF_898
    );
  memaddr_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_2_XORG_900,
      O => memaddr_2_DYMUX_902
    );
  memaddr_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      I0 => I_FSM_Mcount_maddr_cy_2_Q,
      I1 => I_FSM_Mcount_maddr_lut(3),
      O => memaddr_2_XORG_900
    );
  memaddr_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_2_CYMUXFAST_897,
      O => I_FSM_Mcount_maddr_cy_3_Q
    );
  memaddr_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_1_Q,
      O => memaddr_2_FASTCARRY_895
    );
  memaddr_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      I0 => memaddr_2_CYSELG_885,
      I1 => memaddr_2_CYSELF_898,
      O => memaddr_2_CYAND_896
    );
  memaddr_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      IA => memaddr_2_CYMUXG2_894,
      IB => memaddr_2_FASTCARRY_895,
      SEL => memaddr_2_CYAND_896,
      O => memaddr_2_CYMUXFAST_897
    );
  memaddr_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y19"
    )
    port map (
      IA => memaddr_2_LOGIC_ZERO_892,
      IB => memaddr_2_CYMUXF2_893,
      SEL => memaddr_2_CYSELG_885,
      O => memaddr_2_CYMUXG2_894
    );
  memaddr_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(3),
      O => memaddr_2_CYSELG_885
    );
  memaddr_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => memaddr_2_SRINV_883
    );
  memaddr_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => memaddr_2_CLKINV_882
    );
  memaddr_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => memaddr_2_CEINV_881
    );
  I_FSM_Mcount_maddr_lut_3_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => address_3_IBUF_532,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => memaddr(3),
      O => I_FSM_Mcount_maddr_lut(3)
    );
  memaddr_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      O => memaddr_4_LOGIC_ZERO_952
    );
  memaddr_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_4_XORF_978,
      O => memaddr_4_DXMUX_980
    );
  memaddr_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      I0 => memaddr_4_CYINIT_977,
      I1 => I_FSM_Mcount_maddr_lut(4),
      O => memaddr_4_XORF_978
    );
  memaddr_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      IA => memaddr_4_LOGIC_ZERO_952,
      IB => memaddr_4_CYINIT_977,
      SEL => memaddr_4_CYSELF_958,
      O => I_FSM_Mcount_maddr_cy_4_Q
    );
  memaddr_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      IA => memaddr_4_LOGIC_ZERO_952,
      IB => memaddr_4_LOGIC_ZERO_952,
      SEL => memaddr_4_CYSELF_958,
      O => memaddr_4_CYMUXF2_953
    );
  memaddr_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_3_Q,
      O => memaddr_4_CYINIT_977
    );
  memaddr_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(4),
      O => memaddr_4_CYSELF_958
    );
  memaddr_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_4_XORG_960,
      O => memaddr_4_DYMUX_962
    );
  memaddr_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      I0 => I_FSM_Mcount_maddr_cy_4_Q,
      I1 => I_FSM_Mcount_maddr_lut(5),
      O => memaddr_4_XORG_960
    );
  memaddr_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_4_CYMUXFAST_957,
      O => I_FSM_Mcount_maddr_cy_5_Q
    );
  memaddr_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_3_Q,
      O => memaddr_4_FASTCARRY_955
    );
  memaddr_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      I0 => memaddr_4_CYSELG_945,
      I1 => memaddr_4_CYSELF_958,
      O => memaddr_4_CYAND_956
    );
  memaddr_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      IA => memaddr_4_CYMUXG2_954,
      IB => memaddr_4_FASTCARRY_955,
      SEL => memaddr_4_CYAND_956,
      O => memaddr_4_CYMUXFAST_957
    );
  memaddr_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y20"
    )
    port map (
      IA => memaddr_4_LOGIC_ZERO_952,
      IB => memaddr_4_CYMUXF2_953,
      SEL => memaddr_4_CYSELG_945,
      O => memaddr_4_CYMUXG2_954
    );
  memaddr_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(5),
      O => memaddr_4_CYSELG_945
    );
  memaddr_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => memaddr_4_SRINV_943
    );
  memaddr_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => memaddr_4_CLKINV_942
    );
  memaddr_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => memaddr_4_CEINV_941
    );
  I_FSM_Mcount_maddr_lut_5_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => address_5_IBUF_537,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => memaddr(5),
      O => I_FSM_Mcount_maddr_lut(5)
    );
  memaddr_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      O => memaddr_6_LOGIC_ZERO_1012
    );
  memaddr_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_6_XORF_1038,
      O => memaddr_6_DXMUX_1040
    );
  memaddr_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      I0 => memaddr_6_CYINIT_1037,
      I1 => I_FSM_Mcount_maddr_lut(6),
      O => memaddr_6_XORF_1038
    );
  memaddr_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      IA => memaddr_6_LOGIC_ZERO_1012,
      IB => memaddr_6_CYINIT_1037,
      SEL => memaddr_6_CYSELF_1018,
      O => I_FSM_Mcount_maddr_cy_6_Q
    );
  memaddr_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      IA => memaddr_6_LOGIC_ZERO_1012,
      IB => memaddr_6_LOGIC_ZERO_1012,
      SEL => memaddr_6_CYSELF_1018,
      O => memaddr_6_CYMUXF2_1013
    );
  memaddr_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_5_Q,
      O => memaddr_6_CYINIT_1037
    );
  memaddr_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(6),
      O => memaddr_6_CYSELF_1018
    );
  memaddr_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_6_XORG_1020,
      O => memaddr_6_DYMUX_1022
    );
  memaddr_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      I0 => I_FSM_Mcount_maddr_cy_6_Q,
      I1 => I_FSM_Mcount_maddr_lut(7),
      O => memaddr_6_XORG_1020
    );
  memaddr_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_cy_5_Q,
      O => memaddr_6_FASTCARRY_1015
    );
  memaddr_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      I0 => memaddr_6_CYSELG_1005,
      I1 => memaddr_6_CYSELF_1018,
      O => memaddr_6_CYAND_1016
    );
  memaddr_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      IA => memaddr_6_CYMUXG2_1014,
      IB => memaddr_6_FASTCARRY_1015,
      SEL => memaddr_6_CYAND_1016,
      O => memaddr_6_CYMUXFAST_1017
    );
  memaddr_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y21"
    )
    port map (
      IA => memaddr_6_LOGIC_ZERO_1012,
      IB => memaddr_6_CYMUXF2_1013,
      SEL => memaddr_6_CYSELG_1005,
      O => memaddr_6_CYMUXG2_1014
    );
  memaddr_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(7),
      O => memaddr_6_CYSELG_1005
    );
  memaddr_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => memaddr_6_SRINV_1003
    );
  memaddr_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => memaddr_6_CLKINV_1002
    );
  memaddr_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => memaddr_6_CEINV_1001
    );
  I_FSM_Mcount_maddr_lut_7_Q : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => memaddr(7),
      ADR1 => VCC,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => address_7_IBUF_542,
      O => I_FSM_Mcount_maddr_lut(7)
    );
  memaddr_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X2Y22"
    )
    port map (
      O => memaddr_8_LOGIC_ZERO_1090
    );
  memaddr_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_8_XORF_1091,
      O => memaddr_8_DXMUX_1093
    );
  memaddr_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X2Y22"
    )
    port map (
      I0 => memaddr_8_CYINIT_1089,
      I1 => I_FSM_Mcount_maddr_lut(8),
      O => memaddr_8_XORF_1091
    );
  memaddr_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X2Y22"
    )
    port map (
      IA => memaddr_8_LOGIC_ZERO_1090,
      IB => memaddr_8_CYINIT_1089,
      SEL => memaddr_8_CYSELF_1082,
      O => I_FSM_Mcount_maddr_cy_8_Q
    );
  memaddr_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_6_CYMUXFAST_1017,
      O => memaddr_8_CYINIT_1089
    );
  memaddr_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_maddr_lut(8),
      O => memaddr_8_CYSELF_1082
    );
  memaddr_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr_8_XORG_1071,
      O => memaddr_8_DYMUX_1073
    );
  memaddr_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X2Y22"
    )
    port map (
      I0 => I_FSM_Mcount_maddr_cy_8_Q,
      I1 => I_FSM_Mcount_maddr_lut(9),
      O => memaddr_8_XORG_1071
    );
  memaddr_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => memaddr_8_SRINV_1062
    );
  memaddr_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => memaddr_8_CLKINV_1061
    );
  memaddr_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => memaddr_8_CEINV_1060
    );
  I_FSM_Mcount_maddr_lut_9_Q : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => address_9_IBUF_547,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => memaddr(9),
      O => I_FSM_Mcount_maddr_lut(9)
    );
  ready_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => ready_O,
      O => ready
    );
  dataout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => dataout_0_O,
      O => dataout(0)
    );
  dataout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD121"
    )
    port map (
      I => dataout_1_O,
      O => dataout(1)
    );
  dataout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => dataout_2_O,
      O => dataout(2)
    );
  dataout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => dataout_3_O,
      O => dataout(3)
    );
  dataout_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => dataout_4_O,
      O => dataout(4)
    );
  dataout_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => dataout_5_O,
      O => dataout(5)
    );
  dataout_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => dataout_6_O,
      O => dataout(6)
    );
  dataout_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => dataout_7_O,
      O => dataout(7)
    );
  dataout_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => dataout_8_O,
      O => dataout(8)
    );
  dataout_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => dataout_9_O,
      O => dataout(9)
    );
  address_0_IBUF : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(0),
      O => address_0_INBUF
    );
  address_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_0_INBUF,
      O => address_0_IBUF_525
    );
  address_1_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(1),
      O => address_1_INBUF
    );
  address_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_1_INBUF,
      O => address_1_IBUF_527
    );
  address_2_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(2),
      O => address_2_INBUF
    );
  address_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_2_INBUF,
      O => address_2_IBUF_530
    );
  address_3_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(3),
      O => address_3_INBUF
    );
  address_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_3_INBUF,
      O => address_3_IBUF_532
    );
  address_4_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(4),
      O => address_4_INBUF
    );
  address_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_4_INBUF,
      O => address_4_IBUF_535
    );
  address_5_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(5),
      O => address_5_INBUF
    );
  address_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_5_INBUF,
      O => address_5_IBUF_537
    );
  address_6_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(6),
      O => address_6_INBUF
    );
  address_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_6_INBUF,
      O => address_6_IBUF_540
    );
  address_7_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(7),
      O => address_7_INBUF
    );
  address_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_7_INBUF,
      O => address_7_IBUF_542
    );
  dataout_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => dataout_10_O,
      O => dataout(10)
    );
  address_8_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(8),
      O => address_8_INBUF
    );
  address_8_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_8_INBUF,
      O => address_8_IBUF_545
    );
  dataout_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => dataout_11_O,
      O => dataout(11)
    );
  address_9_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => address(9),
      O => address_9_INBUF
    );
  address_9_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => address_9_INBUF,
      O => address_9_IBUF_547
    );
  dataout_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => dataout_20_O,
      O => dataout(20)
    );
  dataout_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => dataout_12_O,
      O => dataout(12)
    );
  dataout_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => dataout_21_O,
      O => dataout(21)
    );
  dataout_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => dataout_13_O,
      O => dataout(13)
    );
  dataout_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => dataout_30_O,
      O => dataout(30)
    );
  dataout_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => dataout_22_O,
      O => dataout(22)
    );
  dataout_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => dataout_14_O,
      O => dataout(14)
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  dataout_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => dataout_31_O,
      O => dataout(31)
    );
  dataout_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => dataout_23_O,
      O => dataout(23)
    );
  dataout_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => dataout_15_O,
      O => dataout(15)
    );
  dataout_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => dataout_24_O,
      O => dataout(24)
    );
  dataout_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => dataout_16_O,
      O => dataout(16)
    );
  dataout_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => dataout_25_O,
      O => dataout(25)
    );
  dataout_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => dataout_17_O,
      O => dataout(17)
    );
  dataout_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => dataout_26_O,
      O => dataout(26)
    );
  dataout_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => dataout_18_O,
      O => dataout(18)
    );
  dataout_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => dataout_27_O,
      O => dataout(27)
    );
  dataout_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => dataout_19_O,
      O => dataout(19)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_499
    );
  dataout_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => dataout_28_O,
      O => dataout(28)
    );
  dataout_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => dataout_29_O,
      O => dataout(29)
    );
  burst_0_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst(0),
      O => burst_0_INBUF
    );
  burst_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst_0_INBUF,
      O => burst_0_IBUF_573
    );
  burst_1_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst(1),
      O => burst_1_INBUF
    );
  burst_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst_1_INBUF,
      O => burst_1_IBUF_574
    );
  request_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 526 ps
    )
    port map (
      I => request,
      O => request_INBUF
    );
  request_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 526 ps
    )
    port map (
      I => request_INBUF,
      O => request_IBUF_523
    );
  burst_2_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst(2),
      O => burst_2_INBUF
    );
  burst_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst_2_INBUF,
      O => burst_2_IBUF_575
    );
  burst_3_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst(3),
      O => burst_3_INBUF
    );
  burst_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 526 ps
    )
    port map (
      I => burst_3_INBUF,
      O => burst_3_IBUF_522
    );
  clock_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clock_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clock_BUFGP_BUFG_S_INVNOT,
      O => clock_BUFGP
    );
  clock_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => clock_BUFGP_BUFG_S_INVNOT
    );
  clock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_BUFGP_BUFG_I0_INV
    );
  I_BRAM_Mram_ram_ir1 : X_RAMB16_S18
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL => X"00000",
      INIT => X"00000",
      WRITE_MODE => "WRITE_FIRST",
      LOC => "RAMB16_X0Y3"
    )
    port map (
      CLK => NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK,
      EN => '1',
      SSR => '0',
      WE => '0',
      ADDR(9) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(9),
      ADDR(8) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(8),
      ADDR(7) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(7),
      ADDR(6) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(6),
      ADDR(5) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(5),
      ADDR(4) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(4),
      ADDR(3) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(3),
      ADDR(2) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(2),
      ADDR(1) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(1),
      ADDR(0) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(0),
      DI(15) => I_BRAM_Mram_ram_ir1_DIA15,
      DI(14) => I_BRAM_Mram_ram_ir1_DIA14,
      DI(13) => I_BRAM_Mram_ram_ir1_DIA13,
      DI(12) => I_BRAM_Mram_ram_ir1_DIA12,
      DI(11) => I_BRAM_Mram_ram_ir1_DIA11,
      DI(10) => I_BRAM_Mram_ram_ir1_DIA10,
      DI(9) => I_BRAM_Mram_ram_ir1_DIA9,
      DI(8) => I_BRAM_Mram_ram_ir1_DIA8,
      DI(7) => I_BRAM_Mram_ram_ir1_DIA7,
      DI(6) => I_BRAM_Mram_ram_ir1_DIA6,
      DI(5) => I_BRAM_Mram_ram_ir1_DIA5,
      DI(4) => I_BRAM_Mram_ram_ir1_DIA4,
      DI(3) => I_BRAM_Mram_ram_ir1_DIA3,
      DI(2) => I_BRAM_Mram_ram_ir1_DIA2,
      DI(1) => I_BRAM_Mram_ram_ir1_DIA1,
      DI(0) => I_BRAM_Mram_ram_ir1_DIA0,
      DIP(1) => I_BRAM_Mram_ram_ir1_DIPA1,
      DIP(0) => I_BRAM_Mram_ram_ir1_DIPA0,
      DO(15) => membuf(15),
      DO(14) => membuf(14),
      DO(13) => membuf(13),
      DO(12) => membuf(12),
      DO(11) => membuf(11),
      DO(10) => membuf(10),
      DO(9) => membuf(9),
      DO(8) => membuf(8),
      DO(7) => membuf(7),
      DO(6) => membuf(6),
      DO(5) => membuf(5),
      DO(4) => membuf(4),
      DO(3) => membuf(3),
      DO(2) => membuf(2),
      DO(1) => membuf(1),
      DO(0) => membuf(0),
      DOP(1) => membuf(17),
      DOP(0) => membuf(16)
    );
  I_BRAM_Mram_ram_ir2 : X_RAMB16_S18
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL => X"00000",
      INIT => X"00000",
      WRITE_MODE => "WRITE_FIRST",
      LOC => "RAMB16_X0Y2"
    )
    port map (
      CLK => NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK,
      EN => '1',
      SSR => '0',
      WE => '0',
      ADDR(9) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(9),
      ADDR(8) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(8),
      ADDR(7) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(7),
      ADDR(6) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(6),
      ADDR(5) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(5),
      ADDR(4) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(4),
      ADDR(3) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(3),
      ADDR(2) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(2),
      ADDR(1) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(1),
      ADDR(0) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(0),
      DI(15) => I_BRAM_Mram_ram_ir2_DIA15,
      DI(14) => I_BRAM_Mram_ram_ir2_DIA14,
      DI(13) => I_BRAM_Mram_ram_ir2_DIA13,
      DI(12) => I_BRAM_Mram_ram_ir2_DIA12,
      DI(11) => I_BRAM_Mram_ram_ir2_DIA11,
      DI(10) => I_BRAM_Mram_ram_ir2_DIA10,
      DI(9) => I_BRAM_Mram_ram_ir2_DIA9,
      DI(8) => I_BRAM_Mram_ram_ir2_DIA8,
      DI(7) => I_BRAM_Mram_ram_ir2_DIA7,
      DI(6) => I_BRAM_Mram_ram_ir2_DIA6,
      DI(5) => I_BRAM_Mram_ram_ir2_DIA5,
      DI(4) => I_BRAM_Mram_ram_ir2_DIA4,
      DI(3) => I_BRAM_Mram_ram_ir2_DIA3,
      DI(2) => I_BRAM_Mram_ram_ir2_DIA2,
      DI(1) => I_BRAM_Mram_ram_ir2_DIA1,
      DI(0) => I_BRAM_Mram_ram_ir2_DIA0,
      DIP(1) => I_BRAM_Mram_ram_ir2_DIPA1,
      DIP(0) => I_BRAM_Mram_ram_ir2_DIPA0,
      DO(15) => I_BRAM_Mram_ram_ir2_DOA15,
      DO(14) => I_BRAM_Mram_ram_ir2_DOA14,
      DO(13) => membuf(31),
      DO(12) => membuf(30),
      DO(11) => membuf(29),
      DO(10) => membuf(28),
      DO(9) => membuf(27),
      DO(8) => membuf(26),
      DO(7) => membuf(25),
      DO(6) => membuf(24),
      DO(5) => membuf(23),
      DO(4) => membuf(22),
      DO(3) => membuf(21),
      DO(2) => membuf(20),
      DO(1) => membuf(19),
      DO(0) => membuf(18),
      DOP(1) => I_BRAM_Mram_ram_ir2_DOPA1,
      DOP(0) => I_BRAM_Mram_ram_ir2_DOPA0
    );
  I_FSM_maddr_not0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002,
      O => I_FSM_maddr_not0002_0
    );
  I_FSM_maddr_not0002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_N01_pack_1,
      O => I_FSM_N01
    );
  I_FSM_Mcount_cnt_ir_xor_3_111 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => I_FSM_cnt_ir(0),
      ADR1 => I_FSM_cnt_ir(1),
      ADR2 => VCC,
      ADR3 => I_FSM_cnt_ir(2),
      O => I_FSM_N01_pack_1
    );
  I_FSM_cnt_ir_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_cnt_ir2,
      O => I_FSM_cnt_ir_2_DXMUX_1626
    );
  I_FSM_cnt_ir_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O_pack_2,
      O => I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O
    );
  I_FSM_cnt_ir_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_cnt_ir_2_CLKINV_1608
    );
  I_FSM_cnt_ir_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => I_FSM_cnt_ir_2_CEINV_1607
    );
  I_FSM_Mcount_cnt_ir_xor_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => I_FSM_cnt_ir(0),
      ADR2 => VCC,
      ADR3 => I_FSM_cnt_ir(1),
      O => I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O_pack_2
    );
  I_FSM_cnt_ir_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_cnt_ir1,
      O => I_FSM_cnt_ir_1_DXMUX_1672
    );
  I_FSM_cnt_ir_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_Mcount_cnt_ir,
      O => I_FSM_cnt_ir_1_DYMUX_1657
    );
  I_FSM_cnt_ir_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_cnt_ir_1_SRINV_1648
    );
  I_FSM_cnt_ir_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_cnt_ir_1_CLKINV_1647
    );
  I_FSM_cnt_ir_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_maddr_not0002_0,
      O => I_FSM_cnt_ir_1_CEINV_1646
    );
  I_FSM_Mcount_cnt_ir_xor_0_11 : X_LUT4
    generic map(
      INIT => X"3A3A",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => burst_0_IBUF_573,
      ADR1 => I_FSM_cnt_ir(0),
      ADR2 => I_FSM_state_ir(0),
      ADR3 => VCC,
      O => I_FSM_Mcount_cnt_ir
    );
  I_FSM_rdy_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_rdy_mux0000,
      O => I_FSM_rdy_DYMUX_1696
    );
  I_FSM_rdy_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_rdy_CLKINV_1688
    );
  I_FSM_rdy_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_rdy_and0000,
      O => I_FSM_rdy_CEINV_1687
    );
  I_FSM_dout_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(11),
      O => I_FSM_dout_11_DXMUX_1721
    );
  I_FSM_dout_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(10),
      O => I_FSM_dout_11_DYMUX_1712
    );
  I_FSM_dout_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_11_SRINV_1710
    );
  I_FSM_dout_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_11_CLKINV_1709
    );
  I_FSM_dout_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_11_CEINV_1708
    );
  I_FSM_dout_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(1),
      O => I_FSM_dout_1_DXMUX_1749
    );
  I_FSM_dout_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(0),
      O => I_FSM_dout_1_DYMUX_1740
    );
  I_FSM_dout_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_1_SRINV_1738
    );
  I_FSM_dout_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_1_CLKINV_1737
    );
  I_FSM_dout_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_1_CEINV_1736
    );
  I_FSM_dout_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(13),
      O => I_FSM_dout_13_DXMUX_1777
    );
  I_FSM_dout_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(12),
      O => I_FSM_dout_13_DYMUX_1768
    );
  I_FSM_dout_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_13_SRINV_1766
    );
  I_FSM_dout_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_13_CLKINV_1765
    );
  I_FSM_dout_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_13_CEINV_1764
    );
  I_FSM_dout_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(21),
      O => I_FSM_dout_21_DXMUX_1805
    );
  I_FSM_dout_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(20),
      O => I_FSM_dout_21_DYMUX_1796
    );
  I_FSM_dout_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_21_SRINV_1794
    );
  I_FSM_dout_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_21_CLKINV_1793
    );
  I_FSM_dout_21_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_21_CEINV_1792
    );
  I_FSM_dout_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(3),
      O => I_FSM_dout_3_DXMUX_1833
    );
  I_FSM_dout_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(2),
      O => I_FSM_dout_3_DYMUX_1824
    );
  I_FSM_dout_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_3_SRINV_1822
    );
  I_FSM_dout_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_3_CLKINV_1821
    );
  I_FSM_dout_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_3_CEINV_1820
    );
  I_FSM_dout_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(15),
      O => I_FSM_dout_15_DXMUX_1861
    );
  I_FSM_dout_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(14),
      O => I_FSM_dout_15_DYMUX_1852
    );
  I_FSM_dout_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_15_SRINV_1850
    );
  I_FSM_dout_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_15_CLKINV_1849
    );
  I_FSM_dout_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_15_CEINV_1848
    );
  I_FSM_dout_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(23),
      O => I_FSM_dout_23_DXMUX_1889
    );
  I_FSM_dout_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(22),
      O => I_FSM_dout_23_DYMUX_1880
    );
  I_FSM_dout_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_23_SRINV_1878
    );
  I_FSM_dout_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_23_CLKINV_1877
    );
  I_FSM_dout_23_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_23_CEINV_1876
    );
  I_FSM_dout_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(31),
      O => I_FSM_dout_31_DXMUX_1917
    );
  I_FSM_dout_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(30),
      O => I_FSM_dout_31_DYMUX_1908
    );
  I_FSM_dout_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_31_SRINV_1906
    );
  I_FSM_dout_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_31_CLKINV_1905
    );
  I_FSM_dout_31_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_31_CEINV_1904
    );
  I_FSM_dout_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(5),
      O => I_FSM_dout_5_DXMUX_1945
    );
  I_FSM_dout_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(4),
      O => I_FSM_dout_5_DYMUX_1936
    );
  I_FSM_dout_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_5_SRINV_1934
    );
  I_FSM_dout_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_5_CLKINV_1933
    );
  I_FSM_dout_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_5_CEINV_1932
    );
  I_FSM_dout_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(17),
      O => I_FSM_dout_17_DXMUX_1973
    );
  I_FSM_dout_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(16),
      O => I_FSM_dout_17_DYMUX_1964
    );
  I_FSM_dout_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_17_SRINV_1962
    );
  I_FSM_dout_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_17_CLKINV_1961
    );
  I_FSM_dout_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_17_CEINV_1960
    );
  I_FSM_dout_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(25),
      O => I_FSM_dout_25_DXMUX_2001
    );
  I_FSM_dout_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => membuf(24),
      O => I_FSM_dout_25_DYMUX_1992
    );
  I_FSM_dout_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_dout_25_SRINV_1990
    );
  I_FSM_dout_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => I_FSM_dout_25_CLKINV_1989
    );
  I_FSM_dout_25_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y31",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_state_ir(0),
      O => I_FSM_dout_25_CEINV_1988
    );
  I_FSM_dout_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_7_DYMUX_615,
      CE => I_FSM_dout_7_CEINV_611,
      CLK => I_FSM_dout_7_CLKINV_612,
      SET => GND,
      RST => I_FSM_dout_7_SRINV_613,
      O => I_FSM_dout(6)
    );
  I_FSM_dout_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_7_DXMUX_624,
      CE => I_FSM_dout_7_CEINV_611,
      CLK => I_FSM_dout_7_CLKINV_612,
      SET => GND,
      RST => I_FSM_dout_7_SRINV_613,
      O => I_FSM_dout(7)
    );
  I_FSM_dout_18 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_19_DYMUX_643,
      CE => I_FSM_dout_19_CEINV_639,
      CLK => I_FSM_dout_19_CLKINV_640,
      SET => GND,
      RST => I_FSM_dout_19_SRINV_641,
      O => I_FSM_dout(18)
    );
  I_FSM_dout_19 : X_FF
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_19_DXMUX_652,
      CE => I_FSM_dout_19_CEINV_639,
      CLK => I_FSM_dout_19_CLKINV_640,
      SET => GND,
      RST => I_FSM_dout_19_SRINV_641,
      O => I_FSM_dout(19)
    );
  I_FSM_dout_26 : X_FF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_27_DYMUX_671,
      CE => I_FSM_dout_27_CEINV_667,
      CLK => I_FSM_dout_27_CLKINV_668,
      SET => GND,
      RST => I_FSM_dout_27_SRINV_669,
      O => I_FSM_dout(26)
    );
  I_FSM_maddr_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      I => memaddr_6_DYMUX_1022,
      CE => memaddr_6_CEINV_1001,
      CLK => memaddr_6_CLKINV_1002,
      SET => GND,
      RST => memaddr_6_SRINV_1003,
      O => memaddr(7)
    );
  I_FSM_Mcount_maddr_lut_6_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X2Y21"
    )
    port map (
      ADR0 => memaddr(6),
      ADR1 => address_6_IBUF_540,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => VCC,
      O => I_FSM_Mcount_maddr_lut(6)
    );
  I_FSM_maddr_6 : X_FF
    generic map(
      LOC => "SLICE_X2Y21",
      INIT => '0'
    )
    port map (
      I => memaddr_6_DXMUX_1040,
      CE => memaddr_6_CEINV_1001,
      CLK => memaddr_6_CLKINV_1002,
      SET => GND,
      RST => memaddr_6_SRINV_1003,
      O => memaddr(6)
    );
  I_FSM_maddr_9 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      I => memaddr_8_DYMUX_1073,
      CE => memaddr_8_CEINV_1060,
      CLK => memaddr_8_CLKINV_1061,
      SET => GND,
      RST => memaddr_8_SRINV_1062,
      O => memaddr(9)
    );
  I_FSM_Mcount_maddr_lut_8_Q : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X2Y22"
    )
    port map (
      ADR0 => memaddr(8),
      ADR1 => address_8_IBUF_545,
      ADR2 => VCC,
      ADR3 => I_FSM_state_ir(0),
      O => I_FSM_Mcount_maddr_lut(8)
    );
  I_FSM_maddr_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y22",
      INIT => '0'
    )
    port map (
      I => memaddr_8_DXMUX_1093,
      CE => memaddr_8_CEINV_1060,
      CLK => memaddr_8_CLKINV_1061,
      SET => GND,
      RST => memaddr_8_SRINV_1062,
      O => memaddr(8)
    );
  I_FSM_Mcount_cnt_ir_xor_3_12 : X_LUT4
    generic map(
      INIT => X"E22E",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => burst_3_IBUF_522,
      ADR1 => I_FSM_state_ir(0),
      ADR2 => I_FSM_N01,
      ADR3 => I_FSM_cnt_ir(3),
      O => I_FSM_Mcount_cnt_ir3
    );
  I_FSM_cnt_ir_3 : X_FF
    generic map(
      LOC => "SLICE_X1Y21",
      INIT => '0'
    )
    port map (
      I => I_FSM_cnt_ir_3_DXMUX_791,
      CE => I_FSM_cnt_ir_3_CEINV_774,
      CLK => I_FSM_cnt_ir_3_CLKINV_775,
      SET => GND,
      RST => I_FSM_cnt_ir_3_FFX_RSTAND_797,
      O => I_FSM_cnt_ir(3)
    );
  I_FSM_cnt_ir_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X1Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_cnt_ir_3_FFX_RSTAND_797
    );
  I_FSM_maddr_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => memaddr_0_DYMUX_840,
      CE => memaddr_0_CEINV_824,
      CLK => memaddr_0_CLKINV_825,
      SET => GND,
      RST => memaddr_0_SRINV_826,
      O => memaddr(1)
    );
  I_FSM_Mcount_maddr_lut_0_Q : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X2Y18"
    )
    port map (
      ADR0 => memaddr(0),
      ADR1 => address_0_IBUF_525,
      ADR2 => I_FSM_state_ir(0),
      ADR3 => VCC,
      O => I_FSM_Mcount_maddr_lut(0)
    );
  I_FSM_maddr_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y18",
      INIT => '0'
    )
    port map (
      I => memaddr_0_DXMUX_860,
      CE => memaddr_0_CEINV_824,
      CLK => memaddr_0_CLKINV_825,
      SET => GND,
      RST => memaddr_0_SRINV_826,
      O => memaddr(0)
    );
  I_FSM_maddr_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y19",
      INIT => '0'
    )
    port map (
      I => memaddr_2_DYMUX_902,
      CE => memaddr_2_CEINV_881,
      CLK => memaddr_2_CLKINV_882,
      SET => GND,
      RST => memaddr_2_SRINV_883,
      O => memaddr(3)
    );
  I_FSM_dout_27 : X_FF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_27_DXMUX_680,
      CE => I_FSM_dout_27_CEINV_667,
      CLK => I_FSM_dout_27_CLKINV_668,
      SET => GND,
      RST => I_FSM_dout_27_SRINV_669,
      O => I_FSM_dout(27)
    );
  I_FSM_dout_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_9_DYMUX_699,
      CE => I_FSM_dout_9_CEINV_695,
      CLK => I_FSM_dout_9_CLKINV_696,
      SET => GND,
      RST => I_FSM_dout_9_SRINV_697,
      O => I_FSM_dout(8)
    );
  I_FSM_dout_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_9_DXMUX_708,
      CE => I_FSM_dout_9_CEINV_695,
      CLK => I_FSM_dout_9_CLKINV_696,
      SET => GND,
      RST => I_FSM_dout_9_SRINV_697,
      O => I_FSM_dout(9)
    );
  I_FSM_dout_28 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_29_DYMUX_727,
      CE => I_FSM_dout_29_CEINV_723,
      CLK => I_FSM_dout_29_CLKINV_724,
      SET => GND,
      RST => I_FSM_dout_29_SRINV_725,
      O => I_FSM_dout(28)
    );
  I_FSM_dout_29 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_29_DXMUX_736,
      CE => I_FSM_dout_29_CEINV_723,
      CLK => I_FSM_dout_29_CLKINV_724,
      SET => GND,
      RST => I_FSM_dout_29_SRINV_725,
      O => I_FSM_dout(29)
    );
  I_FSM_state_ir_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => I_FSM_state_ir_0_DYMUX_753,
      CE => I_FSM_state_ir_0_CEINV_749,
      CLK => I_FSM_state_ir_0_CLKINV_750,
      SET => GND,
      RST => I_FSM_state_ir_0_FFY_RSTAND_759,
      O => I_FSM_state_ir(0)
    );
  I_FSM_state_ir_0_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_state_ir_0_FFY_RSTAND_759
    );
  I_FSM_state_ir_0_not00011 : X_LUT4
    generic map(
      INIT => X"444E",
      LOC => "SLICE_X1Y21"
    )
    port map (
      ADR0 => I_FSM_state_ir(0),
      ADR1 => request_IBUF_523,
      ADR2 => I_FSM_N01,
      ADR3 => I_FSM_cnt_ir(3),
      O => I_FSM_state_ir_0_not0001
    );
  I_FSM_Mcount_maddr_lut_2_Q : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X2Y19"
    )
    port map (
      ADR0 => address_2_IBUF_530,
      ADR1 => memaddr(2),
      ADR2 => I_FSM_state_ir(0),
      ADR3 => VCC,
      O => I_FSM_Mcount_maddr_lut(2)
    );
  I_FSM_maddr_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y19",
      INIT => '0'
    )
    port map (
      I => memaddr_2_DXMUX_920,
      CE => memaddr_2_CEINV_881,
      CLK => memaddr_2_CLKINV_882,
      SET => GND,
      RST => memaddr_2_SRINV_883,
      O => memaddr(2)
    );
  I_FSM_maddr_5 : X_FF
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => memaddr_4_DYMUX_962,
      CE => memaddr_4_CEINV_941,
      CLK => memaddr_4_CLKINV_942,
      SET => GND,
      RST => memaddr_4_SRINV_943,
      O => memaddr(5)
    );
  I_FSM_Mcount_maddr_lut_4_Q : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X2Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => memaddr(4),
      ADR2 => address_4_IBUF_535,
      ADR3 => I_FSM_state_ir(0),
      O => I_FSM_Mcount_maddr_lut(4)
    );
  I_FSM_maddr_4 : X_FF
    generic map(
      LOC => "SLICE_X2Y20",
      INIT => '0'
    )
    port map (
      I => memaddr_4_DXMUX_980,
      CE => memaddr_4_CEINV_941,
      CLK => memaddr_4_CLKINV_942,
      SET => GND,
      RST => memaddr_4_SRINV_943,
      O => memaddr(4)
    );
  I_FSM_maddr_not00021 : X_LUT4
    generic map(
      INIT => X"EEE4",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => I_FSM_state_ir(0),
      ADR1 => request_IBUF_523,
      ADR2 => I_FSM_N01,
      ADR3 => I_FSM_cnt_ir(3),
      O => I_FSM_maddr_not0002
    );
  I_FSM_Mcount_cnt_ir_xor_2_1 : X_LUT4
    generic map(
      INIT => X"5ACC",
      LOC => "SLICE_X1Y18"
    )
    port map (
      ADR0 => I_FSM_cnt_ir(2),
      ADR1 => burst_2_IBUF_575,
      ADR2 => I_FSM_Mcount_cnt_ir_xor_2_1_SW0_O,
      ADR3 => I_FSM_state_ir(0),
      O => I_FSM_Mcount_cnt_ir2
    );
  I_FSM_cnt_ir_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y18",
      INIT => '0'
    )
    port map (
      I => I_FSM_cnt_ir_2_DXMUX_1626,
      CE => I_FSM_cnt_ir_2_CEINV_1607,
      CLK => I_FSM_cnt_ir_2_CLKINV_1608,
      SET => GND,
      RST => I_FSM_cnt_ir_2_FFX_RSTAND_1632,
      O => I_FSM_cnt_ir(2)
    );
  I_FSM_cnt_ir_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X1Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_499,
      O => I_FSM_cnt_ir_2_FFX_RSTAND_1632
    );
  I_FSM_cnt_ir_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y19",
      INIT => '0'
    )
    port map (
      I => I_FSM_cnt_ir_1_DYMUX_1657,
      CE => I_FSM_cnt_ir_1_CEINV_1646,
      CLK => I_FSM_cnt_ir_1_CLKINV_1647,
      SET => GND,
      RST => I_FSM_cnt_ir_1_SRINV_1648,
      O => I_FSM_cnt_ir(0)
    );
  I_FSM_Mcount_cnt_ir_xor_1_11 : X_LUT4
    generic map(
      INIT => X"D872",
      LOC => "SLICE_X1Y19"
    )
    port map (
      ADR0 => I_FSM_state_ir(0),
      ADR1 => I_FSM_cnt_ir(0),
      ADR2 => burst_1_IBUF_574,
      ADR3 => I_FSM_cnt_ir(1),
      O => I_FSM_Mcount_cnt_ir1
    );
  I_FSM_cnt_ir_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y19",
      INIT => '0'
    )
    port map (
      I => I_FSM_cnt_ir_1_DXMUX_1672,
      CE => I_FSM_cnt_ir_1_CEINV_1646,
      CLK => I_FSM_cnt_ir_1_CLKINV_1647,
      SET => GND,
      RST => I_FSM_cnt_ir_1_SRINV_1648,
      O => I_FSM_cnt_ir(1)
    );
  I_FSM_rdy_mux00001 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X1Y26"
    )
    port map (
      ADR0 => I_FSM_cnt_ir(1),
      ADR1 => I_FSM_cnt_ir(3),
      ADR2 => I_FSM_cnt_ir(0),
      ADR3 => I_FSM_cnt_ir(2),
      O => I_FSM_rdy_mux0000
    );
  I_FSM_rdy : X_FF
    generic map(
      LOC => "SLICE_X1Y26",
      INIT => '0'
    )
    port map (
      I => I_FSM_rdy_DYMUX_1696,
      CE => I_FSM_rdy_CEINV_1687,
      CLK => I_FSM_rdy_CLKINV_1688,
      SET => GND,
      RST => GND,
      O => I_FSM_rdy_549
    );
  I_FSM_dout_10 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_11_DYMUX_1712,
      CE => I_FSM_dout_11_CEINV_1708,
      CLK => I_FSM_dout_11_CLKINV_1709,
      SET => GND,
      RST => I_FSM_dout_11_SRINV_1710,
      O => I_FSM_dout(10)
    );
  I_FSM_dout_11 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_11_DXMUX_1721,
      CE => I_FSM_dout_11_CEINV_1708,
      CLK => I_FSM_dout_11_CLKINV_1709,
      SET => GND,
      RST => I_FSM_dout_11_SRINV_1710,
      O => I_FSM_dout(11)
    );
  I_FSM_dout_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y27",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_1_DYMUX_1740,
      CE => I_FSM_dout_1_CEINV_1736,
      CLK => I_FSM_dout_1_CLKINV_1737,
      SET => GND,
      RST => I_FSM_dout_1_SRINV_1738,
      O => I_FSM_dout(0)
    );
  I_FSM_dout_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y27",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_1_DXMUX_1749,
      CE => I_FSM_dout_1_CEINV_1736,
      CLK => I_FSM_dout_1_CLKINV_1737,
      SET => GND,
      RST => I_FSM_dout_1_SRINV_1738,
      O => I_FSM_dout(1)
    );
  I_FSM_dout_12 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_13_DYMUX_1768,
      CE => I_FSM_dout_13_CEINV_1764,
      CLK => I_FSM_dout_13_CLKINV_1765,
      SET => GND,
      RST => I_FSM_dout_13_SRINV_1766,
      O => I_FSM_dout(12)
    );
  I_FSM_dout_13 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_13_DXMUX_1777,
      CE => I_FSM_dout_13_CEINV_1764,
      CLK => I_FSM_dout_13_CLKINV_1765,
      SET => GND,
      RST => I_FSM_dout_13_SRINV_1766,
      O => I_FSM_dout(13)
    );
  I_FSM_dout_20 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_21_DYMUX_1796,
      CE => I_FSM_dout_21_CEINV_1792,
      CLK => I_FSM_dout_21_CLKINV_1793,
      SET => GND,
      RST => I_FSM_dout_21_SRINV_1794,
      O => I_FSM_dout(20)
    );
  I_FSM_dout_21 : X_FF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_21_DXMUX_1805,
      CE => I_FSM_dout_21_CEINV_1792,
      CLK => I_FSM_dout_21_CLKINV_1793,
      SET => GND,
      RST => I_FSM_dout_21_SRINV_1794,
      O => I_FSM_dout(21)
    );
  I_FSM_dout_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_3_DYMUX_1824,
      CE => I_FSM_dout_3_CEINV_1820,
      CLK => I_FSM_dout_3_CLKINV_1821,
      SET => GND,
      RST => I_FSM_dout_3_SRINV_1822,
      O => I_FSM_dout(2)
    );
  I_FSM_dout_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_3_DXMUX_1833,
      CE => I_FSM_dout_3_CEINV_1820,
      CLK => I_FSM_dout_3_CLKINV_1821,
      SET => GND,
      RST => I_FSM_dout_3_SRINV_1822,
      O => I_FSM_dout(3)
    );
  I_FSM_dout_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_15_DYMUX_1852,
      CE => I_FSM_dout_15_CEINV_1848,
      CLK => I_FSM_dout_15_CLKINV_1849,
      SET => GND,
      RST => I_FSM_dout_15_SRINV_1850,
      O => I_FSM_dout(14)
    );
  I_FSM_dout_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_15_DXMUX_1861,
      CE => I_FSM_dout_15_CEINV_1848,
      CLK => I_FSM_dout_15_CLKINV_1849,
      SET => GND,
      RST => I_FSM_dout_15_SRINV_1850,
      O => I_FSM_dout(15)
    );
  I_FSM_dout_22 : X_FF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_23_DYMUX_1880,
      CE => I_FSM_dout_23_CEINV_1876,
      CLK => I_FSM_dout_23_CLKINV_1877,
      SET => GND,
      RST => I_FSM_dout_23_SRINV_1878,
      O => I_FSM_dout(22)
    );
  I_FSM_dout_23 : X_FF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_23_DXMUX_1889,
      CE => I_FSM_dout_23_CEINV_1876,
      CLK => I_FSM_dout_23_CLKINV_1877,
      SET => GND,
      RST => I_FSM_dout_23_SRINV_1878,
      O => I_FSM_dout(23)
    );
  I_FSM_dout_30 : X_FF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_31_DYMUX_1908,
      CE => I_FSM_dout_31_CEINV_1904,
      CLK => I_FSM_dout_31_CLKINV_1905,
      SET => GND,
      RST => I_FSM_dout_31_SRINV_1906,
      O => I_FSM_dout(30)
    );
  I_FSM_dout_31 : X_FF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_31_DXMUX_1917,
      CE => I_FSM_dout_31_CEINV_1904,
      CLK => I_FSM_dout_31_CLKINV_1905,
      SET => GND,
      RST => I_FSM_dout_31_SRINV_1906,
      O => I_FSM_dout(31)
    );
  I_FSM_dout_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_5_DYMUX_1936,
      CE => I_FSM_dout_5_CEINV_1932,
      CLK => I_FSM_dout_5_CLKINV_1933,
      SET => GND,
      RST => I_FSM_dout_5_SRINV_1934,
      O => I_FSM_dout(4)
    );
  I_FSM_dout_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_5_DXMUX_1945,
      CE => I_FSM_dout_5_CEINV_1932,
      CLK => I_FSM_dout_5_CLKINV_1933,
      SET => GND,
      RST => I_FSM_dout_5_SRINV_1934,
      O => I_FSM_dout(5)
    );
  I_FSM_dout_16 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_17_DYMUX_1964,
      CE => I_FSM_dout_17_CEINV_1960,
      CLK => I_FSM_dout_17_CLKINV_1961,
      SET => GND,
      RST => I_FSM_dout_17_SRINV_1962,
      O => I_FSM_dout(16)
    );
  I_FSM_dout_17 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_17_DXMUX_1973,
      CE => I_FSM_dout_17_CEINV_1960,
      CLK => I_FSM_dout_17_CLKINV_1961,
      SET => GND,
      RST => I_FSM_dout_17_SRINV_1962,
      O => I_FSM_dout(17)
    );
  I_FSM_dout_24 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_25_DYMUX_1992,
      CE => I_FSM_dout_25_CEINV_1988,
      CLK => I_FSM_dout_25_CLKINV_1989,
      SET => GND,
      RST => I_FSM_dout_25_SRINV_1990,
      O => I_FSM_dout(24)
    );
  I_FSM_dout_25 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      I => I_FSM_dout_25_DXMUX_2001,
      CE => I_FSM_dout_25_CEINV_1988,
      CLK => I_FSM_dout_25_CLKINV_1989,
      SET => GND,
      RST => I_FSM_dout_25_SRINV_1990,
      O => I_FSM_dout(25)
    );
  ready_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_rdy_549,
      O => ready_O
    );
  dataout_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(0),
      O => dataout_0_O
    );
  dataout_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(1),
      O => dataout_1_O
    );
  dataout_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(2),
      O => dataout_2_O
    );
  dataout_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(3),
      O => dataout_3_O
    );
  dataout_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(4),
      O => dataout_4_O
    );
  dataout_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(5),
      O => dataout_5_O
    );
  dataout_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(6),
      O => dataout_6_O
    );
  dataout_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(7),
      O => dataout_7_O
    );
  dataout_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(8),
      O => dataout_8_O
    );
  dataout_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(9),
      O => dataout_9_O
    );
  dataout_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(10),
      O => dataout_10_O
    );
  dataout_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(11),
      O => dataout_11_O
    );
  dataout_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(20),
      O => dataout_20_O
    );
  dataout_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(12),
      O => dataout_12_O
    );
  dataout_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(21),
      O => dataout_21_O
    );
  dataout_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(13),
      O => dataout_13_O
    );
  dataout_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(30),
      O => dataout_30_O
    );
  dataout_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(22),
      O => dataout_22_O
    );
  dataout_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(14),
      O => dataout_14_O
    );
  dataout_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(31),
      O => dataout_31_O
    );
  dataout_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(23),
      O => dataout_23_O
    );
  dataout_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(15),
      O => dataout_15_O
    );
  dataout_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(24),
      O => dataout_24_O
    );
  dataout_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(16),
      O => dataout_16_O
    );
  dataout_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(25),
      O => dataout_25_O
    );
  dataout_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(17),
      O => dataout_17_O
    );
  dataout_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(26),
      O => dataout_26_O
    );
  dataout_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(18),
      O => dataout_18_O
    );
  dataout_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(27),
      O => dataout_27_O
    );
  dataout_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(19),
      O => dataout_19_O
    );
  dataout_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(28),
      O => dataout_28_O
    );
  dataout_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_FSM_dout(29),
      O => dataout_29_O
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_CLK : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(9),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(8),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(8)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(7),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(7)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(6),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(6)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(5),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(5)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(4),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(4)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(3),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(3)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(2),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(2)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(1),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(0),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(0)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_CLK : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clock_BUFGP,
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(9),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(8),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(8)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(7),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(7)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(6),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(6)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(5),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(5)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(4),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(4)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(3),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(3)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(2),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(2)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(1),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => memaddr(0),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(0)
    );
  NlwBlock_memctrl_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_memctrl_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

