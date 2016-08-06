all: kulfi

clean:
	rm -rf  html
	rm -rf  latex
	(cd manual; make clean)

kulfi: vulfi.cfg
	doxygen vulfi.cfg
	(cd manual; make)



