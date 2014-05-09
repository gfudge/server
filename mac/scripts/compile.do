exec rm -rf mti_work
vlib mti_work
vmap work mti_work
vcom rtl/mac_package.vhd
vcom rtl/param_reg.vhd
vcom rtl/param_mult.vhd
vcom rtl/param_add.vhd
vcom rtl/param_mac.vhd
vcom rtl/tb_param_mac.vhd
quit
