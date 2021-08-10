install:
	pip install --upgrade pip &&\
		pip install -r requeriments.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requeriments-azure.txt

install-google:
	pip install --upgrade pip &&\
		pip install -r requeriments-gcp.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install lint test