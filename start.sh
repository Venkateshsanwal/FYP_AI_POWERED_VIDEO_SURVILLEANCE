#!/bin/bash

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install requirements
echo "Installing dependencies..."
pip install -r requirements.txt

# Create output directory if it doesn't exist
mkdir -p output

# Start the FastAPI server
echo "Starting server..."
uvicorn main:app --host 0.0.0.0 --port 8000 --reload