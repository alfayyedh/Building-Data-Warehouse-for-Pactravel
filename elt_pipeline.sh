#!/bin/bash

echo "========== Start Orchestration Process =========="

# Virtual Environment Path
VENV_PATH="/home/alfayyedh/pacmann/data-warehouse/pactravel-dataset/.venv/bin/activate"

# Activate Virtual Environment
source "$VENV_PATH"

# Set Python script
PYTHON_SCRIPT="/home/alfayyedh/pacmann/data-warehouse/pactravel-dataset/main_elt_pipeline.py"

# Run Python Script 
python "$PYTHON_SCRIPT"

echo "========== End of Orchestration Process =========="