import subprocess

cmd_compile = ["iverilog", "-o", "mux_sim", "mux4to1.v", "tb_mux4to1.v"]
cmd_run = ["vvp", "mux_sim"]

subprocess.run(cmd_compile, check=True)
subprocess.run(cmd_run, check=True)

print("Simulation completed successfully.")
