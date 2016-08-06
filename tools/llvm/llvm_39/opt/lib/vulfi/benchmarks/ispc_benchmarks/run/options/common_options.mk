
include ../../../common.mk

EXAMPLE = options
FCP = --fcp num

CMD1 = "$(ISPC_INPUT_DIR)/$(EXAMPLE)/data/$(n) result_$(EXAMPLE)_$(TARGET)_$(inty)_noerror.out"
CMD2 = "$(ISPC_INPUT_DIR)/$(EXAMPLE)/data/$(n) result_$(EXAMPLE)_$(TARGET)_$(FSA)_error.out"
OUT1 = result_$(EXAMPLE)_$(TARGET)_$(inty)_noerror.out
OUT2 = result_$(EXAMPLE)_$(TARGET)_$(FSA)_error.out

all: ex1

ex1:
	python $(VULFI_SCRIPTS)/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET)_$(FSA)_inject \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter $(ITER_OPTIONS) --pv --ff eql --fc 1 --fia $(FIA) \
	--rslt result_$(EXAMPLE)_$(TARGET)_$(FSA).csv --ficsv fi.csv \
	--th $(th)
	
clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~
