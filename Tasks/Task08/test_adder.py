# See LICENSE.cocotb for details
# See LICENSE.vyoma for details

# SPDX-License-Identifier: CC0-1.0
# Simple tests for an adder module
import cocotb
from cocotb.triggers import Timer
import random
import vsc

def adder_model(a: int, b: int) -> int:
    """ model of adder """
    return a + b

# -------------------------
# PyVSC covergroup for adder
# -------------------------
@vsc.covergroup
class AdderCovergroup(object):
    def __init__(self):
        # declare the sample arguments/types the covergroup expects
        # using bit_t(4) for 4-bit quantities
        self.with_sample(dict(
            a=vsc.bit_t(8),
            b=vsc.bit_t(8)
        ))

        # create a single-value bin for each value 0..15 for a and b
        a_bins = { f"val_{i}": vsc.bin(i) for i in range(256) }
        b_bins = { f"val_{i}": vsc.bin(i) for i in range(256) }

        # coverpoints
        self.cp_a = vsc.coverpoint(self.a, bins=a_bins)
        self.cp_b = vsc.coverpoint(self.b, bins=b_bins)

        # cross of cp_a and cp_b (all 256 combos, but you can ignore some if desired)
        self.cp_a_x_b = vsc.cross([self.cp_a, self.cp_b])

@cocotb.test()
async def adder_basic_test(dut):
    """Test for 5 + 10"""

    A = 5
    B = 10

    dut.a.value = A
    dut.b.value = B

    await Timer(2, unit='ns')

    assert dut.sum.value == adder_model(A, B), f"Adder result is incorrect: {dut.X.value} != 15"


@cocotb.test()
async def adder_randomised_test(dut):
    """Test for adding 2 random numbers multiple times"""

    cg = AdderCovergroup()

    for i in range(10):

        A = random.randint(0, 255)
        B = random.randint(0, 255)

        dut.a.value = A
        dut.b.value = B

        await Timer(2, unit='ns')

        cg.sample(A, B)

        dut._log.info(f'A={A:05} B={B:05} model={adder_model(A,B):05} DUT={int(dut.sum.value):05}')
        assert dut.sum.value == adder_model(A, B), "Randomised test failed with: {A} + {B} = {sum}".format(
            A=dut.a.value, B=dut.b.value, SUN=dut.sum.value)

    vsc.write_coverage_db("cov.xml", fmt="xml")  # writes an XML coverage DB (PyUCIS optional)
