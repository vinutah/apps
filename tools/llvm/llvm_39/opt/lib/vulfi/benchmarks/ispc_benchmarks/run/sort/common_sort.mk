
include ../../../common.mk

EXAMPLE = sort
FCP = --fcp num

CMD1 = "-w $(len) array_in.dat result_noerror.dat"
CMD2 = "-r $(len) array_in.dat result_$(FSA)_error.dat"
OUT1 = result_noerror.dat
OUT2 = result_$(FSA)_error.dat


all: ex1

ex1:
	python $(VULFI_SCRIPTS)/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET)_$(FSA)_inject \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter $(ITER_SORT) --pv --ff eql --fc 1 --fia $(FIA) \
	--rslt result_$(EXAMPLE)_$(TARGET)_$(FSA).csv --ficsv fi.csv \
	--th 10000000
	
clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~
