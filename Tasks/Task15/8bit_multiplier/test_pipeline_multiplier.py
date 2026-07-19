import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge

@cocotb.test()
async def test_pipeline_multiplier(dut):

    clock = Clock(dut.clk, 10, unit="ns")
    cocotb.start_soon(clock.start())

    dut.rst.value = 1
    dut.a.value = 0
    dut.b.value = 0

    await RisingEdge(dut.clk)
    dut.rst.value = 0

    test_vectors = [
        (2, 3),
        (5, 4),
        (10, 10),
        (15, 15),
        (255, 2),
        (17, 8),
        (123, 45),
        (200, 100),
    ]

    for a, b in test_vectors:

        dut.a.value = a
        dut.b.value = b

        # allow pipeline to propagate
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)

        expected = (a * b) & 0xFFFF

        assert dut.product.value.to_unsigned() == expected, \
            f"{a} * {b} = {expected}, got {dut.product.value.to_unsigned()}"
