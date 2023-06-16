# Example Makefile for PyTorch project

# Set up variables
PYTHON := python3
PIP := pip3

# Default target
all: test

# Install dependencies
install:
    pip install -r requirements.txt

# Run tests
test:
    $(PYTHON) -m unittest discover -s tests -p "test*.py"

# Lint code
lint:
    pylint --disable=R,C sentiment_analysis.py

# Clean generated files
clean:
    rm -rf build/
    rm -rf dist/
    rm -rf *.egg-info

# Additional targets...
