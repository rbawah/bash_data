#!/bin/bash
echo "Hello, World!"

python -m venv myenv

source myenv/bin/activate

echo "scikit-learn" > requirements.txt
echo "numpy" >> requirements.txt
echo "pandas" >> requirements.txt

pip install -r requirements.txt

echo "print('Hello from Python!')" > hello.py

echo "importing necessary libraries..."
echo "import numpy as np" >> hello.py
echo "import pandas as pd" >> hello.py
echo "from sklearn.ensemble import RandomForestClassifier" >> hello.py

python hello.py