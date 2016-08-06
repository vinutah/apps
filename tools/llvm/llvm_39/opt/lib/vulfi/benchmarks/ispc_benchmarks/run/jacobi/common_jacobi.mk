
include ../../../common.mk

EXAMPLE = jacobi
FCP = --fcp num

CMD1 = "$(n) $(jn) result_$(EXAMPLE)_$(TARGET)_noerror.dat"
CMD2 = "$(n) $(jn) result_$(EXAMPLE)_$(TARGET)_$(FSA)_error.dat"
OUT1 = result_$(EXAMPLE)_$(TARGET)_noerror.dat
OUT2 = result_$(EXAMPLE)_$(TARGET)_$(FSA)_error.dat

all: ex1

ex1:
	python $(VULFI_SCRIPTS)/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET)_$(FSA)_inject \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter $(ITER_JC) --pv --ff eql --fc 1 --fia $(FIA) \
	--rslt result_$(EXAMPLE)_$(TARGET)_$(FSA).csv --ficsv fi.csv \
	--th $(th)
	
clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~



