setup:
	python -m venv venv

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv test_*.py

activate:
	source venv/bin/activate

.PHONY: setup install activate