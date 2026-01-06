#!/bin/bash
# Activate virtual environment and run the server
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    ./venv/bin/pip install -r requirements.txt
fi

source venv/bin/activate
echo "Starting backend server..."
uvicorn app.main:app --reload --env-file .env --host 0.0.0.0 --port 8000
