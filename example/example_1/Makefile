work = work
top_tb_name = tb_uvm

ifeq ($(OS),Windows_NT)

ifneq ("$(wildcard ./rtl)","")
INCRTL = +incdir+./rtl
else
INCRTL =
endif

ifneq ("$(wildcard ./sim/tb)","")
INCTB = +incdir+./sim/tb
else
INCTB =
endif

ifneq ("$(wildcard ./sim/tb/*.sv)","")
TB = ./sim/tb/tb_uvm.sv
else
TB =
endif

ifneq ("$(wildcard ./sim/env/agent)","")
INCINTF = +incdir+./sim/env/agent
else
INCINTF =
endif

ifneq ("$(wildcard ./sim/env/agent/*interface.sv)","")
INTF = ./sim/env/agent/interface.sv
else
INTF =
endif

ifneq ("$(wildcard ./sim/env/agent)","")
INCAGT = +incdir+./sim/env/agent
else
INCAGT =
endif

ifneq ("$(wildcard ./sim/env/agent/*pkg.sv)","")
AGT = ./sim/env/agent/agent_pkg.sv
else
AGT =
endif

ifneq ("$(wildcard ./sim/env/agent/sequence_lib)","")
INCSEQ_LIB = +incdir+./sim/env/agent/sequence_lib
else
INCSEQ_LIB =
endif

ifneq ("$(wildcard ./sim/env/agent/sequence_lib/*pkg.sv)","")
SEQ_LIB = ./sim/env/agent/sequence_lib/seq_pkg.sv
else
SEQ_LIB =
endif

ifneq ("$(wildcard ./sim/env)","")
INCENV = +incdir+./sim/env
else
INCENV =
endif

ifneq ("$(wildcard ./sim/env/*pkg.sv)","")
ENV = ./sim/env/env_pkg.sv
else
ENV =
endif

ifneq ("$(wildcard ./sim/env/agent/regs)","")
INCREG = +incdir+./sim/env/agent/regs
else
INCREG =
endif

ifneq ("$(wildcard ./sim/env/agent/regs/*pkg.sv)","")
REG = ./sim/env/agent/regs/regs_pkg.sv
else
REG =
endif

ifneq ("$(wildcard ./sim/tests)","")
INCTESTS = +incdir+./sim/tests
else
INCTESTS =
endif

ifneq ("$(wildcard ./sim/tests/*pkg.sv)","")
TESTS = ./sim/tests/test_pkg.sv
else
TESTS =
endif

else

ifneq ("$(wildcard ./rtl)","")
INCRTL = +incdir+./rtl
else
INCRTL =
endif

ifneq ("$(wildcard ./rtl/*.sv)","")
RTL = ./rtl/*.sv
else
RTL =
endif

ifneq ("$(wildcard ./sim/tb)","")
INCTB = +incdir+./sim/tb
else
INCTB =
endif

ifneq ("$(wildcard ./sim/tb/*.sv)","")
TB = ./sim/tb/*.sv
else
TB =
endif

ifneq ("$(wildcard ./sim/env/agent)","")
INCINTF = +incdir+./sim/env/agent
else
INCINTF =
endif

ifneq ("$(wildcard ./sim/env/agent/*interface.sv)","")
INTF = ./sim/env/agent/*interface.sv
else
INTF =
endif

ifneq ("$(wildcard ./sim/env/agent)","")
INCAGT = +incdir+./sim/env/agent
else
INCAGT =
endif

ifneq ("$(wildcard ./sim/env/agent/*pkg.sv)","")
AGT = ./sim/env/agent/*pkg.sv
else
AGT =
endif

ifneq ("$(wildcard ./sim/env/agent/sequence_lib)","")
INCSEQ_LIB = +incdir+./sim/env/agent/sequence_lib
else
INCSEQ_LIB =
endif

ifneq ("$(wildcard ./sim/env/agent/sequence_lib/*pkg.sv)","")
SEQ_LIB = ./sim/env/agent/sequence_lib/*pkg.sv
else
SEQ_LIB =
endif

ifneq ("$(wildcard ./sim/env)","")
INCENV = +incdir+./sim/env
else
INCENV =
endif

ifneq ("$(wildcard ./sim/env/*pkg.sv)","")
ENV = ./sim/env/*pkg.sv
else
ENV =
endif

ifneq ("$(wildcard ./sim/env/agent/regs)","")
INCREG = +incdir+./sim/env/agent/regs
else
INCREG =
endif

ifneq ("$(wildcard ./sim/env/agent/regs/*pkg.sv)","")
REG = ./sim/env/agent/regs/*pkg.sv
else
REG =
endif

ifneq ("$(wildcard ./sim/tests)","")
INCTESTS = +incdir+./sim/tests
else
INCTESTS =
endif

ifneq ("$(wildcard ./sim/tests/*pkg.sv)","")
TESTS = ../sim/tests/*pkg.sv
else
TESTS =
endif

endif

cmp:
	xvlog -work $(work) -i ./sim -sv -f ./sim/filelist $(SEQ_LIB) $(REG) $(INTF) $(AGT) $(ENV) $(TESTS) $(TB) -L uvm
	xelab work.$(top_tb_name) -s $(top_tb_name)_sim -L uvm -timescale 1ns/1ps -debug all

run_sim:
	xsim -runall -log session.log $(top_tb_name)_sim -testplusarg "{ UVM_TESTNAME=base_test }"

run_all:
	make cmp
	make run_sim