#!/bin/sh

set -e

echo "Installing dependencies..."
pip install --no-cache-dir -r requirements.txt

echo "Running tests..."
python -m pytest

echo "Tests passed!"