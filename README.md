# 4-bit Adder-Subtractor: RTL-to-GDSII with OpenLane  

This repository contains the **RTL-to-GDSII flow** for a **4-bit Adder-Subtractor** designed using **OpenLane** and the **SkyWater 130nm PDK**.  
The project demonstrates synthesis, floorplanning, placement, routing, and signoff checks (STA, power, DRC/LVS).  

---

## 📌 Project Overview  
- **Design**: 4-bit Adder-Subtractor (structural Verilog using basic gates)  
- **Tools**: OpenLane v1.1.1, SkyWater 130nm PDK  
- **Process Node**: SKY130 (130nm)  
- **Flow**: RTL → Synthesis → Floorplan → Placement → Routing → Signoff  

### 🔑 Key Metrics (from `run1`)  
- **Area**: 619.344 µm²  
- **Worst Slack (synthesis)**: 15.22 ns  
- **Estimated Delay**: depends on clock period (e.g., if period = 20 ns → delay ≈ 4.78 ns)  
- **Total Power**: 4.31e-05 W ≈ 43.1 µW  
- **DRC/LVS**: ✅ Clean  

---

## 📂 Directory Structure  
src/                       # Verilog RTL files (adder_subtractor.v, fa.v, etc.)

config.json                # OpenLane project configuration

results/final/gds/         # GDSII layout (adder_subtractor.gds)

reports/                   # Synthesis, timing, DRC, LVS, routing reports

screenshots/               # GDSII layout visualization (adder_subtractor_layout.png)


---

## 🚀 How to Use  

### 1️⃣ Prerequisites  
- Ubuntu 20.04+ with **Docker**  
- **OpenLane** + **SkyWater 130nm PDK** installed (via [Volare](https://github.com/efabless/volare))  

### 2️⃣ Clone Repository  
```bash
git clone https://github.com/Abhishek-madalli/addsub4-OpenLane.git
cd addsub4-OpenLane
