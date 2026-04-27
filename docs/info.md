# 4-to-1 Multiplexer

## Description
A 4-to-1 multiplexer routes one of four input bits to a single output based on a 2-bit select signal.

## Truth Table
| s1 s0 | Output |
|------|--------|
| 00   | d0     |
| 01   | d1     |
| 10   | d2     |
| 11   | d3     |

## Files
- `mux4to1.v` : RTL design
- `tb_mux4to1.v` : Testbench
- `test.py` : Simulation helper script
