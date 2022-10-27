# cleanup

rm -rf obj_dir
rm -f counter.vcd

# run Verilator to trnanslate Verilog into C++, incuding the C++ testbench
verilator -Wall --cc --trace counter.sv --exe counter_tb.cpp

# Build C++ project via make automatically generated by Verilator
make -j -C obj_dir/ -f Vcounter.mk Vcounter

# run exec
obj_dir/Vcounter