import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge


@cocotb.test()
async def multiplier_basic_test(dut):

    # Start a 10 ns clock
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    # Reset
    dut.rst.value = 1
    dut.start.value = 0
    dut.multiplicand.value = 0
    dut.multiplier_in.value = 0

    await RisingEdge(dut.clk)
    dut.rst.value = 0

    # Test Case 1
    A = 3
    B = 5

    dut.multiplicand.value = A
    dut.multiplier_in.value = B

    dut.start.value = 1
    await RisingEdge(dut.clk)
    dut.start.value = 0

    # Wait until multiplication finishes
    while dut.done.value == 0:
        await RisingEdge(dut.clk)

    expected = A * B

    assert int(dut.product.value) == expected, \
        f"Expected {expected}, Got {int(dut.product.value)}"

    cocotb.log.info(f"PASS : {A} x {B} = {expected}")
