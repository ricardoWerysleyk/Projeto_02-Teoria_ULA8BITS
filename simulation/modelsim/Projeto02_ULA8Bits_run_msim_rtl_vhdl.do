transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/halfAdder.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/FullAdder1Bit.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/Projeto02_ULA8Bits.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/FullAdder4Bit.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/FullAdder8Bit.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SeletorAritmetico.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/ExtensorAtitmetico.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/Multiplexador1Bit.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SHL8bits1.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SHL8bits2.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SHL8bits4.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SHL8bitsBarrel.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SWA.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SWP.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/SHR8bitsBarrel.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/Multiplicador.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/seg7.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/addc.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/bbcd.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/binbcd.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/Multiplexer16To1.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/MUX4.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/MUX8.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/Multiplexer16To8Bits.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/ULA8Bits.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/portAND.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/portOR.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/portNOT.vhd}
vcom -93 -work work {C:/Users/werys/Documents/Quartus_Projects/ULA/portXOR.vhd}

