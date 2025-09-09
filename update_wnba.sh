#!/bin/bash

# Activate your virtual environment if needed
# source /path/to/your/venv/bin/activate

# Change to your project directory
cd /Users/stephenmonroe/Desktop/Coding/WNBA-Player-Rating/notebooks

# Run notebooks (using papermill or jupyter nbconvert)
python3 -m nbconvert --to notebook --execute CurrentSeason.ipynb --output executed_CurrentSeason.ipynb

# Change to your project directory
cd /Users/stephenmonroe/Desktop/Coding/WNBA-Player-Rating/

# Update the last_updated.txt file
date -u +"%Y-%m-%dT%H:%M:%SZ" > data/Metrics/last_updated.txt

# Git commands to push changes
git add .
git commit -m "Update $(date)"
git push origin main
