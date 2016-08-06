#root dir
ROOT = $(HOME)/apps

# llvm/vulfi dirs
LLVM_HOME = $(ROOT)/llvm/llvm_32/opt
VULFI_HOME = $(LLVM_HOME)/lib/vulfi
VULFI_INSTALL_DIR = /usr/local/lib

# ispc dirs
OPT_FLAG = -O3
ISPC_HOME = $(ROOT)/ispc
ISPC_EX_DIR = $(VULFI_HOME)/benchmarks/ispc_benchmarks/src
BUILD_DIR = $(ISPC_EX_DIR)/$(EXAMPLE)/bc
SRC_DIR = $(ISPC_EX_DIR)/$(EXAMPLE)

# compiler and flags
CXX = clang++
CXX_FLAGS = -I$(VULFI_HOME)/runtime/ -I$(BUILD_DIR)/ -I/usr/include/x86_64-linux-gnu/c++/4.7/ -m64 -march=native
ISPC_AVX2_FLAGS = --arch=x86-64 --cpu=core-avx2 --target=avx1-i32x8 
ISPC_SSE4_FLAGS = --arch=x86-64 --cpu=core-avx2 --target=sse4-i32x4 
FSA_DATA = "data"
FSA_CTRL = "ctrl"
FSA_ADDR = "addr"
FSA_MASK = "mask"
FSA_BRDC = "brdc"

all: mkd cc lnk ld exe
cc: cc1 cc2 cc3 cc4 cc5 cc6 cc7
lnk: lnk1 lnk2 lnk3
ld: ld1 ld2 ld3 ld4 ld5 ld6 ld7 ld8 ld9
exe: exe1 exe2 exe3 exe4 exe5 exe6 exe7 exe8 exe9 exe10 exe11 exe12
run: run1 run2 run3 run4 run5 run6

mkd:
	mkdir -p $(BUILD_DIR)/


#########################################
# BITCODE GENERATION 
#########################################

# Corrupt runtime bitcode generation
cc1:
	$(CXX) $(CXX_FLAGS) -D__CLANGPP $(OPT_FLAG) $(VULFI_HOME)/runtime/Corrupt.C -emit-llvm -g \
	-c -o $(BUILD_DIR)/Corrupt.bc

# compile ispc file with avx2 instructions as the target
cc2:
	$(ISPC_HOME)/ispc $(OPT_FLAG) $(ISPC_AVX2_FLAGS) $(EXAMPLE).ispc -o \
	$(BUILD_DIR)/$(EXAMPLE)_ispc_avx2.bc -h \
	$(BUILD_DIR)/$(EXAMPLE)_ispc.h --emit-llvm -g 

# compile ispc file with sse4 instructions as the target
cc3:
	$(ISPC_HOME)/ispc $(OPT_FLAG) $(ISPC_SSE4_FLAGS) $(EXAMPLE).ispc -o \
	$(BUILD_DIR)/$(EXAMPLE)_ispc_sse4.bc --emit-llvm -g 

# compile cpp file having main() - invokes serial function
cc4:
	$(CXX) $(EXAMPLE).cpp $(CXX_FLAGS) $(OPT_FLAG) -DISPC_SERIAL -DINST \
	-emit-llvm -g -c -o $(BUILD_DIR)/$(EXAMPLE)_main_ser.bc
	
# compile cpp file having main() - invokes ispc function
cc5:
	$(CXX) $(EXAMPLE).cpp $(CXX_FLAGS) $(OPT_FLAG) -DISPC_1CORE -DINST \
	-emit-llvm -g -c -o $(BUILD_DIR)/$(EXAMPLE)_main_ispc.bc
	
# compile cpp file having serial implementation
cc6:
	$(CXX) $(EXAMPLE)_serial.cpp $(CXX_FLAGS) $(OPT_FLAG) -DISPC_SERIAL \
	-emit-llvm -g -c -o $(BUILD_DIR)/$(EXAMPLE)_serial.bc

# tasksys bitcode generation
cc7:
	$(CXX) ../tasksys.cpp $(CXX_FLAGS) $(OPT_FLAG) -emit-llvm -g -c -o \
	$(BUILD_DIR)/tasksys.bc

################################
# LINK BITCODE FILES
################################
# link bitcode files - invokes serial and debug functions
lnk1:
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/$(EXAMPLE)_serial.bc \
	$(BUILD_DIR)/tasksys.bc \
	$(BUILD_DIR)/$(EXAMPLE)_main_ser.bc -o \
	$(BUILD_DIR)/$(EXAMPLE)_ser.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_ser.bc -filetype=obj
	
# link bitcode files - invokes ispc(avx2) and debug functions
lnk2:
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/$(EXAMPLE)_ispc_avx2.bc \
	$(BUILD_DIR)/tasksys.bc \
	$(BUILD_DIR)/$(EXAMPLE)_main_ispc.bc -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_avx2.bc -filetype=obj
	
# link bitcode files - invokes ispc(sse4) and debug functions
lnk3:
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/$(EXAMPLE)_ispc_sse4.bc \
	$(BUILD_DIR)/tasksys.bc \
	$(BUILD_DIR)/$(EXAMPLE)_main_ispc.bc -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_sse4.bc -filetype=obj
	
################################
# LOAD FAULT INJECTION PASS
################################
# load fault injection llvm pass in serial version
ld1:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_DATA) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_ser.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_ser.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_DATA)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_DATA)_inject.bc -filetype=obj

# load fault injection llvm pass in ispc version
ld2:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_DATA) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_avx2.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_avx2.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_DATA)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_DATA)_inject.bc -filetype=obj

ld3:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_DATA) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_sse4.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_sse4.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_DATA)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_DATA)_inject.bc -filetype=obj

# load fault injection llvm pass in serial version
ld4:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_CTRL) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_ser.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_ser.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_CTRL)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_CTRL)_inject.bc -filetype=obj
	
# load fault injection llvm pass in ispc version
ld5:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_CTRL) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_avx2.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_avx2.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_CTRL)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_CTRL)_inject.bc -filetype=obj
	
# load fault injection llvm pass in ispc version
ld6:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_CTRL) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_sse4.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_sse4.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_CTRL)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_CTRL)_inject.bc -filetype=obj
	
# load fault injection llvm pass in serial version
ld7:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_SERIAL) \
	-fsa $(FSA_ADDR) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_ser.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_ser.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_ADDR)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_ADDR)_inject.bc -filetype=obj
	
# load fault injection llvm pass in ispc version
ld8:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_ADDR) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_avx2.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_avx2.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_ADDR)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_ADDR)_inject.bc -filetype=obj
	
# load fault injection llvm pass in ispc version
ld9:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_ADDR) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_sse4.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_sse4.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_ADDR)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_ADDR)_inject.bc -filetype=obj

# mask fault sites related builds
ld10:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_MASK) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_avx2.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_avx2.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_MASK)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_MASK)_inject.bc -filetype=obj
	
ld11:    
	opt -load $(VULFI_INSTALL_DIR)/relief.so -vulfi -fn $(FN_ISPC) \
	-fsa $(FSA_MASK) -lang "C++" -dbgf "dbgData_$(EXAMPLE)_sse4.csv" < \
	$(BUILD_DIR)/$(EXAMPLE)_sse4.bc > \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_MASK)_inject.bc
	llc $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_MASK)_inject.bc -filetype=obj
		
################################
# GENERATE EXECUTABLE FILES
################################
# generate executable w/o any instrumentation for serial version
exe1:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_ser.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_ser -lm -lpthread -lstdc++
	
# generate executable w/o any instrumentation for ispc(avx2) version
exe2:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_avx2.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2 -lm -lpthread -lstdc++

# generate executable w/o any instrumentation for ispc(sse4) version
exe3:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_sse4.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4 -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for serial version
exe4:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_DATA)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_DATA)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(avx2) version
exe5:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_DATA)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_DATA)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(sse4) version
exe6:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_DATA)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_DATA)_inject -lm -lpthread -lstdc++

# generate executable w/ fault injection for serial version
exe7:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_CTRL)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_CTRL)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(avx2) version
exe8:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_CTRL)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_CTRL)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(sse4) version
exe9:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_CTRL)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_CTRL)_inject -lm -lpthread -lstdc++
	

# generate executable w/ fault injection for serial version
exe10:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_ADDR)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_ser_$(FSA_ADDR)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(avx2) version
exe11:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_ADDR)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_ADDR)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(sse4) version
exe12:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_ADDR)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_ADDR)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(avx2) version
exe13:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_MASK)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_avx2_$(FSA_MASK)_inject -lm -lpthread -lstdc++
	
# generate executable w/ fault injection for ispc(sse4) version
exe14:
	$(CXX) $(CXX_FLAGS) $(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_MASK)_inject.o -o \
	$(BUILD_DIR)/$(EXAMPLE)_sse4_$(FSA_MASK)_inject -lm -lpthread -lstdc++
		

################################
# RUN EXECUTABLES 
################################
run1:$(BUILD_DIR)/$(EXAMPLE)_ser
	$(BUILD_DIR)/$(EXAMPLE)_ser
	
run2:$(BUILD_DIR)/$(EXAMPLE)_avx2
	$(BUILD_DIR)/$(EXAMPLE)_avx2

run3:$(BUILD_DIR)/$(EXAMPLE)_sse4
	$(BUILD_DIR)/$(EXAMPLE)_sse4
	
run4:$(BUILD_DIR)/$(EXAMPLE)_ser_inject
	$(BUILD_DIR)/$(EXAMPLE)_ser_inject
	
run5:$(BUILD_DIR)/$(EXAMPLE)_avx2_inject
	$(BUILD_DIR)/$(EXAMPLE)_avx2_inject

run6:$(BUILD_DIR)/$(EXAMPLE)_sse4_inject
	$(BUILD_DIR)/$(EXAMPLE)_sse4_inject

clean:
	rm -rf $(BUILD_DIR)/
	rm -f *.csv *.in *.out *.dat *.ppm *.txt *.dot *.ods *~


