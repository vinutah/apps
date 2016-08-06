#root dir
ROOT = $(HOME)/apps

# llvm/vulfi dirs
LLVM_HOME = $(ROOT)/llvm/llvm_32/opt
VULFI_HOME = $(LLVM_HOME)/lib/vulfi
VULFI_INSTALL_DIR = /usr/local/lib

# ispc dirs
OPT_FLAG = -O3
SCALAR_EX_DIR = $(VULFI_HOME)/benchmarks/scalar_benchmarks/src
BUILD_DIR = $(SCALAR_EX_DIR)/$(EXAMPLE)/bc
SRC_DIR = $(SCALAR_EX_DIR)/$(EXAMPLE)

# compiler and flags
CXX = clang++
CXX_FLAGS = -I$(VULFI_HOME)/runtime/ -I$(BUILD_DIR)/ -I/usr/include/x86_64-linux-gnu/c++/4.7/
FSA_DATA = "data"
FSA_CTRL = "ctrl"
FSA_ADDR = "addr"
LINK_LIB = -lm -lpthread -lstdc++

all: mkd cc lnk ld exe
cc: cc1 cc2 cc3
lnk: lnk1
ld: ld1 ld2 ld3
exe: exe1 exe2 exe3 exe4


mkd:
	mkdir -p $(BUILD_DIR)/


#########################################
# BITCODE GENERATION 
#########################################

# Corrupt runtime bitcode generation
cc1:
	$(CXX) $(CXX_FLAGS) -D__CLANGPP $(OPT_FLAG) $(VULFI_HOME)/runtime/Corrupt.C -emit-llvm -g \
	-c -o $(BUILD_DIR)/Corrupt.bc

# compile cpp file having main() - invokes serial function
cc2:
	$(CXX) $(EXAMPLE).cpp $(CXX_FLAGS) $(OPT_FLAG) \
	-emit-llvm -g -c -o $(BUILD_DIR)/$(EXAMPLE).bc
	llc $(BUILD_DIR)/$(EXAMPLE).bc -filetype=obj
	
# compile cpp file having main() - invokes serial function
cc3:
	$(CXX) $(EXAMPLE).cpp $(CXX_FLAGS) $(OPT_FLAG) -DINST \
	-emit-llvm -g -c -o $(BUILD_DIR)/$(EXAMPLE)_inst.bc
	
################################
# LINK BITCODE FILES
################################
# link bitcode files - invokes serial and debug functions
lnk1:
	llvm-link $(BUILD_DIR)/Corrupt.bc \
	$(BUILD_DIR)/$(EXAMPLE)_inst.bc -o \
	$(BUILD_DIR)/$(EXAMPLE)_corrupt.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_corrupt.bc -filetype=obj
	
################################
# LOAD FAULT INJECTION PASS
################################
# load fault injection llvm pass in serial version
ld1:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_DATA) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_$(FSA_DATA).csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_corrupt.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_DATA)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_$(FSA_DATA)_inject.bc -filetype=obj

# load fault injection llvm pass in serial version
ld2:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_CTRL) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_$(FSA_CTRL).csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_corrupt.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_CTRL)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_$(FSA_CTRL)_inject.bc -filetype=obj
	
# load fault injection llvm pass in serial version
ld3:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_ADDR) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_$(FSA_ADDR).csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_corrupt.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_ADDR)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_$(FSA_ADDR)_inject.bc -filetype=obj
	
################################
# GENERATE EXECUTABLE FILES
################################
# generate executable w/o any instrumentation for serial version
exe1:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE).o -o \
	$(BUILD_DIR)/$(EXAMPLE) $(LINK_LIB)
	
# generate executable w/o any instrumentation for ispc(avx2) version
exe2:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_$(FSA_DATA)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_DATA)_inject $(LINK_LIB)

# generate executable w/o any instrumentation for ispc(sse4) version
exe3:
	$(CXX) $(BUILD_DIR)/$(EXAMPLE)_$(FSA_CTRL)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_CTRL)_inject $(LINK_LIB)
	
# generate executable w/ fault injection for serial version
exe4:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_$(FSA_ADDR)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_$(FSA_ADDR)_inject $(LINK_LIB)
	
clean:
	rm -rf $(BUILD_DIR)/
	rm -f *.csv *.in *.out *.dat *.ppm *~ *.txt


