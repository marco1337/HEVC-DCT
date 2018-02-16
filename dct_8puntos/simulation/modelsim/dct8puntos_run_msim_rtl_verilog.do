transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos/dct8puntos.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos/bloque.v}
vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos/shift_add8.v}

vlog -vlog01compat -work work +incdir+C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos {C:/Users/Usuario/Documents/Tesis/codigo/Nov18_sabado/Nov24_3/dct_8puntos/dct_8puntos_test.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  dct_8puntos_test

add wave *
view structure
view signals
run -all
