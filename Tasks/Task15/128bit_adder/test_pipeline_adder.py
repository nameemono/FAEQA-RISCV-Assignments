import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge


@cocotb.test()
async def test_pipeline_adder(dut):

    clock = Clock(dut.clk, 10, unit="ns")
    cocotb.start_soon(clock.start())

    dut.rst.value = 1
    dut.a.value = 0
    dut.b.value = 0

    await RisingEdge(dut.clk)
    dut.rst.value = 0

    test_vectors = [
        (10, 20),
        (100, 200),
        (255, 1),
        (1024, 4096),
        (123456789, 987654321),
        (0xFFFFFFFFFFFFFFFF, 1),
        (0x123456789ABCDEF0, 0x1111111111111111),
        ((1 << 127) - 1, 1),
    ]

    for a, b in test_vectors:

        dut.a.value = a
        dut.b.value = b

        # Pipeline latency
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)

        expected = (a + b) & ((1 << 128) - 1)

        assert dut.sum.value.to_unsigned() == expected, \
            f"{a} + {b} = {expected}, got {dut.sum.value.to_unsigned()}"
