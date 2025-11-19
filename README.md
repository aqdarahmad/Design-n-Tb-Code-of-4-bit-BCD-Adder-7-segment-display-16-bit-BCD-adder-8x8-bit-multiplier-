

This repository contains the **gate-level design implementations** All components are designed using **strict gate-level modeling** in Verilog/SystemVerilog.

---

## 📂 Contents

### 1️⃣ Full Adder
- 🔹 Gate-level implementation of a 1-bit full adder.
- 📄 Module: `full_adder.v`
- ✅ Includes internal testbench for verification.

### 2️⃣ 4-bit BCD Adder
- 🔹 Implements a 4-bit BCD adder using full adders and logic for decimal correction.
- 📄 Module: `bcd_adder_4bit.v`
- ✅ Testbench provided to validate addition and BCD correction.

### 3️⃣ 7-Segment Display
- 🔹 Converts 4-bit binary input to 7-segment display output.
- 📄 Module: `seven_segment_display.v`
- 🖥️ Can be used to display single BCD digits.

### 4️⃣ 16-bit BCD Adder with 7-Segment Display
- 🔹 Combines four 4-bit BCD adders to create a 16-bit BCD adder.
- 🔹 Connects outputs to 7-segment display modules to show decimal results.
- 📄 Module: `bcd_adder_16bit_display.v`
- 🧪 Testbench: `tb_bcd_adder_16bit_display.v`

### 5️⃣ 8x8-bit Multiplier
- 🔹 Strict gate-level 8x8 multiplier (binary output only, no 7-segment display).
- 📄 Module: `multiplier8x8.v`
- 🧪 Testbench: `tb_multiplier8x8.v`
- ✅ Fully tested for multiple input combinations.

---

## ▶️ How to Run Simulation

1. Compile all Verilog/SystemVerilog files using your simulator (e.g., Xcelium, ModelSim, Vivado).
2. Run the respective testbench:
   ```bash
   xrun tb_multiplier8x8.sv
   xrun tb_bcd_adder_16bit_display.sv
