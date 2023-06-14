# Example Makefile for PyTorch project

# Set up variables
PYTHON := python3
PIP := pip3

# Default target
all: test

# Install dependencies
install:
    #echo "Running installments"
    #pip install --upgrade pip &&\
    pip install -r requirements.txt

# Run tests
test:
    #echo "Running tests"
    $(PYTHON) -m unittest discover tests

# Lint code
lint:
    #echo "Running lint"
    pylint --disable=R, C sentiment_analysis.py

# Clean generated files
clean:
    rm -rf build/
    rm -rf dist/
    rm -rf *.egg-info

# Additional targets...
