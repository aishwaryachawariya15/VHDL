transcript off
vcom full_adder_2.vhd
vcom test_full_adder_2.vhd

vsim test_full_adder_2
add wave sim:/test_full_adder_2/dev_to_test/*

run 80 ns