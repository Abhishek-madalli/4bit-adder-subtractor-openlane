4-Bit Adder-Subtractor – Physical Design (OpenLane + Sky130)
📌 Project Overview

This project implements a 4-bit Adder-Subtractor using Verilog RTL, synthesized and physically designed using OpenLane with the SkyWater 130nm (Sky130) PDK.
The flow includes RTL to GDS-II generation along with timing, power, and area analysis.


🛠️ Tools & Technologies
    RTL Design → Verilog HDL
    Synthesis & Physical Design → OpenLane
    PDK → SkyWater SKY130
    Layout Viewer → KLayout
    Reports → OpenROAD analysis


📂 Repository Structure
.
├── src/                # RTL source code
├── config.tcl          # OpenLane configuration file
├── runs/
│   └── run1/
│       ├── final/
│       │   ├── def/    # Final DEF file
│       │   ├── gds/    # Final GDS-II layout
│       │   ├── verilog/# Post-layout netlist
│       │   ├── spef/   # Parasitics
│       ├── reports/    # Synthesis, timing, power, DRC/LVS reports
├── README.md


📊 Design Specifications
| Parameter       | Value           |
| --------------- | --------------- |
| **Technology**  | SkyWater SKY130 |
| **Design Name** | addsub4\_top    |
| **Area**        | 619.344 µm²     |
| **WNS (Slack)** | 14.86 ns        |
| **Power**       | 84 µW           |
| **Frequency**   | \~66 MHz\*      |


🖼 Layout
    <img width="1914" height="1016" alt="GDS of 4 Bit Adder-Subtractor" src="https://github.com/user-attachments/assets/be6d33ff-3176-4d8c-a177-fbabfd62f976" />

⚡ Flow Steps
RTL Design – Verilog implementation of a 4-bit Adder-Subtractor.
Synthesis – Using Yosys to generate gate-level netlist.
Floorplanning – Core and I/O pin placement.
Placement – Standard cell placement using RePlAce.
Clock Tree Synthesis (CTS) – Buffer insertion for clock distribution.
Routing – Detailed routing using TritonRoute.
Signoff – DRC, LVS, power, and timing verification.
GDS-II Export – Final chip layout.

📜Reports 
Area Report – runs/run1/reports/synthesis/
Timing Report – runs/run1/reports/signoff/
Power Report – runs/run1/reports/signoff/
DRC/LVS Reports – runs/run1/reports/signoff/Reports/

📅 Author
Abhishek Madalli
Physical Design Trainee
