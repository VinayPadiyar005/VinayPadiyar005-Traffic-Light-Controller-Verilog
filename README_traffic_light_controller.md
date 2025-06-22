# Traffic Light Controller - Verilog

This project implements a **Traffic Light Controller** using a Finite State Machine (FSM) in Verilog. The design simulates a simple 3-light traffic signal system: **Red**, **Green**, and **Yellow**.

---

## 🛠️ Project Structure

- `traffic_light_controller.v` — Main Verilog module implementing the FSM logic.
- `tb_traffic_light_controller.v` — Testbench to simulate and verify the FSM behavior.
- `README.md` — Project documentation (this file).

---

## 🔄 FSM Description

The traffic light controller cycles through the following states:

| State | Output           | Description         |
|-------|------------------|---------------------|
| s0    | Red = 1          | Stop                |
| s1    | Green = 1        | Go                  |
| s2    | Yellow = 1       | Prepare to stop     |

- Transitions occur on every **positive edge of the clock**.
- The FSM resets to the `Red` state.

---

## ✅ Simulation Behavior

The testbench:
- Generates a clock signal (10 ns period).
- Asserts reset for the first 10 ns.
- Observes transitions for multiple clock cycles.
- Uses `$monitor` to print state changes in the console.

### Sample Output:

```
Time = 0     | Reset = 1 | Red = 1 | Green = 0 | Yellow = 0
Time = 10000 | Reset = 0 | Red = 1 | Green = 0 | Yellow = 0
Time = 15000 | Reset = 0 | Red = 0 | Green = 1 | Yellow = 0
Time = 25000 | Reset = 0 | Red = 0 | Green = 0 | Yellow = 1
...
```

---

## 💻 Tools Used

- **Vivado** for simulation
- **Verilog HDL**
- **GitHub** for version control

---

## 📂 How to Run

1. Open the project in Vivado or any Verilog simulator.
2. Compile both `traffic_light_controller.v` and `tb_traffic_light_controller.v`.
3. Run simulation and observe the output.

---

## 🔗 Author

Vinay Padiyar  
Verilog Beginner — Building strong VLSI foundations  
This project is part of a resume-oriented Verilog series.

