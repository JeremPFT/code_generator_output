ifdef OS
	EXT=.exe
else
	EXT=
endif

BUILD=gprbuild$(EXT)
CLEAN=gprclean$(EXT)

EXEC=output-tests-run$(EXT)

all:  run_tests

compil_lib::
	$(BUILD) -j4 -g -gnatef output_lib.gpr

compil_tests::
	$(BUILD) -j4 -g -gnatef output_tests.gpr

clean::
	$(CLEAN) output_tests.gpr

run_tests: compil_tests
	${HOME}/tmp/bin/$(EXEC)

xref::
	gnatxref -a -aIsrc_lib -aIsrc_tests -aOout_lib -aOout_obj src_test/output-tests-run.adb
