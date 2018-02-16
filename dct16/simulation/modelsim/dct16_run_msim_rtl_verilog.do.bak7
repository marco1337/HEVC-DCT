transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/dct16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/bloque.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/dct8puntos.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/shift_add16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/shift_add8.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16 {C:/Users/Usuario/Documents/Tesis/codigo/7Nov/dct16/dct16_test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  dct16_test

add wave *
view structure
view signals
run -all
