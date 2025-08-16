# 4-Bit Adder-Subtractor

## Overview

This project implements a **4-bit Adder-Subtractor** circuit, capable of performing addition and subtraction on two 4-bit binary numbers with overflow detection.

## Features

- Addition and subtraction using mode selection
- Overflow/carry output
- Educational logic design

## Circuit Layout

https://ibb.co/QF80sh4z 

*Figure: GDS of the 4-bit Adder-Subtractor.*

## Results

| A    | B    | Mode | Output | Carry/Borrow | Overflow |
|------|------|------|--------|--------------|----------|
| 0101 | 0011 | 0    | 1000   | 0            | 0        |
| 0101 | 0011 | 1    | 0010   | 0            | 0        |
| 1111 | 0001 | 0    | 0000   | 1            | 1        |
| 1000 | 1000 | 1    | 0000   | 0            | 0        |

*The table above shows sample test cases for both addition and subtraction.*

## Conclusion

The 4-bit Adder-Subtractor circuit successfully performs binary addition and subtraction as intended. The use of mode control simplifies switching between operations. Testing confirmed correct outputs for all input combinations, demonstrating the circuit’s reliability and usefulness for basic arithmetic logic design.

---

*Made by Abhishek S Madalli. For educational use.*
