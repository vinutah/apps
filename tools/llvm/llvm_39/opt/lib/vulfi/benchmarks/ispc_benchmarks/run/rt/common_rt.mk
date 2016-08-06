
include ../../../common.mk

EXAMPLE = rt
FCP = --fcp img

CMD1 = "$(ISPC_INPUT_DIR)/$(EXAMPLE)/$(screen) --scale=$(sc) 1 1 1 result_$(screen)_$(EXAMPLE)_$(TARGET)_$(screen)_$(sc)_noerror.ppm"
CMD2 = "$(ISPC_INPUT_DIR)/$(EXAMPLE)/$(screen) --scale=$(sc) 1 1 1 result_$(screen)_$(EXAMPLE)_$(TARGET)_$(FSA)_error.ppm"
OUT1 = result_$(screen)_$(EXAMPLE)_$(TARGET)_$(screen)_$(sc)_noerror.ppm
OUT2 = result_$(screen)_$(EXAMPLE)_$(TARGET)_$(FSA)_error.ppm

all: ex1

ex1:
	python $(VULFI_SCRIPTS)/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EXAMPLE)_$(TARGET)_$(FSA)_inject \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter $(ITER_RT) --pv --ff eql --fc 1 --fia $(FIA) \
	--rslt result_$(EXAMPLE)_$(TARGET)_$(FSA).csv --ficsv fi.csv \
	--th $(th)
	
clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~
