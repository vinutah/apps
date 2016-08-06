CXX = clang++
CC = clang
CXX_FLAGS = -std=c++0x -g -DTEST
BUILD_DIR = .
SRC_DIR = ../../runtime
INCLUDE_DIRS = -I../../runtime 
BIT_DIR = /usr/include/x86_64-linux-gnu/c++/4.7/

all: bc1 bc2 bc3 bc4 exe1 exe2

bc1:$(SRC_DIR)/Corrupt.C $(SRC_DIR)/Corrupt.h 
	$(CC) $(SRC_DIR)/Corrupt.C $(INCLUDE_DIRS) -I$(BIT_DIR) -emit-llvm $(CXX_FLAGS) -c -o $(BUILD_DIR)/Corrupt.bc
	
bc2:test.C
	$(CC) test.C $(INCLUDE_DIRS) -I$(BIT_DIR) -emit-llvm $(CXX_FLAGS) -c -o $(BUILD_DIR)/test.bc

bc3:$(SRC_DIR)/Corrupt.C $(SRC_DIR)/Corrupt.h 
	$(CXX) $(SRC_DIR)/Corrupt.C $(INCLUDE_DIRS) -I$(BIT_DIR) -emit-llvm $(CXX_FLAGS) -c -o $(BUILD_DIR)/Corrupt.bc
	
bc4:test.C
	$(CXX) test.C $(INCLUDE_DIRS) -I$(BIT_DIR) -emit-llvm $(CXX_FLAGS) -c -o $(BUILD_DIR)/test.bc
		
exe1:$(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/test.bc
	$(CC) $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/test.bc -o $(BUILD_DIR)/test -lm

exe2:$(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/test.bc
	$(CXX) $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/test.bc -o $(BUILD_DIR)/testcpp -lm

test: $(BUILD_DIR)/test $(BUILD_DIR)/testcpp
	$(BUILD_DIR)/test
	$(BUILD_DIR)/testcpp
	  
clean:
	rm -f *.bc *.o testcpp test

