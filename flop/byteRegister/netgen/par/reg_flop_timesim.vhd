--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: reg_flop_timesim.vhd
-- /___/   /\     Timestamp: Fri Nov  8 10:42:02 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf reg_flop.pcf -rpw 100 -tpw 0 -ar Structure -tm reg_flop -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim reg_flop.ncd reg_flop_timesim.vhd 
-- Device	: 6slx4tqg144-3 (PRODUCTION 1.22 2012-07-09)
-- Input file	: reg_flop.ncd
-- Output file	: /home/zel/elgf2/projects/flop/byteRegister/netgen/par/reg_flop_timesim.vhd
-- # of Entities	: 1
-- Design Name	: reg_flop
-- Xilinx	: /usr4/Xilinx/14.2/ISE_DS/ISE/
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

entity reg_flop is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    d : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    q : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end reg_flop;

architecture Structure of reg_flop is
  signal d_7_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_6_I_REG_q_113 : STD_LOGIC; 
  signal GEN_REG_7_I_REG_q_114 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal d_0_IBUF_0 : STD_LOGIC; 
  signal d_1_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_0_I_REG_q_119 : STD_LOGIC; 
  signal d_2_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_1_I_REG_q_121 : STD_LOGIC; 
  signal d_3_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_2_I_REG_q_123 : STD_LOGIC; 
  signal d_4_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_3_I_REG_q_125 : STD_LOGIC; 
  signal d_5_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_4_I_REG_q_127 : STD_LOGIC; 
  signal d_6_IBUF_0 : STD_LOGIC; 
  signal GEN_REG_5_I_REG_q_129 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal d_7_IBUF_1 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_8 : STD_LOGIC; 
  signal reset_IBUF_11 : STD_LOGIC; 
  signal d_0_IBUF_14 : STD_LOGIC; 
  signal d_1_IBUF_17 : STD_LOGIC; 
  signal d_2_IBUF_22 : STD_LOGIC; 
  signal d_3_IBUF_27 : STD_LOGIC; 
  signal d_4_IBUF_32 : STD_LOGIC; 
  signal d_5_IBUF_37 : STD_LOGIC; 
  signal d_6_IBUF_42 : STD_LOGIC; 
  signal ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_0_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_0_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_1_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_1_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_2_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_2_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_3_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_3_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_4_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_4_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal GEN_REG_5_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0 : STD_LOGIC; 
  signal GEN_REG_5_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT : STD_LOGIC; 
  signal NlwBufferSignal_q_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_q_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_7_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_6_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_6_I_REG_q_IN : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_0_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_1_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_1_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_2_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_2_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_3_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_3_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_4_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_4_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_5_INA : STD_LOGIC; 
  signal NlwBufferSignal_GEN_REG_5_I_REG_q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_1_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_2_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_3_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_4_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_5_IB_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp2_D2OFFBYP_SRC_6_IB_UNCONNECTED : STD_LOGIC; 
begin
  d_7_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_7_IBUF_1,
      I => d(7)
    );
  ProtoComp0_IMUX : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_7_IBUF_1,
      O => d_7_IBUF_0
    );
  q_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD147"
    )
    port map (
      I => NlwBufferSignal_q_6_OBUF_I,
      O => q(6)
    );
  q_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD148"
    )
    port map (
      I => NlwBufferSignal_q_7_OBUF_I,
      O => q(7)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_8,
      I => clk
    );
  ProtoComp0_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_8,
      O => clk_BUFGP_IBUFG_0
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => reset_IBUF_11,
      I => reset
    );
  ProtoComp0_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => reset_IBUF_11,
      O => reset_IBUF_0
    );
  d_0_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_0_IBUF_14,
      I => d(0)
    );
  ProtoComp0_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_0_IBUF_14,
      O => d_0_IBUF_0
    );
  d_1_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_1_IBUF_17,
      I => d(1)
    );
  ProtoComp0_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_1_IBUF_17,
      O => d_1_IBUF_0
    );
  q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_q_0_OBUF_I,
      O => q(0)
    );
  d_2_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_2_IBUF_22,
      I => d(2)
    );
  ProtoComp0_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_2_IBUF_22,
      O => d_2_IBUF_0
    );
  q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_q_1_OBUF_I,
      O => q(1)
    );
  d_3_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_3_IBUF_27,
      I => d(3)
    );
  ProtoComp0_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_3_IBUF_27,
      O => d_3_IBUF_0
    );
  q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_q_2_OBUF_I,
      O => q(2)
    );
  d_4_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_4_IBUF_32,
      I => d(4)
    );
  ProtoComp0_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_4_IBUF_32,
      O => d_4_IBUF_0
    );
  q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_q_3_OBUF_I,
      O => q(3)
    );
  d_5_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_5_IBUF_37,
      I => d(5)
    );
  ProtoComp0_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_5_IBUF_37,
      O => d_5_IBUF_0
    );
  q_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD145"
    )
    port map (
      I => NlwBufferSignal_q_4_OBUF_I,
      O => q(4)
    );
  d_6_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 115 ps
    )
    port map (
      O => d_6_IBUF_42,
      I => d(6)
    );
  ProtoComp0_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 115 ps
    )
    port map (
      I => d_6_IBUF_42,
      O => d_6_IBUF_0
    );
  q_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD146"
    )
    port map (
      I => NlwBufferSignal_q_5_OBUF_I,
      O => q(5)
    );
  GEN_REG_7_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X1Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_7_I_REG_q_CLK,
      I => ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_7_I_REG_q_114,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC : X_MUX2
    generic map(
      LOC => "ILOGIC_X1Y3"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_IB_UNCONNECTED,
      O => ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND : X_ZERO
    generic map(
      LOC => "ILOGIC_X1Y3"
    )
    port map (
      O => ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_6_I_REG_q : X_FF
    generic map(
      LOC => "OLOGIC_X0Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_6_I_REG_q_CLK,
      I => NlwBufferSignal_GEN_REG_6_I_REG_q_IN,
      O => GEN_REG_6_I_REG_q_113,
      SET => GND,
      RST => reset_IBUF_0
    );
  GEN_REG_0_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X6Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_0_I_REG_q_CLK,
      I => GEN_REG_0_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_0_I_REG_q_119,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_1 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y1"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_1_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_1_IB_UNCONNECTED,
      O => GEN_REG_0_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_0_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_1 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y1"
    )
    port map (
      O => GEN_REG_0_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_1_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X6Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_1_I_REG_q_CLK,
      I => GEN_REG_1_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_1_I_REG_q_121,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_2 : X_MUX2
    generic map(
      LOC => "ILOGIC_X6Y0"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_2_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_2_IB_UNCONNECTED,
      O => GEN_REG_1_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_1_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_2 : X_ZERO
    generic map(
      LOC => "ILOGIC_X6Y0"
    )
    port map (
      O => GEN_REG_1_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_2_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X2Y1",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_2_I_REG_q_CLK,
      I => GEN_REG_2_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_2_I_REG_q_123,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_3 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y1"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_3_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_3_IB_UNCONNECTED,
      O => GEN_REG_2_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_2_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_3 : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y1"
    )
    port map (
      O => GEN_REG_2_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_3_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X2Y0",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_3_I_REG_q_CLK,
      I => GEN_REG_3_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_3_I_REG_q_125,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_4 : X_MUX2
    generic map(
      LOC => "ILOGIC_X2Y0"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_4_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_4_IB_UNCONNECTED,
      O => GEN_REG_3_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_3_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_4 : X_ZERO
    generic map(
      LOC => "ILOGIC_X2Y0"
    )
    port map (
      O => GEN_REG_3_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_4_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X3Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_4_I_REG_q_CLK,
      I => GEN_REG_4_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_4_I_REG_q_127,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_5 : X_MUX2
    generic map(
      LOC => "ILOGIC_X3Y3"
    )
    port map (
      IA => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_5_INA,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_5_IB_UNCONNECTED,
      O => GEN_REG_4_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_4_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_5 : X_ZERO
    generic map(
      LOC => "ILOGIC_X3Y3"
    )
    port map (
      O => GEN_REG_4_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  GEN_REG_5_I_REG_q : X_FF
    generic map(
      LOC => "ILOGIC_X3Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_GEN_REG_5_I_REG_q_CLK,
      I => GEN_REG_5_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      O => GEN_REG_5_I_REG_q_129,
      SET => GND,
      RST => reset_IBUF_0
    );
  ProtoComp2_D2OFFBYP_SRC_6 : X_MUX2
    generic map(
      LOC => "ILOGIC_X3Y2"
    )
    port map (
      IA => d_5_IBUF_0,
      IB => NLW_ProtoComp2_D2OFFBYP_SRC_6_IB_UNCONNECTED,
      O => GEN_REG_5_I_REG_q_ProtoComp2_D2OFFBYP_SRC_OUT,
      SEL => GEN_REG_5_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  ProtoComp2_D2OBYPSEL_GND_6 : X_ZERO
    generic map(
      LOC => "ILOGIC_X3Y2"
    )
    port map (
      O => GEN_REG_5_I_REG_q_ProtoComp2_D2OBYPSEL_GND_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  NlwBufferBlock_q_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_6_I_REG_q_113,
      O => NlwBufferSignal_q_6_OBUF_I
    );
  NlwBufferBlock_q_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_7_I_REG_q_114,
      O => NlwBufferSignal_q_7_OBUF_I
    );
  NlwBufferBlock_q_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_0_I_REG_q_119,
      O => NlwBufferSignal_q_0_OBUF_I
    );
  NlwBufferBlock_q_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_1_I_REG_q_121,
      O => NlwBufferSignal_q_1_OBUF_I
    );
  NlwBufferBlock_q_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_2_I_REG_q_123,
      O => NlwBufferSignal_q_2_OBUF_I
    );
  NlwBufferBlock_q_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_3_I_REG_q_125,
      O => NlwBufferSignal_q_3_OBUF_I
    );
  NlwBufferBlock_q_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_4_I_REG_q_127,
      O => NlwBufferSignal_q_4_OBUF_I
    );
  NlwBufferBlock_q_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => GEN_REG_5_I_REG_q_129,
      O => NlwBufferSignal_q_5_OBUF_I
    );
  NlwBufferBlock_GEN_REG_7_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_7_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_7_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_INA
    );
  NlwBufferBlock_GEN_REG_6_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_6_I_REG_q_CLK
    );
  NlwBufferBlock_GEN_REG_6_I_REG_q_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_6_IBUF_0,
      O => NlwBufferSignal_GEN_REG_6_I_REG_q_IN
    );
  NlwBufferBlock_GEN_REG_0_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_0_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_1_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_0_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_1_INA
    );
  NlwBufferBlock_GEN_REG_1_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_1_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_2_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_1_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_2_INA
    );
  NlwBufferBlock_GEN_REG_2_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_2_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_3_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_2_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_3_INA
    );
  NlwBufferBlock_GEN_REG_3_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_3_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_4_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_3_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_4_INA
    );
  NlwBufferBlock_GEN_REG_4_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_4_I_REG_q_CLK
    );
  NlwBufferBlock_ProtoComp2_D2OFFBYP_SRC_5_INA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => d_4_IBUF_0,
      O => NlwBufferSignal_ProtoComp2_D2OFFBYP_SRC_5_INA
    );
  NlwBufferBlock_GEN_REG_5_I_REG_q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_GEN_REG_5_I_REG_q_CLK
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBlock_reg_flop_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_reg_flop_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

