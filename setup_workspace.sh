#!/bin/sh

python3 -m venv venv

echo "Adding best guess for cectf-stats-worker repository to PYTHONPATH"
echo "export PYTHONPATH=\"$(dirname `pwd`)/cectf-stats-worker\"" >> venv/bin/activate

source venv/bin/activate

pip install -e .
pip install -r test_requirements.txt

mkdir instance
echo "CECTF_FRONTEND_URL = 'http://127.0.0.1:5000'" >> instance/config.py
echo "CECTF_SERVER_URL = 'http://127.0.0.1:5001'" >> instance/config.py
