transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/myAnd.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/thirty_two_bit_cla.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/setLessThan.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/myXor.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/myOr.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/myNor.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/myMod.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/mux8x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/mux2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/mod_dp.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/mod_cu.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/four_bit_cla.v}
vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/alu32.v}

vlog -vlog01compat -work work +incdir+C:/Users/ahmet/hw2 {C:/Users/ahmet/hw2/alu32_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  alu32_testbench

add wave *
view structure
view signals
run -all
