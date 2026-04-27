import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test_mux(dut):
    dut.ena.value = 1
    dut.rst_n.value = 1
    dut.uio_in.value = 0

    patterns = [
        (0b0001,0,1),
        (0b0010,1,1),
        (0b0100,2,1),
        (0b1000,3,1),
    ]

    for data, sel, expected in patterns:
        dut.ui_in.value = data | (sel << 4)
        await Timer(1, units='ns')
        assert int(dut.uo_out.value & 1) == expected
