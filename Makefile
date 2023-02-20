.PHONY: all clean

PYTHON ?=python3

all: test

venv:
	$(PYTHON) -m venv venv --clear --prompt feyn-venv

$(cpython_filename): venv $(shell find qepler_ext -type f)
	./venv/bin/python setup.py build_ext --inplace

clean:
	rm -rf venv
