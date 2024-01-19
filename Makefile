setup:
	python -m venv venv

install:
	pip install -r requirements.txt

activate:
	source venv/bin/activate

.PHONY: setup install activate