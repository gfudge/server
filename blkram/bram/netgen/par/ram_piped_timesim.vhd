--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ram_piped_timesim.vhd
-- /___/   /\     Timestamp: Sat May 10 17:37:29 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf ram_piped.pcf -rpw 100 -tpw 0 -ar Structure -tm ram_piped -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ram_piped.ncd ram_piped_timesim.vhd 
-- Device	: 3s50pq208-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: ram_piped.ncd
-- Output file	: /home/gfudge/fpga/server/blkram/bram/netgen/par/ram_piped_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ram_piped
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

entity ram_piped is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    WE : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    addr : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ram_piped;

architecture Structure of ram_piped is
  signal reset_IBUF_563 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal WE_i : STD_LOGIC; 
  signal dout_3_O : STD_LOGIC; 
  signal dout_3_OUTPUT_OFF_O1INV_700 : STD_LOGIC; 
  signal dout_3_OUTPUT_OTCLK1INV_696 : STD_LOGIC; 
  signal dout_4_O : STD_LOGIC; 
  signal dout_4_OUTPUT_OFF_O1INV_724 : STD_LOGIC; 
  signal dout_4_OUTPUT_OTCLK1INV_720 : STD_LOGIC; 
  signal dout_5_O : STD_LOGIC; 
  signal dout_5_OUTPUT_OFF_O1INV_748 : STD_LOGIC; 
  signal dout_5_OUTPUT_OTCLK1INV_744 : STD_LOGIC; 
  signal dout_6_O : STD_LOGIC; 
  signal dout_6_OUTPUT_OFF_O1INV_772 : STD_LOGIC; 
  signal dout_6_OUTPUT_OTCLK1INV_768 : STD_LOGIC; 
  signal din_10_INBUF : STD_LOGIC; 
  signal dout_7_O : STD_LOGIC; 
  signal dout_7_OUTPUT_OFF_O1INV_802 : STD_LOGIC; 
  signal dout_7_OUTPUT_OTCLK1INV_798 : STD_LOGIC; 
  signal din_11_INBUF : STD_LOGIC; 
  signal dout_8_O : STD_LOGIC; 
  signal dout_8_OUTPUT_OFF_O1INV_832 : STD_LOGIC; 
  signal dout_8_OUTPUT_OTCLK1INV_828 : STD_LOGIC; 
  signal din_20_INBUF : STD_LOGIC; 
  signal din_12_INBUF : STD_LOGIC; 
  signal dout_9_O : STD_LOGIC; 
  signal dout_9_OUTPUT_OFF_O1INV_868 : STD_LOGIC; 
  signal dout_9_OUTPUT_OTCLK1INV_864 : STD_LOGIC; 
  signal din_21_INBUF : STD_LOGIC; 
  signal din_13_INBUF : STD_LOGIC; 
  signal din_30_INBUF : STD_LOGIC; 
  signal din_22_INBUF : STD_LOGIC; 
  signal din_14_INBUF : STD_LOGIC; 
  signal WE_INBUF : STD_LOGIC; 
  signal WE_IFF_IFF1_RST : STD_LOGIC; 
  signal WE_IFF_ICLK1INV_919 : STD_LOGIC; 
  signal WE_IFF_IFFDMUX_917 : STD_LOGIC; 
  signal din_31_INBUF : STD_LOGIC; 
  signal din_23_INBUF : STD_LOGIC; 
  signal din_15_INBUF : STD_LOGIC; 
  signal din_24_INBUF : STD_LOGIC; 
  signal din_16_INBUF : STD_LOGIC; 
  signal din_25_INBUF : STD_LOGIC; 
  signal din_17_INBUF : STD_LOGIC; 
  signal din_26_INBUF : STD_LOGIC; 
  signal din_18_INBUF : STD_LOGIC; 
  signal din_27_INBUF : STD_LOGIC; 
  signal din_19_INBUF : STD_LOGIC; 
  signal din_28_INBUF : STD_LOGIC; 
  signal din_29_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal dout_10_O : STD_LOGIC; 
  signal dout_10_OUTPUT_OFF_O1INV_1027 : STD_LOGIC; 
  signal dout_10_OUTPUT_OTCLK1INV_1023 : STD_LOGIC; 
  signal dout_11_O : STD_LOGIC; 
  signal dout_11_OUTPUT_OFF_O1INV_1051 : STD_LOGIC; 
  signal dout_11_OUTPUT_OTCLK1INV_1047 : STD_LOGIC; 
  signal dout_20_O : STD_LOGIC; 
  signal dout_20_OUTPUT_OFF_O1INV_1075 : STD_LOGIC; 
  signal dout_20_OUTPUT_OTCLK1INV_1071 : STD_LOGIC; 
  signal dout_12_O : STD_LOGIC; 
  signal dout_12_OUTPUT_OFF_O1INV_1099 : STD_LOGIC; 
  signal dout_12_OUTPUT_OTCLK1INV_1095 : STD_LOGIC; 
  signal dout_21_O : STD_LOGIC; 
  signal dout_21_OUTPUT_OFF_O1INV_1123 : STD_LOGIC; 
  signal dout_21_OUTPUT_OTCLK1INV_1119 : STD_LOGIC; 
  signal dout_13_O : STD_LOGIC; 
  signal dout_13_OUTPUT_OFF_O1INV_1147 : STD_LOGIC; 
  signal dout_13_OUTPUT_OTCLK1INV_1143 : STD_LOGIC; 
  signal dout_30_O : STD_LOGIC; 
  signal dout_30_OUTPUT_OFF_O1INV_1171 : STD_LOGIC; 
  signal dout_30_OUTPUT_OTCLK1INV_1167 : STD_LOGIC; 
  signal dout_22_O : STD_LOGIC; 
  signal dout_22_OUTPUT_OFF_O1INV_1195 : STD_LOGIC; 
  signal dout_22_OUTPUT_OTCLK1INV_1191 : STD_LOGIC; 
  signal dout_14_O : STD_LOGIC; 
  signal dout_14_OUTPUT_OFF_O1INV_1219 : STD_LOGIC; 
  signal dout_14_OUTPUT_OTCLK1INV_1215 : STD_LOGIC; 
  signal dout_31_O : STD_LOGIC; 
  signal dout_31_OUTPUT_OFF_O1INV_1243 : STD_LOGIC; 
  signal dout_31_OUTPUT_OTCLK1INV_1239 : STD_LOGIC; 
  signal dout_23_O : STD_LOGIC; 
  signal dout_23_OUTPUT_OFF_O1INV_1267 : STD_LOGIC; 
  signal dout_23_OUTPUT_OTCLK1INV_1263 : STD_LOGIC; 
  signal dout_15_O : STD_LOGIC; 
  signal dout_15_OUTPUT_OFF_O1INV_1291 : STD_LOGIC; 
  signal dout_15_OUTPUT_OTCLK1INV_1287 : STD_LOGIC; 
  signal dout_24_O : STD_LOGIC; 
  signal dout_24_OUTPUT_OFF_O1INV_1315 : STD_LOGIC; 
  signal dout_24_OUTPUT_OTCLK1INV_1311 : STD_LOGIC; 
  signal dout_16_O : STD_LOGIC; 
  signal dout_16_OUTPUT_OFF_O1INV_1339 : STD_LOGIC; 
  signal dout_16_OUTPUT_OTCLK1INV_1335 : STD_LOGIC; 
  signal dout_25_O : STD_LOGIC; 
  signal dout_25_OUTPUT_OFF_O1INV_1363 : STD_LOGIC; 
  signal dout_25_OUTPUT_OTCLK1INV_1359 : STD_LOGIC; 
  signal dout_17_O : STD_LOGIC; 
  signal dout_17_OUTPUT_OFF_O1INV_1387 : STD_LOGIC; 
  signal dout_17_OUTPUT_OTCLK1INV_1383 : STD_LOGIC; 
  signal dout_26_O : STD_LOGIC; 
  signal dout_26_OUTPUT_OFF_O1INV_1411 : STD_LOGIC; 
  signal dout_26_OUTPUT_OTCLK1INV_1407 : STD_LOGIC; 
  signal dout_18_O : STD_LOGIC; 
  signal dout_18_OUTPUT_OFF_O1INV_1435 : STD_LOGIC; 
  signal dout_18_OUTPUT_OTCLK1INV_1431 : STD_LOGIC; 
  signal dout_27_O : STD_LOGIC; 
  signal dout_27_OUTPUT_OFF_O1INV_1459 : STD_LOGIC; 
  signal dout_27_OUTPUT_OTCLK1INV_1455 : STD_LOGIC; 
  signal dout_19_O : STD_LOGIC; 
  signal dout_19_OUTPUT_OFF_O1INV_1483 : STD_LOGIC; 
  signal dout_19_OUTPUT_OTCLK1INV_1479 : STD_LOGIC; 
  signal addr_0_INBUF : STD_LOGIC; 
  signal dout_28_O : STD_LOGIC; 
  signal dout_28_OUTPUT_OFF_O1INV_1513 : STD_LOGIC; 
  signal dout_28_OUTPUT_OTCLK1INV_1509 : STD_LOGIC; 
  signal din_0_INBUF : STD_LOGIC; 
  signal addr_1_INBUF : STD_LOGIC; 
  signal dout_29_O : STD_LOGIC; 
  signal dout_29_OUTPUT_OFF_O1INV_1549 : STD_LOGIC; 
  signal dout_29_OUTPUT_OTCLK1INV_1545 : STD_LOGIC; 
  signal din_1_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOPA1 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOPA0 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOA15 : STD_LOGIC; 
  signal I_BRAM_Mram_ram_ir2_DOA14 : STD_LOGIC; 
  signal din_i_11_DXMUX_1686 : STD_LOGIC; 
  signal din_i_11_DYMUX_1678 : STD_LOGIC; 
  signal din_i_11_SRINV_1676 : STD_LOGIC; 
  signal din_i_11_CLKINV_1675 : STD_LOGIC; 
  signal din_i_13_DXMUX_1710 : STD_LOGIC; 
  signal din_i_13_DYMUX_1702 : STD_LOGIC; 
  signal din_i_13_SRINV_1700 : STD_LOGIC; 
  signal din_i_13_CLKINV_1699 : STD_LOGIC; 
  signal din_i_21_DXMUX_1734 : STD_LOGIC; 
  signal din_i_21_DYMUX_1726 : STD_LOGIC; 
  signal din_i_21_SRINV_1724 : STD_LOGIC; 
  signal din_i_21_CLKINV_1723 : STD_LOGIC; 
  signal din_i_15_DXMUX_1758 : STD_LOGIC; 
  signal din_i_15_DYMUX_1750 : STD_LOGIC; 
  signal din_i_15_SRINV_1748 : STD_LOGIC; 
  signal din_i_15_CLKINV_1747 : STD_LOGIC; 
  signal din_i_23_DXMUX_1782 : STD_LOGIC; 
  signal din_i_23_DYMUX_1774 : STD_LOGIC; 
  signal din_i_23_SRINV_1772 : STD_LOGIC; 
  signal din_i_23_CLKINV_1771 : STD_LOGIC; 
  signal din_i_31_DXMUX_1806 : STD_LOGIC; 
  signal din_i_31_DYMUX_1798 : STD_LOGIC; 
  signal din_i_31_SRINV_1796 : STD_LOGIC; 
  signal din_i_31_CLKINV_1795 : STD_LOGIC; 
  signal din_i_17_DXMUX_1830 : STD_LOGIC; 
  signal din_i_17_DYMUX_1822 : STD_LOGIC; 
  signal din_i_17_SRINV_1820 : STD_LOGIC; 
  signal din_i_17_CLKINV_1819 : STD_LOGIC; 
  signal din_i_25_DXMUX_1854 : STD_LOGIC; 
  signal din_i_25_DYMUX_1846 : STD_LOGIC; 
  signal din_i_25_SRINV_1844 : STD_LOGIC; 
  signal din_i_25_CLKINV_1843 : STD_LOGIC; 
  signal din_i_19_DXMUX_1878 : STD_LOGIC; 
  signal din_i_19_DYMUX_1870 : STD_LOGIC; 
  signal din_i_19_SRINV_1868 : STD_LOGIC; 
  signal din_i_19_CLKINV_1867 : STD_LOGIC; 
  signal din_i_27_DXMUX_1902 : STD_LOGIC; 
  signal din_i_27_DYMUX_1894 : STD_LOGIC; 
  signal din_i_27_SRINV_1892 : STD_LOGIC; 
  signal din_i_27_CLKINV_1891 : STD_LOGIC; 
  signal din_i_29_DXMUX_1926 : STD_LOGIC; 
  signal din_i_29_DYMUX_1918 : STD_LOGIC; 
  signal din_i_29_SRINV_1916 : STD_LOGIC; 
  signal din_i_29_CLKINV_1915 : STD_LOGIC; 
  signal din_i_1_DXMUX_1950 : STD_LOGIC; 
  signal din_i_1_DYMUX_1942 : STD_LOGIC; 
  signal din_i_1_SRINV_1940 : STD_LOGIC; 
  signal din_i_1_CLKINV_1939 : STD_LOGIC; 
  signal din_i_3_DXMUX_1974 : STD_LOGIC; 
  signal din_i_3_DYMUX_1966 : STD_LOGIC; 
  signal din_i_3_SRINV_1964 : STD_LOGIC; 
  signal din_i_3_CLKINV_1963 : STD_LOGIC; 
  signal din_i_5_DXMUX_1998 : STD_LOGIC; 
  signal din_i_5_DYMUX_1990 : STD_LOGIC; 
  signal din_i_5_SRINV_1988 : STD_LOGIC; 
  signal din_i_5_CLKINV_1987 : STD_LOGIC; 
  signal din_i_7_DXMUX_2022 : STD_LOGIC; 
  signal din_i_7_DYMUX_2014 : STD_LOGIC; 
  signal din_i_7_SRINV_2012 : STD_LOGIC; 
  signal din_i_7_CLKINV_2011 : STD_LOGIC; 
  signal din_i_9_DXMUX_2046 : STD_LOGIC; 
  signal din_i_9_DYMUX_2038 : STD_LOGIC; 
  signal din_i_9_SRINV_2036 : STD_LOGIC; 
  signal din_i_9_CLKINV_2035 : STD_LOGIC; 
  signal addr_i_1_DXMUX_2070 : STD_LOGIC; 
  signal addr_i_1_DYMUX_2062 : STD_LOGIC; 
  signal addr_i_1_SRINV_2060 : STD_LOGIC; 
  signal addr_i_1_CLKINV_2059 : STD_LOGIC; 
  signal addr_i_3_DXMUX_2094 : STD_LOGIC; 
  signal addr_i_3_DYMUX_2086 : STD_LOGIC; 
  signal addr_i_3_SRINV_2084 : STD_LOGIC; 
  signal addr_i_3_CLKINV_2083 : STD_LOGIC; 
  signal addr_i_5_DXMUX_2118 : STD_LOGIC; 
  signal addr_i_5_DYMUX_2110 : STD_LOGIC; 
  signal addr_i_5_SRINV_2108 : STD_LOGIC; 
  signal addr_i_5_CLKINV_2107 : STD_LOGIC; 
  signal addr_i_7_DXMUX_2142 : STD_LOGIC; 
  signal addr_i_7_DYMUX_2134 : STD_LOGIC; 
  signal addr_i_7_SRINV_2132 : STD_LOGIC; 
  signal addr_i_7_CLKINV_2131 : STD_LOGIC; 
  signal addr_i_9_DXMUX_2166 : STD_LOGIC; 
  signal addr_i_9_DYMUX_2158 : STD_LOGIC; 
  signal addr_i_9_SRINV_2156 : STD_LOGIC; 
  signal addr_i_9_CLKINV_2155 : STD_LOGIC; 
  signal addr_2_INBUF : STD_LOGIC; 
  signal din_2_INBUF : STD_LOGIC; 
  signal addr_3_INBUF : STD_LOGIC; 
  signal din_3_INBUF : STD_LOGIC; 
  signal addr_4_INBUF : STD_LOGIC; 
  signal din_4_INBUF : STD_LOGIC; 
  signal addr_5_INBUF : STD_LOGIC; 
  signal din_5_INBUF : STD_LOGIC; 
  signal addr_6_INBUF : STD_LOGIC; 
  signal din_6_INBUF : STD_LOGIC; 
  signal addr_7_INBUF : STD_LOGIC; 
  signal din_7_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal addr_8_INBUF : STD_LOGIC; 
  signal din_8_INBUF : STD_LOGIC; 
  signal addr_9_INBUF : STD_LOGIC; 
  signal din_9_INBUF : STD_LOGIC; 
  signal dout_0_O : STD_LOGIC; 
  signal dout_0_OUTPUT_OFF_O1INV_2290 : STD_LOGIC; 
  signal dout_0_OUTPUT_OTCLK1INV_2286 : STD_LOGIC; 
  signal dout_1_O : STD_LOGIC; 
  signal dout_1_OUTPUT_OFF_O1INV_2314 : STD_LOGIC; 
  signal dout_1_OUTPUT_OTCLK1INV_2310 : STD_LOGIC; 
  signal dout_2_O : STD_LOGIC; 
  signal dout_2_OUTPUT_OFF_O1INV_2338 : STD_LOGIC; 
  signal dout_2_OUTPUT_OTCLK1INV_2334 : STD_LOGIC; 
  signal dout_3_OUTPUT_OFF_OFF1_RSTAND_707 : STD_LOGIC; 
  signal dout_4_OUTPUT_OFF_OFF1_RSTAND_731 : STD_LOGIC; 
  signal dout_5_OUTPUT_OFF_OFF1_RSTAND_755 : STD_LOGIC; 
  signal dout_2_OUTPUT_OFF_OFF1_RSTAND_2345 : STD_LOGIC; 
  signal dout_9_OUTPUT_OFF_OFF1_RSTAND_875 : STD_LOGIC; 
  signal dout_6_OUTPUT_OFF_OFF1_RSTAND_779 : STD_LOGIC; 
  signal dout_7_OUTPUT_OFF_OFF1_RSTAND_809 : STD_LOGIC; 
  signal dout_8_OUTPUT_OFF_OFF1_RSTAND_839 : STD_LOGIC; 
  signal dout_28_OUTPUT_OFF_OFF1_RSTAND_1520 : STD_LOGIC; 
  signal dout_29_OUTPUT_OFF_OFF1_RSTAND_1556 : STD_LOGIC; 
  signal dout_26_OUTPUT_OFF_OFF1_RSTAND_1418 : STD_LOGIC; 
  signal dout_18_OUTPUT_OFF_OFF1_RSTAND_1442 : STD_LOGIC; 
  signal dout_27_OUTPUT_OFF_OFF1_RSTAND_1466 : STD_LOGIC; 
  signal dout_19_OUTPUT_OFF_OFF1_RSTAND_1490 : STD_LOGIC; 
  signal dout_10_OUTPUT_OFF_OFF1_RSTAND_1034 : STD_LOGIC; 
  signal dout_11_OUTPUT_OFF_OFF1_RSTAND_1058 : STD_LOGIC; 
  signal dout_20_OUTPUT_OFF_OFF1_RSTAND_1082 : STD_LOGIC; 
  signal dout_12_OUTPUT_OFF_OFF1_RSTAND_1106 : STD_LOGIC; 
  signal dout_21_OUTPUT_OFF_OFF1_RSTAND_1130 : STD_LOGIC; 
  signal dout_13_OUTPUT_OFF_OFF1_RSTAND_1154 : STD_LOGIC; 
  signal dout_30_OUTPUT_OFF_OFF1_RSTAND_1178 : STD_LOGIC; 
  signal dout_22_OUTPUT_OFF_OFF1_RSTAND_1202 : STD_LOGIC; 
  signal dout_14_OUTPUT_OFF_OFF1_RSTAND_1226 : STD_LOGIC; 
  signal dout_31_OUTPUT_OFF_OFF1_RSTAND_1250 : STD_LOGIC; 
  signal dout_23_OUTPUT_OFF_OFF1_RSTAND_1274 : STD_LOGIC; 
  signal dout_15_OUTPUT_OFF_OFF1_RSTAND_1298 : STD_LOGIC; 
  signal dout_24_OUTPUT_OFF_OFF1_RSTAND_1322 : STD_LOGIC; 
  signal dout_16_OUTPUT_OFF_OFF1_RSTAND_1346 : STD_LOGIC; 
  signal dout_25_OUTPUT_OFF_OFF1_RSTAND_1370 : STD_LOGIC; 
  signal dout_17_OUTPUT_OFF_OFF1_RSTAND_1394 : STD_LOGIC; 
  signal dout_0_OUTPUT_OFF_OFF1_RSTAND_2297 : STD_LOGIC; 
  signal dout_1_OUTPUT_OFF_OFF1_RSTAND_2321 : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_8_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_12_Q : STD_LOGIC; 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_13_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal dout_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal addr_i : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal din_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal I_REG_OB_q : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir1_DIP : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  dout_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD103"
    )
    port map (
      I => dout_3_O,
      O => dout(3)
    );
  dout_3_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(3),
      O => dout_3_OUTPUT_OFF_O1INV_700
    );
  dout_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(3),
      O => dout_3_O
    );
  dout_3_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_3_OUTPUT_OTCLK1INV_696
    );
  dout_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => dout_4_O,
      O => dout(4)
    );
  dout_4_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(4),
      O => dout_4_OUTPUT_OFF_O1INV_724
    );
  dout_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(4),
      O => dout_4_O
    );
  dout_4_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_4_OUTPUT_OTCLK1INV_720
    );
  dout_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => dout_5_O,
      O => dout(5)
    );
  dout_5_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(5),
      O => dout_5_OUTPUT_OFF_O1INV_748
    );
  dout_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(5),
      O => dout_5_O
    );
  dout_5_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_5_OUTPUT_OTCLK1INV_744
    );
  dout_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => dout_6_O,
      O => dout(6)
    );
  dout_6_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(6),
      O => dout_6_OUTPUT_OFF_O1INV_772
    );
  dout_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(6),
      O => dout_6_O
    );
  dout_6_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_6_OUTPUT_OTCLK1INV_768
    );
  din_10_IBUF : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(10),
      O => din_10_INBUF
    );
  dout_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => dout_7_O,
      O => dout(7)
    );
  dout_7_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(7),
      O => dout_7_OUTPUT_OFF_O1INV_802
    );
  dout_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(7),
      O => dout_7_O
    );
  dout_7_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_7_OUTPUT_OTCLK1INV_798
    );
  din_11_IBUF : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(11),
      O => din_11_INBUF
    );
  dout_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => dout_8_O,
      O => dout(8)
    );
  dout_8_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(8),
      O => dout_8_OUTPUT_OFF_O1INV_832
    );
  dout_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(8),
      O => dout_8_O
    );
  dout_8_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_8_OUTPUT_OTCLK1INV_828
    );
  din_20_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(20),
      O => din_20_INBUF
    );
  din_12_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(12),
      O => din_12_INBUF
    );
  dout_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => dout_9_O,
      O => dout(9)
    );
  dout_9_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(9),
      O => dout_9_OUTPUT_OFF_O1INV_868
    );
  dout_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(9),
      O => dout_9_O
    );
  dout_9_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_9_OUTPUT_OTCLK1INV_864
    );
  din_21_IBUF : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(21),
      O => din_21_INBUF
    );
  din_13_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(13),
      O => din_13_INBUF
    );
  din_30_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(30),
      O => din_30_INBUF
    );
  din_22_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(22),
      O => din_22_INBUF
    );
  din_14_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(14),
      O => din_14_INBUF
    );
  WE_IBUF : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => WE,
      O => WE_INBUF
    );
  WE_IFF_IFF1_RSTOR : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => WE_IFF_IFF1_RST
    );
  I_REG_WF_q : X_FF
    generic map(
      LOC => "PAD6",
      INIT => '0'
    )
    port map (
      I => WE_IFF_IFFDMUX_917,
      CE => VCC,
      CLK => WE_IFF_ICLK1INV_919,
      SET => GND,
      RST => WE_IFF_IFF1_RST,
      O => WE_i
    );
  WE_IFF_IFFDMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => WE_INBUF,
      O => WE_IFF_IFFDMUX_917
    );
  WE_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => WE_IFF_ICLK1INV_919
    );
  din_31_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(31),
      O => din_31_INBUF
    );
  din_23_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(23),
      O => din_23_INBUF
    );
  din_15_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(15),
      O => din_15_INBUF
    );
  din_24_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(24),
      O => din_24_INBUF
    );
  din_16_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(16),
      O => din_16_INBUF
    );
  din_25_IBUF : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(25),
      O => din_25_INBUF
    );
  din_17_IBUF : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(17),
      O => din_17_INBUF
    );
  din_26_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(26),
      O => din_26_INBUF
    );
  din_18_IBUF : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(18),
      O => din_18_INBUF
    );
  din_27_IBUF : X_BUF
    generic map(
      LOC => "PAD3",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(27),
      O => din_27_INBUF
    );
  din_19_IBUF : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(19),
      O => din_19_INBUF
    );
  din_28_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(28),
      O => din_28_INBUF
    );
  din_29_IBUF : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(29),
      O => din_29_INBUF
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_563
    );
  dout_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => dout_10_O,
      O => dout(10)
    );
  dout_10_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(10),
      O => dout_10_OUTPUT_OFF_O1INV_1027
    );
  dout_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(10),
      O => dout_10_O
    );
  dout_10_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_10_OUTPUT_OTCLK1INV_1023
    );
  dout_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => dout_11_O,
      O => dout(11)
    );
  dout_11_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(11),
      O => dout_11_OUTPUT_OFF_O1INV_1051
    );
  dout_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(11),
      O => dout_11_O
    );
  dout_11_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_11_OUTPUT_OTCLK1INV_1047
    );
  dout_20_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => dout_20_O,
      O => dout(20)
    );
  dout_20_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(20),
      O => dout_20_OUTPUT_OFF_O1INV_1075
    );
  dout_20_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(20),
      O => dout_20_O
    );
  dout_20_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_20_OUTPUT_OTCLK1INV_1071
    );
  dout_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => dout_12_O,
      O => dout(12)
    );
  dout_12_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(12),
      O => dout_12_OUTPUT_OFF_O1INV_1099
    );
  dout_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(12),
      O => dout_12_O
    );
  dout_12_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_12_OUTPUT_OTCLK1INV_1095
    );
  dout_21_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => dout_21_O,
      O => dout(21)
    );
  dout_21_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(21),
      O => dout_21_OUTPUT_OFF_O1INV_1123
    );
  dout_21_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(21),
      O => dout_21_O
    );
  dout_21_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_21_OUTPUT_OTCLK1INV_1119
    );
  dout_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => dout_13_O,
      O => dout(13)
    );
  dout_13_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(13),
      O => dout_13_OUTPUT_OFF_O1INV_1147
    );
  dout_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(13),
      O => dout_13_O
    );
  dout_13_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_13_OUTPUT_OTCLK1INV_1143
    );
  dout_30_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => dout_30_O,
      O => dout(30)
    );
  dout_30_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(30),
      O => dout_30_OUTPUT_OFF_O1INV_1171
    );
  dout_30_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(30),
      O => dout_30_O
    );
  dout_30_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_30_OUTPUT_OTCLK1INV_1167
    );
  dout_22_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => dout_22_O,
      O => dout(22)
    );
  dout_22_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(22),
      O => dout_22_OUTPUT_OFF_O1INV_1195
    );
  dout_22_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(22),
      O => dout_22_O
    );
  dout_22_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_22_OUTPUT_OTCLK1INV_1191
    );
  dout_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => dout_14_O,
      O => dout(14)
    );
  dout_14_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(14),
      O => dout_14_OUTPUT_OFF_O1INV_1219
    );
  dout_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(14),
      O => dout_14_O
    );
  dout_14_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_14_OUTPUT_OTCLK1INV_1215
    );
  dout_31_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => dout_31_O,
      O => dout(31)
    );
  dout_31_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(31),
      O => dout_31_OUTPUT_OFF_O1INV_1243
    );
  dout_31_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(31),
      O => dout_31_O
    );
  dout_31_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_31_OUTPUT_OTCLK1INV_1239
    );
  dout_23_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => dout_23_O,
      O => dout(23)
    );
  dout_23_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(23),
      O => dout_23_OUTPUT_OFF_O1INV_1267
    );
  dout_23_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(23),
      O => dout_23_O
    );
  dout_23_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_23_OUTPUT_OTCLK1INV_1263
    );
  dout_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => dout_15_O,
      O => dout(15)
    );
  dout_15_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(15),
      O => dout_15_OUTPUT_OFF_O1INV_1291
    );
  dout_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(15),
      O => dout_15_O
    );
  dout_15_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_15_OUTPUT_OTCLK1INV_1287
    );
  dout_24_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => dout_24_O,
      O => dout(24)
    );
  dout_24_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(24),
      O => dout_24_OUTPUT_OFF_O1INV_1315
    );
  dout_24_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(24),
      O => dout_24_O
    );
  dout_24_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_24_OUTPUT_OTCLK1INV_1311
    );
  dout_16_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => dout_16_O,
      O => dout(16)
    );
  dout_16_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(16),
      O => dout_16_OUTPUT_OFF_O1INV_1339
    );
  dout_16_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(16),
      O => dout_16_O
    );
  dout_16_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_16_OUTPUT_OTCLK1INV_1335
    );
  dout_25_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => dout_25_O,
      O => dout(25)
    );
  dout_25_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(25),
      O => dout_25_OUTPUT_OFF_O1INV_1363
    );
  dout_25_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(25),
      O => dout_25_O
    );
  dout_25_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_25_OUTPUT_OTCLK1INV_1359
    );
  dout_17_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => dout_17_O,
      O => dout(17)
    );
  dout_17_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(17),
      O => dout_17_OUTPUT_OFF_O1INV_1387
    );
  dout_17_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(17),
      O => dout_17_O
    );
  dout_17_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_17_OUTPUT_OTCLK1INV_1383
    );
  dout_26_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => dout_26_O,
      O => dout(26)
    );
  dout_26_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(26),
      O => dout_26_OUTPUT_OFF_O1INV_1411
    );
  dout_26_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(26),
      O => dout_26_O
    );
  dout_26_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_26_OUTPUT_OTCLK1INV_1407
    );
  dout_18_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => dout_18_O,
      O => dout(18)
    );
  dout_18_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(18),
      O => dout_18_OUTPUT_OFF_O1INV_1435
    );
  dout_18_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(18),
      O => dout_18_O
    );
  dout_18_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_18_OUTPUT_OTCLK1INV_1431
    );
  dout_27_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => dout_27_O,
      O => dout(27)
    );
  dout_27_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(27),
      O => dout_27_OUTPUT_OFF_O1INV_1459
    );
  dout_27_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(27),
      O => dout_27_O
    );
  dout_27_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_27_OUTPUT_OTCLK1INV_1455
    );
  dout_19_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => dout_19_O,
      O => dout(19)
    );
  dout_19_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(19),
      O => dout_19_OUTPUT_OFF_O1INV_1483
    );
  dout_19_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(19),
      O => dout_19_O
    );
  dout_19_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_19_OUTPUT_OTCLK1INV_1479
    );
  addr_0_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(0),
      O => addr_0_INBUF
    );
  dout_28_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => dout_28_O,
      O => dout(28)
    );
  dout_28_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(28),
      O => dout_28_OUTPUT_OFF_O1INV_1513
    );
  dout_28_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(28),
      O => dout_28_O
    );
  dout_28_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_28_OUTPUT_OTCLK1INV_1509
    );
  din_0_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(0),
      O => din_0_INBUF
    );
  addr_1_IBUF : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(1),
      O => addr_1_INBUF
    );
  dout_29_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => dout_29_O,
      O => dout(29)
    );
  dout_29_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(29),
      O => dout_29_OUTPUT_OFF_O1INV_1549
    );
  dout_29_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(29),
      O => dout_29_O
    );
  dout_29_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_29_OUTPUT_OTCLK1INV_1545
    );
  din_1_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(1),
      O => din_1_INBUF
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
      WRITE_MODE => "READ_FIRST",
      LOC => "RAMB16_X0Y2"
    )
    port map (
      CLK => NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK,
      EN => '1',
      SSR => '0',
      WE => WE_i,
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
      DI(15) => din_i(15),
      DI(14) => din_i(14),
      DI(13) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(13),
      DI(12) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(12),
      DI(11) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(11),
      DI(10) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(10),
      DI(9) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(9),
      DI(8) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(8),
      DI(7) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(7),
      DI(6) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(6),
      DI(5) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(5),
      DI(4) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(4),
      DI(3) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(3),
      DI(2) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(2),
      DI(1) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(1),
      DI(0) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(0),
      DIP(1) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DIP(1),
      DIP(0) => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DIP(0),
      DO(15) => dout_i(15),
      DO(14) => dout_i(14),
      DO(13) => dout_i(13),
      DO(12) => dout_i(12),
      DO(11) => dout_i(11),
      DO(10) => dout_i(10),
      DO(9) => dout_i(9),
      DO(8) => dout_i(8),
      DO(7) => dout_i(7),
      DO(6) => dout_i(6),
      DO(5) => dout_i(5),
      DO(4) => dout_i(4),
      DO(3) => dout_i(3),
      DO(2) => dout_i(2),
      DO(1) => dout_i(1),
      DO(0) => dout_i(0),
      DOP(1) => dout_i(17),
      DOP(0) => dout_i(16)
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
      WRITE_MODE => "READ_FIRST",
      LOC => "RAMB16_X0Y3"
    )
    port map (
      CLK => NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK,
      EN => '1',
      SSR => '0',
      WE => WE_i,
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
      DI(15) => '0',
      DI(14) => '0',
      DI(13) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_13_Q,
      DI(12) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_12_Q,
      DI(11) => din_i(29),
      DI(10) => din_i(28),
      DI(9) => din_i(27),
      DI(8) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_8_Q,
      DI(7) => din_i(25),
      DI(6) => din_i(24),
      DI(5) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_5_Q,
      DI(4) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_4_Q,
      DI(3) => din_i(21),
      DI(2) => din_i(20),
      DI(1) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_1_Q,
      DI(0) => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_0_Q,
      DIP(1) => '0',
      DIP(0) => '0',
      DO(15) => I_BRAM_Mram_ram_ir2_DOA15,
      DO(14) => I_BRAM_Mram_ram_ir2_DOA14,
      DO(13) => dout_i(31),
      DO(12) => dout_i(30),
      DO(11) => dout_i(29),
      DO(10) => dout_i(28),
      DO(9) => dout_i(27),
      DO(8) => dout_i(26),
      DO(7) => dout_i(25),
      DO(6) => dout_i(24),
      DO(5) => dout_i(23),
      DO(4) => dout_i(22),
      DO(3) => dout_i(21),
      DO(2) => dout_i(20),
      DO(1) => dout_i(19),
      DO(0) => dout_i(18),
      DOP(1) => I_BRAM_Mram_ram_ir2_DOPA1,
      DOP(0) => I_BRAM_Mram_ram_ir2_DOPA0
    );
  din_i_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_11_INBUF,
      O => din_i_11_DXMUX_1686
    );
  din_i_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_10_INBUF,
      O => din_i_11_DYMUX_1678
    );
  din_i_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_11_SRINV_1676
    );
  din_i_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_11_CLKINV_1675
    );
  din_i_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_13_INBUF,
      O => din_i_13_DXMUX_1710
    );
  din_i_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_12_INBUF,
      O => din_i_13_DYMUX_1702
    );
  din_i_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_13_SRINV_1700
    );
  din_i_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_13_CLKINV_1699
    );
  din_i_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_21_INBUF,
      O => din_i_21_DXMUX_1734
    );
  din_i_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_20_INBUF,
      O => din_i_21_DYMUX_1726
    );
  din_i_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_21_SRINV_1724
    );
  din_i_21_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_21_CLKINV_1723
    );
  din_i_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_15_INBUF,
      O => din_i_15_DXMUX_1758
    );
  din_i_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_14_INBUF,
      O => din_i_15_DYMUX_1750
    );
  din_i_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_15_SRINV_1748
    );
  din_i_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_15_CLKINV_1747
    );
  din_i_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_23_INBUF,
      O => din_i_23_DXMUX_1782
    );
  din_i_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_22_INBUF,
      O => din_i_23_DYMUX_1774
    );
  din_i_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_23_SRINV_1772
    );
  din_i_23_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_23_CLKINV_1771
    );
  din_i_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_31_INBUF,
      O => din_i_31_DXMUX_1806
    );
  din_i_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_30_INBUF,
      O => din_i_31_DYMUX_1798
    );
  din_i_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_31_SRINV_1796
    );
  din_i_31_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_31_CLKINV_1795
    );
  din_i_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_17_INBUF,
      O => din_i_17_DXMUX_1830
    );
  din_i_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_16_INBUF,
      O => din_i_17_DYMUX_1822
    );
  din_i_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_17_SRINV_1820
    );
  din_i_17_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_17_CLKINV_1819
    );
  din_i_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_25_INBUF,
      O => din_i_25_DXMUX_1854
    );
  din_i_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_24_INBUF,
      O => din_i_25_DYMUX_1846
    );
  din_i_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_25_SRINV_1844
    );
  din_i_25_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_25_CLKINV_1843
    );
  din_i_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_19_INBUF,
      O => din_i_19_DXMUX_1878
    );
  din_i_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_18_INBUF,
      O => din_i_19_DYMUX_1870
    );
  din_i_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_19_SRINV_1868
    );
  din_i_19_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y28",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_19_CLKINV_1867
    );
  din_i_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_27_INBUF,
      O => din_i_27_DXMUX_1902
    );
  din_i_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_26_INBUF,
      O => din_i_27_DYMUX_1894
    );
  din_i_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_27_SRINV_1892
    );
  din_i_27_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y29",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_27_CLKINV_1891
    );
  din_i_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_29_INBUF,
      O => din_i_29_DXMUX_1926
    );
  din_i_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_28_INBUF,
      O => din_i_29_DYMUX_1918
    );
  din_i_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_29_SRINV_1916
    );
  din_i_29_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y30",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_29_CLKINV_1915
    );
  din_i_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_1_INBUF,
      O => din_i_1_DXMUX_1950
    );
  din_i_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_0_INBUF,
      O => din_i_1_DYMUX_1942
    );
  din_i_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_1_SRINV_1940
    );
  din_i_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_1_CLKINV_1939
    );
  din_i_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_3_INBUF,
      O => din_i_3_DXMUX_1974
    );
  din_i_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_2_INBUF,
      O => din_i_3_DYMUX_1966
    );
  din_i_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_3_SRINV_1964
    );
  din_i_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_3_CLKINV_1963
    );
  din_i_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_5_INBUF,
      O => din_i_5_DXMUX_1998
    );
  din_i_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_4_INBUF,
      O => din_i_5_DYMUX_1990
    );
  din_i_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_5_SRINV_1988
    );
  din_i_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_5_CLKINV_1987
    );
  din_i_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_7_INBUF,
      O => din_i_7_DXMUX_2022
    );
  din_i_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_6_INBUF,
      O => din_i_7_DYMUX_2014
    );
  din_i_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_7_SRINV_2012
    );
  din_i_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y24",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_7_CLKINV_2011
    );
  din_i_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_9_INBUF,
      O => din_i_9_DXMUX_2046
    );
  din_i_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din_8_INBUF,
      O => din_i_9_DYMUX_2038
    );
  din_i_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => din_i_9_SRINV_2036
    );
  din_i_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y26",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => din_i_9_CLKINV_2035
    );
  addr_i_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_1_INBUF,
      O => addr_i_1_DXMUX_2070
    );
  addr_i_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_0_INBUF,
      O => addr_i_1_DYMUX_2062
    );
  addr_i_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => addr_i_1_SRINV_2060
    );
  addr_i_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y27",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => addr_i_1_CLKINV_2059
    );
  addr_i_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_3_INBUF,
      O => addr_i_3_DXMUX_2094
    );
  addr_i_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_2_INBUF,
      O => addr_i_3_DYMUX_2086
    );
  addr_i_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => addr_i_3_SRINV_2084
    );
  addr_i_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y22",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => addr_i_3_CLKINV_2083
    );
  addr_i_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_5_INBUF,
      O => addr_i_5_DXMUX_2118
    );
  addr_i_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_4_INBUF,
      O => addr_i_5_DYMUX_2110
    );
  addr_i_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => addr_i_5_SRINV_2108
    );
  addr_i_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y25",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => addr_i_5_CLKINV_2107
    );
  addr_i_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_7_INBUF,
      O => addr_i_7_DXMUX_2142
    );
  addr_i_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_6_INBUF,
      O => addr_i_7_DYMUX_2134
    );
  addr_i_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => addr_i_7_SRINV_2132
    );
  addr_i_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => addr_i_7_CLKINV_2131
    );
  addr_i_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_9_INBUF,
      O => addr_i_9_DXMUX_2166
    );
  addr_i_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_8_INBUF,
      O => addr_i_9_DYMUX_2158
    );
  addr_i_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => addr_i_9_SRINV_2156
    );
  addr_i_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y23",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => addr_i_9_CLKINV_2155
    );
  addr_2_IBUF : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(2),
      O => addr_2_INBUF
    );
  din_2_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(2),
      O => din_2_INBUF
    );
  addr_3_IBUF : X_BUF
    generic map(
      LOC => "PAD118",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(3),
      O => addr_3_INBUF
    );
  din_3_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(3),
      O => din_3_INBUF
    );
  addr_4_IBUF : X_BUF
    generic map(
      LOC => "PAD117",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(4),
      O => addr_4_INBUF
    );
  din_4_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(4),
      O => din_4_INBUF
    );
  addr_5_IBUF : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(5),
      O => addr_5_INBUF
    );
  din_5_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(5),
      O => din_5_INBUF
    );
  addr_6_IBUF : X_BUF
    generic map(
      LOC => "PAD112",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(6),
      O => addr_6_INBUF
    );
  din_6_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(6),
      O => din_6_INBUF
    );
  addr_7_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(7),
      O => addr_7_INBUF
    );
  din_7_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(7),
      O => din_7_INBUF
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
  addr_8_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(8),
      O => addr_8_INBUF
    );
  din_8_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(8),
      O => din_8_INBUF
    );
  addr_9_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 526 ps
    )
    port map (
      I => addr(9),
      O => addr_9_INBUF
    );
  din_9_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 526 ps
    )
    port map (
      I => din(9),
      O => din_9_INBUF
    );
  dout_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => dout_0_O,
      O => dout(0)
    );
  dout_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(0),
      O => dout_0_OUTPUT_OFF_O1INV_2290
    );
  dout_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(0),
      O => dout_0_O
    );
  dout_0_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_0_OUTPUT_OTCLK1INV_2286
    );
  dout_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => dout_1_O,
      O => dout(1)
    );
  dout_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(1),
      O => dout_1_OUTPUT_OFF_O1INV_2314
    );
  dout_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(1),
      O => dout_1_O
    );
  dout_1_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_1_OUTPUT_OTCLK1INV_2310
    );
  dout_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => dout_2_O,
      O => dout(2)
    );
  dout_2_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => dout_i(2),
      O => dout_2_OUTPUT_OFF_O1INV_2338
    );
  dout_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => I_REG_OB_q(2),
      O => dout_2_O
    );
  dout_2_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => dout_2_OUTPUT_OTCLK1INV_2334
    );
  I_REG_OB_q_3 : X_FF
    generic map(
      LOC => "PAD103",
      INIT => '0'
    )
    port map (
      I => dout_3_OUTPUT_OFF_O1INV_700,
      CE => VCC,
      CLK => dout_3_OUTPUT_OTCLK1INV_696,
      SET => GND,
      RST => dout_3_OUTPUT_OFF_OFF1_RSTAND_707,
      O => I_REG_OB_q(3)
    );
  dout_3_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_3_OUTPUT_OFF_OFF1_RSTAND_707
    );
  I_REG_OB_q_4 : X_FF
    generic map(
      LOC => "PAD105",
      INIT => '0'
    )
    port map (
      I => dout_4_OUTPUT_OFF_O1INV_724,
      CE => VCC,
      CLK => dout_4_OUTPUT_OTCLK1INV_720,
      SET => GND,
      RST => dout_4_OUTPUT_OFF_OFF1_RSTAND_731,
      O => I_REG_OB_q(4)
    );
  dout_4_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_4_OUTPUT_OFF_OFF1_RSTAND_731
    );
  I_REG_OB_q_5 : X_FF
    generic map(
      LOC => "PAD104",
      INIT => '0'
    )
    port map (
      I => dout_5_OUTPUT_OFF_O1INV_748,
      CE => VCC,
      CLK => dout_5_OUTPUT_OTCLK1INV_744,
      SET => GND,
      RST => dout_5_OUTPUT_OFF_OFF1_RSTAND_755,
      O => I_REG_OB_q(5)
    );
  dout_5_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_5_OUTPUT_OFF_OFF1_RSTAND_755
    );
  I_REG_OB_q_2 : X_FF
    generic map(
      LOC => "PAD102",
      INIT => '0'
    )
    port map (
      I => dout_2_OUTPUT_OFF_O1INV_2338,
      CE => VCC,
      CLK => dout_2_OUTPUT_OTCLK1INV_2334,
      SET => GND,
      RST => dout_2_OUTPUT_OFF_OFF1_RSTAND_2345,
      O => I_REG_OB_q(2)
    );
  dout_2_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_2_OUTPUT_OFF_OFF1_RSTAND_2345
    );
  I_REG_OB_q_9 : X_FF
    generic map(
      LOC => "PAD74",
      INIT => '0'
    )
    port map (
      I => dout_9_OUTPUT_OFF_O1INV_868,
      CE => VCC,
      CLK => dout_9_OUTPUT_OTCLK1INV_864,
      SET => GND,
      RST => dout_9_OUTPUT_OFF_OFF1_RSTAND_875,
      O => I_REG_OB_q(9)
    );
  dout_9_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_9_OUTPUT_OFF_OFF1_RSTAND_875
    );
  I_REG_OB_q_6 : X_FF
    generic map(
      LOC => "PAD101",
      INIT => '0'
    )
    port map (
      I => dout_6_OUTPUT_OFF_O1INV_772,
      CE => VCC,
      CLK => dout_6_OUTPUT_OTCLK1INV_768,
      SET => GND,
      RST => dout_6_OUTPUT_OFF_OFF1_RSTAND_779,
      O => I_REG_OB_q(6)
    );
  dout_6_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_6_OUTPUT_OFF_OFF1_RSTAND_779
    );
  I_REG_OB_q_7 : X_FF
    generic map(
      LOC => "PAD108",
      INIT => '0'
    )
    port map (
      I => dout_7_OUTPUT_OFF_O1INV_802,
      CE => VCC,
      CLK => dout_7_OUTPUT_OTCLK1INV_798,
      SET => GND,
      RST => dout_7_OUTPUT_OFF_OFF1_RSTAND_809,
      O => I_REG_OB_q(7)
    );
  dout_7_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_7_OUTPUT_OFF_OFF1_RSTAND_809
    );
  I_REG_OB_q_8 : X_FF
    generic map(
      LOC => "PAD80",
      INIT => '0'
    )
    port map (
      I => dout_8_OUTPUT_OFF_O1INV_832,
      CE => VCC,
      CLK => dout_8_OUTPUT_OTCLK1INV_828,
      SET => GND,
      RST => dout_8_OUTPUT_OFF_OFF1_RSTAND_839,
      O => I_REG_OB_q(8)
    );
  dout_8_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_8_OUTPUT_OFF_OFF1_RSTAND_839
    );
  I_REG_IB_q_10 : X_FF
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      I => din_i_11_DYMUX_1678,
      CE => VCC,
      CLK => din_i_11_CLKINV_1675,
      SET => GND,
      RST => din_i_11_SRINV_1676,
      O => din_i(10)
    );
  I_REG_IB_q_11 : X_FF
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      I => din_i_11_DXMUX_1686,
      CE => VCC,
      CLK => din_i_11_CLKINV_1675,
      SET => GND,
      RST => din_i_11_SRINV_1676,
      O => din_i(11)
    );
  I_REG_IB_q_12 : X_FF
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      I => din_i_13_DYMUX_1702,
      CE => VCC,
      CLK => din_i_13_CLKINV_1699,
      SET => GND,
      RST => din_i_13_SRINV_1700,
      O => din_i(12)
    );
  I_REG_IB_q_13 : X_FF
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => '0'
    )
    port map (
      I => din_i_13_DXMUX_1710,
      CE => VCC,
      CLK => din_i_13_CLKINV_1699,
      SET => GND,
      RST => din_i_13_SRINV_1700,
      O => din_i(13)
    );
  I_REG_IB_q_20 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      I => din_i_21_DYMUX_1726,
      CE => VCC,
      CLK => din_i_21_CLKINV_1723,
      SET => GND,
      RST => din_i_21_SRINV_1724,
      O => din_i(20)
    );
  I_REG_IB_q_21 : X_FF
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => '0'
    )
    port map (
      I => din_i_21_DXMUX_1734,
      CE => VCC,
      CLK => din_i_21_CLKINV_1723,
      SET => GND,
      RST => din_i_21_SRINV_1724,
      O => din_i(21)
    );
  I_REG_IB_q_14 : X_FF
    generic map(
      LOC => "SLICE_X4Y22",
      INIT => '0'
    )
    port map (
      I => din_i_15_DYMUX_1750,
      CE => VCC,
      CLK => din_i_15_CLKINV_1747,
      SET => GND,
      RST => din_i_15_SRINV_1748,
      O => din_i(14)
    );
  I_REG_OB_q_28 : X_FF
    generic map(
      LOC => "PAD18",
      INIT => '0'
    )
    port map (
      I => dout_28_OUTPUT_OFF_O1INV_1513,
      CE => VCC,
      CLK => dout_28_OUTPUT_OTCLK1INV_1509,
      SET => GND,
      RST => dout_28_OUTPUT_OFF_OFF1_RSTAND_1520,
      O => I_REG_OB_q(28)
    );
  dout_28_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_28_OUTPUT_OFF_OFF1_RSTAND_1520
    );
  I_REG_OB_q_29 : X_FF
    generic map(
      LOC => "PAD17",
      INIT => '0'
    )
    port map (
      I => dout_29_OUTPUT_OFF_O1INV_1549,
      CE => VCC,
      CLK => dout_29_OUTPUT_OTCLK1INV_1545,
      SET => GND,
      RST => dout_29_OUTPUT_OFF_OFF1_RSTAND_1556,
      O => I_REG_OB_q(29)
    );
  dout_29_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_29_OUTPUT_OFF_OFF1_RSTAND_1556
    );
  I_REG_OB_q_26 : X_FF
    generic map(
      LOC => "PAD14",
      INIT => '0'
    )
    port map (
      I => dout_26_OUTPUT_OFF_O1INV_1411,
      CE => VCC,
      CLK => dout_26_OUTPUT_OTCLK1INV_1407,
      SET => GND,
      RST => dout_26_OUTPUT_OFF_OFF1_RSTAND_1418,
      O => I_REG_OB_q(26)
    );
  dout_26_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_26_OUTPUT_OFF_OFF1_RSTAND_1418
    );
  I_REG_OB_q_18 : X_FF
    generic map(
      LOC => "PAD37",
      INIT => '0'
    )
    port map (
      I => dout_18_OUTPUT_OFF_O1INV_1435,
      CE => VCC,
      CLK => dout_18_OUTPUT_OTCLK1INV_1431,
      SET => GND,
      RST => dout_18_OUTPUT_OFF_OFF1_RSTAND_1442,
      O => I_REG_OB_q(18)
    );
  dout_18_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_18_OUTPUT_OFF_OFF1_RSTAND_1442
    );
  I_REG_OB_q_27 : X_FF
    generic map(
      LOC => "PAD15",
      INIT => '0'
    )
    port map (
      I => dout_27_OUTPUT_OFF_O1INV_1459,
      CE => VCC,
      CLK => dout_27_OUTPUT_OTCLK1INV_1455,
      SET => GND,
      RST => dout_27_OUTPUT_OFF_OFF1_RSTAND_1466,
      O => I_REG_OB_q(27)
    );
  dout_27_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_27_OUTPUT_OFF_OFF1_RSTAND_1466
    );
  I_REG_OB_q_19 : X_FF
    generic map(
      LOC => "PAD28",
      INIT => '0'
    )
    port map (
      I => dout_19_OUTPUT_OFF_O1INV_1483,
      CE => VCC,
      CLK => dout_19_OUTPUT_OTCLK1INV_1479,
      SET => GND,
      RST => dout_19_OUTPUT_OFF_OFF1_RSTAND_1490,
      O => I_REG_OB_q(19)
    );
  dout_19_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_19_OUTPUT_OFF_OFF1_RSTAND_1490
    );
  I_REG_OB_q_10 : X_FF
    generic map(
      LOC => "PAD44",
      INIT => '0'
    )
    port map (
      I => dout_10_OUTPUT_OFF_O1INV_1027,
      CE => VCC,
      CLK => dout_10_OUTPUT_OTCLK1INV_1023,
      SET => GND,
      RST => dout_10_OUTPUT_OFF_OFF1_RSTAND_1034,
      O => I_REG_OB_q(10)
    );
  dout_10_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_10_OUTPUT_OFF_OFF1_RSTAND_1034
    );
  I_REG_OB_q_11 : X_FF
    generic map(
      LOC => "PAD76",
      INIT => '0'
    )
    port map (
      I => dout_11_OUTPUT_OFF_O1INV_1051,
      CE => VCC,
      CLK => dout_11_OUTPUT_OTCLK1INV_1047,
      SET => GND,
      RST => dout_11_OUTPUT_OFF_OFF1_RSTAND_1058,
      O => I_REG_OB_q(11)
    );
  dout_11_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_11_OUTPUT_OFF_OFF1_RSTAND_1058
    );
  I_REG_OB_q_20 : X_FF
    generic map(
      LOC => "PAD29",
      INIT => '0'
    )
    port map (
      I => dout_20_OUTPUT_OFF_O1INV_1075,
      CE => VCC,
      CLK => dout_20_OUTPUT_OTCLK1INV_1071,
      SET => GND,
      RST => dout_20_OUTPUT_OFF_OFF1_RSTAND_1082,
      O => I_REG_OB_q(20)
    );
  dout_20_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_20_OUTPUT_OFF_OFF1_RSTAND_1082
    );
  I_REG_OB_q_12 : X_FF
    generic map(
      LOC => "PAD78",
      INIT => '0'
    )
    port map (
      I => dout_12_OUTPUT_OFF_O1INV_1099,
      CE => VCC,
      CLK => dout_12_OUTPUT_OTCLK1INV_1095,
      SET => GND,
      RST => dout_12_OUTPUT_OFF_OFF1_RSTAND_1106,
      O => I_REG_OB_q(12)
    );
  dout_12_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_12_OUTPUT_OFF_OFF1_RSTAND_1106
    );
  I_REG_OB_q_21 : X_FF
    generic map(
      LOC => "PAD40",
      INIT => '0'
    )
    port map (
      I => dout_21_OUTPUT_OFF_O1INV_1123,
      CE => VCC,
      CLK => dout_21_OUTPUT_OTCLK1INV_1119,
      SET => GND,
      RST => dout_21_OUTPUT_OFF_OFF1_RSTAND_1130,
      O => I_REG_OB_q(21)
    );
  dout_21_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_21_OUTPUT_OFF_OFF1_RSTAND_1130
    );
  I_REG_OB_q_13 : X_FF
    generic map(
      LOC => "PAD43",
      INIT => '0'
    )
    port map (
      I => dout_13_OUTPUT_OFF_O1INV_1147,
      CE => VCC,
      CLK => dout_13_OUTPUT_OTCLK1INV_1143,
      SET => GND,
      RST => dout_13_OUTPUT_OFF_OFF1_RSTAND_1154,
      O => I_REG_OB_q(13)
    );
  dout_13_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_13_OUTPUT_OFF_OFF1_RSTAND_1154
    );
  I_REG_OB_q_30 : X_FF
    generic map(
      LOC => "PAD8",
      INIT => '0'
    )
    port map (
      I => dout_30_OUTPUT_OFF_O1INV_1171,
      CE => VCC,
      CLK => dout_30_OUTPUT_OTCLK1INV_1167,
      SET => GND,
      RST => dout_30_OUTPUT_OFF_OFF1_RSTAND_1178,
      O => I_REG_OB_q(30)
    );
  dout_30_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_30_OUTPUT_OFF_OFF1_RSTAND_1178
    );
  I_REG_OB_q_22 : X_FF
    generic map(
      LOC => "PAD16",
      INIT => '0'
    )
    port map (
      I => dout_22_OUTPUT_OFF_O1INV_1195,
      CE => VCC,
      CLK => dout_22_OUTPUT_OTCLK1INV_1191,
      SET => GND,
      RST => dout_22_OUTPUT_OFF_OFF1_RSTAND_1202,
      O => I_REG_OB_q(22)
    );
  dout_22_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD16",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_22_OUTPUT_OFF_OFF1_RSTAND_1202
    );
  I_REG_OB_q_14 : X_FF
    generic map(
      LOC => "PAD107",
      INIT => '0'
    )
    port map (
      I => dout_14_OUTPUT_OFF_O1INV_1219,
      CE => VCC,
      CLK => dout_14_OUTPUT_OTCLK1INV_1215,
      SET => GND,
      RST => dout_14_OUTPUT_OFF_OFF1_RSTAND_1226,
      O => I_REG_OB_q(14)
    );
  dout_14_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_14_OUTPUT_OFF_OFF1_RSTAND_1226
    );
  I_REG_OB_q_31 : X_FF
    generic map(
      LOC => "PAD10",
      INIT => '0'
    )
    port map (
      I => dout_31_OUTPUT_OFF_O1INV_1243,
      CE => VCC,
      CLK => dout_31_OUTPUT_OTCLK1INV_1239,
      SET => GND,
      RST => dout_31_OUTPUT_OFF_OFF1_RSTAND_1250,
      O => I_REG_OB_q(31)
    );
  dout_31_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_31_OUTPUT_OFF_OFF1_RSTAND_1250
    );
  I_REG_OB_q_23 : X_FF
    generic map(
      LOC => "PAD32",
      INIT => '0'
    )
    port map (
      I => dout_23_OUTPUT_OFF_O1INV_1267,
      CE => VCC,
      CLK => dout_23_OUTPUT_OTCLK1INV_1263,
      SET => GND,
      RST => dout_23_OUTPUT_OFF_OFF1_RSTAND_1274,
      O => I_REG_OB_q(23)
    );
  dout_23_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_23_OUTPUT_OFF_OFF1_RSTAND_1274
    );
  I_REG_OB_q_15 : X_FF
    generic map(
      LOC => "PAD111",
      INIT => '0'
    )
    port map (
      I => dout_15_OUTPUT_OFF_O1INV_1291,
      CE => VCC,
      CLK => dout_15_OUTPUT_OTCLK1INV_1287,
      SET => GND,
      RST => dout_15_OUTPUT_OFF_OFF1_RSTAND_1298,
      O => I_REG_OB_q(15)
    );
  dout_15_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_15_OUTPUT_OFF_OFF1_RSTAND_1298
    );
  I_REG_OB_q_24 : X_FF
    generic map(
      LOC => "PAD27",
      INIT => '0'
    )
    port map (
      I => dout_24_OUTPUT_OFF_O1INV_1315,
      CE => VCC,
      CLK => dout_24_OUTPUT_OTCLK1INV_1311,
      SET => GND,
      RST => dout_24_OUTPUT_OFF_OFF1_RSTAND_1322,
      O => I_REG_OB_q(24)
    );
  dout_24_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_24_OUTPUT_OFF_OFF1_RSTAND_1322
    );
  I_REG_OB_q_16 : X_FF
    generic map(
      LOC => "PAD106",
      INIT => '0'
    )
    port map (
      I => dout_16_OUTPUT_OFF_O1INV_1339,
      CE => VCC,
      CLK => dout_16_OUTPUT_OTCLK1INV_1335,
      SET => GND,
      RST => dout_16_OUTPUT_OFF_OFF1_RSTAND_1346,
      O => I_REG_OB_q(16)
    );
  dout_16_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_16_OUTPUT_OFF_OFF1_RSTAND_1346
    );
  I_REG_OB_q_25 : X_FF
    generic map(
      LOC => "PAD24",
      INIT => '0'
    )
    port map (
      I => dout_25_OUTPUT_OFF_O1INV_1363,
      CE => VCC,
      CLK => dout_25_OUTPUT_OTCLK1INV_1359,
      SET => GND,
      RST => dout_25_OUTPUT_OFF_OFF1_RSTAND_1370,
      O => I_REG_OB_q(25)
    );
  dout_25_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_25_OUTPUT_OFF_OFF1_RSTAND_1370
    );
  I_REG_OB_q_17 : X_FF
    generic map(
      LOC => "PAD47",
      INIT => '0'
    )
    port map (
      I => dout_17_OUTPUT_OFF_O1INV_1387,
      CE => VCC,
      CLK => dout_17_OUTPUT_OTCLK1INV_1383,
      SET => GND,
      RST => dout_17_OUTPUT_OFF_OFF1_RSTAND_1394,
      O => I_REG_OB_q(17)
    );
  dout_17_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_17_OUTPUT_OFF_OFF1_RSTAND_1394
    );
  I_REG_IB_q_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => '0'
    )
    port map (
      I => din_i_5_DXMUX_1998,
      CE => VCC,
      CLK => din_i_5_CLKINV_1987,
      SET => GND,
      RST => din_i_5_SRINV_1988,
      O => din_i(5)
    );
  I_REG_IB_q_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y24",
      INIT => '0'
    )
    port map (
      I => din_i_7_DYMUX_2014,
      CE => VCC,
      CLK => din_i_7_CLKINV_2011,
      SET => GND,
      RST => din_i_7_SRINV_2012,
      O => din_i(6)
    );
  I_REG_IB_q_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y24",
      INIT => '0'
    )
    port map (
      I => din_i_7_DXMUX_2022,
      CE => VCC,
      CLK => din_i_7_CLKINV_2011,
      SET => GND,
      RST => din_i_7_SRINV_2012,
      O => din_i(7)
    );
  I_REG_IB_q_8 : X_FF
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => '0'
    )
    port map (
      I => din_i_9_DYMUX_2038,
      CE => VCC,
      CLK => din_i_9_CLKINV_2035,
      SET => GND,
      RST => din_i_9_SRINV_2036,
      O => din_i(8)
    );
  I_REG_IB_q_9 : X_FF
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => '0'
    )
    port map (
      I => din_i_9_DXMUX_2046,
      CE => VCC,
      CLK => din_i_9_CLKINV_2035,
      SET => GND,
      RST => din_i_9_SRINV_2036,
      O => din_i(9)
    );
  I_REG_AB_q_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y27",
      INIT => '0'
    )
    port map (
      I => addr_i_1_DYMUX_2062,
      CE => VCC,
      CLK => addr_i_1_CLKINV_2059,
      SET => GND,
      RST => addr_i_1_SRINV_2060,
      O => addr_i(0)
    );
  I_REG_AB_q_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y27",
      INIT => '0'
    )
    port map (
      I => addr_i_1_DXMUX_2070,
      CE => VCC,
      CLK => addr_i_1_CLKINV_2059,
      SET => GND,
      RST => addr_i_1_SRINV_2060,
      O => addr_i(1)
    );
  I_REG_IB_q_15 : X_FF
    generic map(
      LOC => "SLICE_X4Y22",
      INIT => '0'
    )
    port map (
      I => din_i_15_DXMUX_1758,
      CE => VCC,
      CLK => din_i_15_CLKINV_1747,
      SET => GND,
      RST => din_i_15_SRINV_1748,
      O => din_i(15)
    );
  I_REG_IB_q_22 : X_FF
    generic map(
      LOC => "SLICE_X5Y28",
      INIT => '0'
    )
    port map (
      I => din_i_23_DYMUX_1774,
      CE => VCC,
      CLK => din_i_23_CLKINV_1771,
      SET => GND,
      RST => din_i_23_SRINV_1772,
      O => din_i(22)
    );
  I_REG_IB_q_23 : X_FF
    generic map(
      LOC => "SLICE_X5Y28",
      INIT => '0'
    )
    port map (
      I => din_i_23_DXMUX_1782,
      CE => VCC,
      CLK => din_i_23_CLKINV_1771,
      SET => GND,
      RST => din_i_23_SRINV_1772,
      O => din_i(23)
    );
  I_REG_IB_q_30 : X_FF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => din_i_31_DYMUX_1798,
      CE => VCC,
      CLK => din_i_31_CLKINV_1795,
      SET => GND,
      RST => din_i_31_SRINV_1796,
      O => din_i(30)
    );
  I_REG_IB_q_31 : X_FF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => din_i_31_DXMUX_1806,
      CE => VCC,
      CLK => din_i_31_CLKINV_1795,
      SET => GND,
      RST => din_i_31_SRINV_1796,
      O => din_i(31)
    );
  I_REG_IB_q_16 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      I => din_i_17_DYMUX_1822,
      CE => VCC,
      CLK => din_i_17_CLKINV_1819,
      SET => GND,
      RST => din_i_17_SRINV_1820,
      O => din_i(16)
    );
  I_REG_IB_q_17 : X_FF
    generic map(
      LOC => "SLICE_X7Y24",
      INIT => '0'
    )
    port map (
      I => din_i_17_DXMUX_1830,
      CE => VCC,
      CLK => din_i_17_CLKINV_1819,
      SET => GND,
      RST => din_i_17_SRINV_1820,
      O => din_i(17)
    );
  I_REG_IB_q_28 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => din_i_29_DYMUX_1918,
      CE => VCC,
      CLK => din_i_29_CLKINV_1915,
      SET => GND,
      RST => din_i_29_SRINV_1916,
      O => din_i(28)
    );
  I_REG_IB_q_29 : X_FF
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => '0'
    )
    port map (
      I => din_i_29_DXMUX_1926,
      CE => VCC,
      CLK => din_i_29_CLKINV_1915,
      SET => GND,
      RST => din_i_29_SRINV_1916,
      O => din_i(29)
    );
  I_REG_IB_q_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y16",
      INIT => '0'
    )
    port map (
      I => din_i_1_DYMUX_1942,
      CE => VCC,
      CLK => din_i_1_CLKINV_1939,
      SET => GND,
      RST => din_i_1_SRINV_1940,
      O => din_i(0)
    );
  I_REG_IB_q_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y16",
      INIT => '0'
    )
    port map (
      I => din_i_1_DXMUX_1950,
      CE => VCC,
      CLK => din_i_1_CLKINV_1939,
      SET => GND,
      RST => din_i_1_SRINV_1940,
      O => din_i(1)
    );
  I_REG_IB_q_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y17",
      INIT => '0'
    )
    port map (
      I => din_i_3_DYMUX_1966,
      CE => VCC,
      CLK => din_i_3_CLKINV_1963,
      SET => GND,
      RST => din_i_3_SRINV_1964,
      O => din_i(2)
    );
  I_REG_IB_q_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y17",
      INIT => '0'
    )
    port map (
      I => din_i_3_DXMUX_1974,
      CE => VCC,
      CLK => din_i_3_CLKINV_1963,
      SET => GND,
      RST => din_i_3_SRINV_1964,
      O => din_i(3)
    );
  I_REG_IB_q_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => '0'
    )
    port map (
      I => din_i_5_DYMUX_1990,
      CE => VCC,
      CLK => din_i_5_CLKINV_1987,
      SET => GND,
      RST => din_i_5_SRINV_1988,
      O => din_i(4)
    );
  I_REG_IB_q_24 : X_FF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      I => din_i_25_DYMUX_1846,
      CE => VCC,
      CLK => din_i_25_CLKINV_1843,
      SET => GND,
      RST => din_i_25_SRINV_1844,
      O => din_i(24)
    );
  I_REG_IB_q_25 : X_FF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      I => din_i_25_DXMUX_1854,
      CE => VCC,
      CLK => din_i_25_CLKINV_1843,
      SET => GND,
      RST => din_i_25_SRINV_1844,
      O => din_i(25)
    );
  I_REG_IB_q_18 : X_FF
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => '0'
    )
    port map (
      I => din_i_19_DYMUX_1870,
      CE => VCC,
      CLK => din_i_19_CLKINV_1867,
      SET => GND,
      RST => din_i_19_SRINV_1868,
      O => din_i(18)
    );
  I_REG_IB_q_19 : X_FF
    generic map(
      LOC => "SLICE_X6Y28",
      INIT => '0'
    )
    port map (
      I => din_i_19_DXMUX_1878,
      CE => VCC,
      CLK => din_i_19_CLKINV_1867,
      SET => GND,
      RST => din_i_19_SRINV_1868,
      O => din_i(19)
    );
  I_REG_IB_q_26 : X_FF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      I => din_i_27_DYMUX_1894,
      CE => VCC,
      CLK => din_i_27_CLKINV_1891,
      SET => GND,
      RST => din_i_27_SRINV_1892,
      O => din_i(26)
    );
  I_REG_IB_q_27 : X_FF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      I => din_i_27_DXMUX_1902,
      CE => VCC,
      CLK => din_i_27_CLKINV_1891,
      SET => GND,
      RST => din_i_27_SRINV_1892,
      O => din_i(27)
    );
  I_REG_AB_q_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y22",
      INIT => '0'
    )
    port map (
      I => addr_i_3_DYMUX_2086,
      CE => VCC,
      CLK => addr_i_3_CLKINV_2083,
      SET => GND,
      RST => addr_i_3_SRINV_2084,
      O => addr_i(2)
    );
  I_REG_AB_q_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y22",
      INIT => '0'
    )
    port map (
      I => addr_i_3_DXMUX_2094,
      CE => VCC,
      CLK => addr_i_3_CLKINV_2083,
      SET => GND,
      RST => addr_i_3_SRINV_2084,
      O => addr_i(3)
    );
  I_REG_AB_q_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y25",
      INIT => '0'
    )
    port map (
      I => addr_i_5_DYMUX_2110,
      CE => VCC,
      CLK => addr_i_5_CLKINV_2107,
      SET => GND,
      RST => addr_i_5_SRINV_2108,
      O => addr_i(4)
    );
  I_REG_AB_q_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y25",
      INIT => '0'
    )
    port map (
      I => addr_i_5_DXMUX_2118,
      CE => VCC,
      CLK => addr_i_5_CLKINV_2107,
      SET => GND,
      RST => addr_i_5_SRINV_2108,
      O => addr_i(5)
    );
  I_REG_AB_q_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => addr_i_7_DYMUX_2134,
      CE => VCC,
      CLK => addr_i_7_CLKINV_2131,
      SET => GND,
      RST => addr_i_7_SRINV_2132,
      O => addr_i(6)
    );
  I_REG_AB_q_7 : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => addr_i_7_DXMUX_2142,
      CE => VCC,
      CLK => addr_i_7_CLKINV_2131,
      SET => GND,
      RST => addr_i_7_SRINV_2132,
      O => addr_i(7)
    );
  I_REG_OB_q_0 : X_FF
    generic map(
      LOC => "PAD110",
      INIT => '0'
    )
    port map (
      I => dout_0_OUTPUT_OFF_O1INV_2290,
      CE => VCC,
      CLK => dout_0_OUTPUT_OTCLK1INV_2286,
      SET => GND,
      RST => dout_0_OUTPUT_OFF_OFF1_RSTAND_2297,
      O => I_REG_OB_q(0)
    );
  dout_0_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_0_OUTPUT_OFF_OFF1_RSTAND_2297
    );
  I_REG_OB_q_1 : X_FF
    generic map(
      LOC => "PAD109",
      INIT => '0'
    )
    port map (
      I => dout_1_OUTPUT_OFF_O1INV_2314,
      CE => VCC,
      CLK => dout_1_OUTPUT_OTCLK1INV_2310,
      SET => GND,
      RST => dout_1_OUTPUT_OFF_OFF1_RSTAND_2321,
      O => I_REG_OB_q(1)
    );
  dout_1_OUTPUT_OFF_OFF1_RSTAND : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 526 ps
    )
    port map (
      I => reset_IBUF_563,
      O => dout_1_OUTPUT_OFF_OFF1_RSTAND_2321
    );
  I_REG_AB_q_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      I => addr_i_9_DYMUX_2158,
      CE => VCC,
      CLK => addr_i_9_CLKINV_2155,
      SET => GND,
      RST => addr_i_9_SRINV_2156,
      O => addr_i(8)
    );
  I_REG_AB_q_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y23",
      INIT => '0'
    )
    port map (
      I => addr_i_9_DXMUX_2166,
      CE => VCC,
      CLK => addr_i_9_CLKINV_2155,
      SET => GND,
      RST => addr_i_9_SRINV_2156,
      O => addr_i(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_CLK : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_CLK
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(9),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(8),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(8)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(7),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(7)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(6),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(6)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(5),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(5)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(4),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(4)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(3),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(3)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(2),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(2)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(1),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_ADDR_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(0),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_ADDR(0)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(0),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(0)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(1),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(2),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(2)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(3),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(3)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(4),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(4)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(5),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(5)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(6),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(6)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(7),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(7)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(8),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(8)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(9),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_10_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(10),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(10)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_11_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(11),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(11)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_12_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(12),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(12)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DI_13_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(13),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DI(13)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DIP_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(16),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DIP(0)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir1_DIP_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(17),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir1_DIP(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_CLK : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_CLK
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(9),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(9)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(8),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(8)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(7),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(7)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(6),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(6)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(5),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(5)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(4),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(4)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(3),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(3)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(2),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(2)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(1),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(1)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_ADDR_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => addr_i(0),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_ADDR(0)
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(18),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_0_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(19),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_1_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(22),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_4_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(23),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_5_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_8_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(26),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_8_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_12_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(30),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_12_Q
    );
  NlwBufferBlock_I_BRAM_Mram_ram_ir2_DI_13_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => din_i(31),
      O => NlwBufferSignal_I_BRAM_Mram_ram_ir2_DI_13_Q
    );
  NlwBlock_ram_piped_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_ram_piped_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

