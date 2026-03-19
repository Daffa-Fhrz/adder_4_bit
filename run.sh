#!/bin/bash
mkdir -p sim
iverilog -o sim/adder_4bit.out rtl/adder_4bit.v tb/adder_4bit_tb.v
vvp sim/adder_4bit.out
gtkwave sim/waveform.vcd