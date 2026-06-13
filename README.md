# 4-Bit Up Counter in SystemVerilog

## 📌 Overview

This project implements a 4-bit synchronous up counter using SystemVerilog. The counter increments by 1 on every positive edge of the clock and resets to 0 when the reset signal is asserted.

The design was verified using a custom SystemVerilog testbench and simulated with Icarus Verilog and GTKWave.

---

## 🚀 Features

- 4-bit synchronous up counter
- Asynchronous active-high reset
- Written in SystemVerilog
- RTL simulation using Icarus Verilog
- Waveform verification using GTKWave
- Beginner-friendly RTL design project

---

## 📂 Project Structure

text counter_sv.sv        -> RTL Design tb_counter_sv.sv     -> Testbench counter_sv.vcd       -> Simulation Waveform README.md            -> Project Documentation 

---

## 🛠️ RTL Design

The counter increments on every positive edge of the clock.

systemverilog always_ff @(posedge clk or posedge rst) begin     if(rst)         count <= 4'b0000;     else         count <= count + 1; end 

---

## 🧪 Simulation

### Compile

bash iverilog -g2012 -o counter_sv.vvp counter_sv.sv tb_counter_sv.sv 

### Run

bash vvp counter_sv.vvp 

### View Waveform

bash gtkwave counter_sv.vcd 

---

## 📊 Expected Output

After reset is released, the counter increments as:

text 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 ... 1111 0000 

---

## 🔧 Hardware Inference

The following hardware is inferred during synthesis:

- 4 Flip-Flops for count storage
- 4-bit Adder for increment operation
- Reset Logic

---

## 🎯 Learning Outcomes

This project helped in understanding:

- SystemVerilog RTL Coding
- always_ff Blocks
- Sequential Logic Design
- Counters
- Testbench Development
- Simulation and Debugging
- Hardware Inference Concepts

---

## 🏷️ Tools Used

- SystemVerilog
- Icarus Verilog
- GTKWave
- Yosys
- GitHub

---

## 👨‍💻 Author

Rahul Kumaran

Aspiring VLSI Design Engineer | ECE Student | RTL Design Enthusi
