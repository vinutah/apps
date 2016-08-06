#root dir
ROOT = $(HOME)/apps

# llvm/vulfi dirs
LLVM_HOME = $(ROOT)/llvm/llvm_32/opt
VULFI_HOME = $(LLVM_HOME)/lib/vulfi
VULFI_SCRIPTS = $(VULFI_HOME)/scripts

# ispc dirs
ISPC_HOME = $(ROOT)/ispc
ISPC_EX_DIR = $(VULFI_HOME)/benchmarks/ispc_benchmarks/src
ISPC_INPUT_DIR = $(VULFI_HOME)/benchmarks/ispc_benchmarks/input
BUILD_DIR = $(ISPC_EX_DIR)/$(EXAMPLE)/bc
SRC_DIR = $(ISPC_EX_DIR)/$(EXAMPLE)

# benchmark specific
ITER_OPTIONS = 1
ITER_RT = 1
ITER_SORT = 1
ITER_STENCIL = 1
ITER_VOLUME = 1
ITER_CG = 1
ITER_CB = 1
ITER_JC = 1
ITER_AO = 1

