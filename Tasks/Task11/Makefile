# See LICENSE.cocotb for details
# See LICENSE.vyoma for details

SIM ?= verilator

#COMPILE_ARGS += -O3 --x-assign fast --x-initial fast \
  --noassert --bbox-sys -Wno-STMTDLY -Wno-UNOPTFLAT -Wno-WIDTH \
  -Wno-lint -Wno-COMBDLY -Wno-INITIALDLY --autoflush  --threads 1 \
  -DBSV_RESET_FIFO_HEAD -DBSV_RESET_FIFO_ARRAY --output-split 20000 --output-split-ctrace 10000 --Wno-TIMESCALEMOD

TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

export PYTHONPATH := $(PWD):$(PYTHONPATH) # Reference model

EXTRA_ARGS += --trace-fst --trace --trace-structs # waveform
EXTRA_ARGS += --coverage # code coverage

VERILOG_SOURCES = $(PWD)/multiplier.v

TOPLEVEL := multiplier
MODULE   := test_multiplier

include $(shell cocotb-config --makefiles)/Makefile.sim

code_cov_gen:
	verilator_coverage  -write-info coverage.info coverage.dat
	genhtml coverage.info --output-directory coverage

clean_all: clean
	rm -rf *.xml coverage_*.yml *.fst *.vcd coverage.dat __pycache__ coverage coverage.info
