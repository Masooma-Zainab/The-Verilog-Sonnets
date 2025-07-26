# The-Verilog-Sonnets
A curated collection of digital designs—testbenches, architectures, and playful abstractions. This is engineering as literature: each module a paragraph, each waveform a feeling.

# 💓 my_heart — a poetic hardware module

> “In the silence between two clock pulses,  
> something tender begins to count again.”

---

## 🌸 What is this?

This is not just hardware —  
It’s a tiny **Verilog design** shaped like a **heartbeat**.  
It models a 2-bit heart that grows stronger with each rising clock edge...  
unless a reset returns it to stillness.

A metaphor in logic gates.

---

## ⚙️ Files

- `my_heart.v` – The top-level module  
- `heart_tb.v` – A testbench that feeds it time and pain  
- *(Optional)* `heart.vcd` – Waveform dump file from simulation  
- *(Optional)* `heart_wave.png` – Screenshot from GTKWave viewer

---

## 🔧 How to simulate (Icarus Verilog + GTKWave)

```bash
iverilog -o heart.out my_heart.v heart_tb.v
vvp heart.out
gtkwave heart.vcd
