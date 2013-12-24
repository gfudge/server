exec rm -rf mti_work
vlib mti_work
vmap work mti_work
vcom rtl/dff.vhd
vcom rtl/register_flop.vhd
vcom rtl/tb_reg_flop.vhd
quit
