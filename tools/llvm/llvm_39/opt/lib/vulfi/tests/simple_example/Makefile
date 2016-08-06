CORRUPT_C = ../../runtime/Corrupt.C
RELIEF_SO = $(VULFI_INSTALL_DIR)/relief.so
CXX = clang++


.PHONY: all
all: simple_example simple_example_inject

simple_example.bc: simple_example.cpp
	$(CXX) -emit-llvm simple_example.cpp -c -o simple_example.bc

Corrupt.bc: $(CORRUPT_C)
	$(CXX) -emit-llvm -D__CLANGPP $(CORRUPT_C) -c -o Corrupt.bc

simple_example_corrupt.bc: Corrupt.bc simple_example.bc
	llvm-link Corrupt.bc simple_example.bc -o simple_example_corrupt.bc

simple_example_inject.bc: $(RELIEF_SO) simple_example_corrupt.bc
	opt -load $(RELIEF_SO) -vulfi -fn "rand" -fsa "data" -lang "C++" -dbgf "instruction_list_simple_example.csv" < simple_example_corrupt.bc > simple_example_inject.bc

simple_example_inject: simple_example_inject.bc
	$(CXX) simple_example_inject.bc -o simple_example_inject

simple_example: simple_example.bc
	$(CXX) simple_example.bc -o simple_example

.PHONY: clean
clean:
	$(RM) *.bc
	$(RM) fi.csv
	$(RM) data_instruction_list_simple_example.csv
	$(RM) simple_example
	$(RM) simple_example_inject
