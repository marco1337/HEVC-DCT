transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/arquitectura.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/bloque.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/dct8puntos.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/dct16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/dct32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/fsm.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/scaling1.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/scaling2.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/shift_add8.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/shift_add16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/shift_add32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/transpuesta.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/idct32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/idct16.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/idct8.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/idct4.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/arquitectura/arquitectura_test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  arquitectura_test

add wave *
view structure
view signals
run -all
