onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dct_8puntos_test/clk
add wave -noupdate /dct_8puntos_test/load
add wave -noupdate /dct_8puntos_test/rst
add wave -noupdate -radix decimal /dct_8puntos_test/x0
add wave -noupdate -radix decimal /dct_8puntos_test/x1
add wave -noupdate -radix decimal /dct_8puntos_test/x2
add wave -noupdate -radix decimal /dct_8puntos_test/x3
add wave -noupdate -radix decimal /dct_8puntos_test/x4
add wave -noupdate -radix decimal /dct_8puntos_test/x5
add wave -noupdate -radix decimal /dct_8puntos_test/x6
add wave -noupdate -radix decimal /dct_8puntos_test/x7
add wave -noupdate -radix decimal /dct_8puntos_test/y0
add wave -noupdate -radix decimal /dct_8puntos_test/y1
add wave -noupdate -radix decimal /dct_8puntos_test/y2
add wave -noupdate -radix decimal /dct_8puntos_test/y3
add wave -noupdate -radix decimal /dct_8puntos_test/y4
add wave -noupdate -radix decimal /dct_8puntos_test/y5
add wave -noupdate -radix decimal /dct_8puntos_test/y6
add wave -noupdate -radix decimal /dct_8puntos_test/y7
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x0_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x1_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x2_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x3_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x4_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x5_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x6_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/x7_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a0_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a1_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a2_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a3_reg
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a0_next
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a1_next
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a2_next
add wave -noupdate -radix decimal /dct_8puntos_test/dct8puntos_inst/a3_next
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5295 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 40
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {37882 ps}
