.PHONY: all clean

PYTHON ?=python3

all: test

venv: requirements.txt
	$(PYTHON) -m venv venv --clear --prompt srsmall-venv
	./venv/bin/pip install -r requirements.txt
	
clean:
	rm -rf venv
