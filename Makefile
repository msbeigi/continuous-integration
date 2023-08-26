# Set up variables
PYTHON := python3
PIP := pip3

# Default target
all: install lint test format

# Install dependencies
install:
	pip install -r requirements.txt

# # Run tests
# test:
#     $(PYTHON) -m unittest discover -s . -p "test_*.py"

# Format code
format:
    black "*.py"

# Lint code
lint:
    pylint --disable=R,C sentiment_analysis.py

# Clean generated files
clean:
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
