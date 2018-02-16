transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/bloque.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/dct8puntos.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/dct16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/dct32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/shift_add8.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/shift_add16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/shift_add32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/transpuesta.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/dct.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/fsm.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/scaling1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/scaling2.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/DCT/dct_test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  dct_test

add wave *
view structure
view signals
run -all
