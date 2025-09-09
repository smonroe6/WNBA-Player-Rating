#!/bin/bash

# Activate your virtual environment if needed
# source /path/to/your/venv/bin/activate

# Change to your project directory
cd /Users/stephenmonroe/Desktop/Coding/WNBA-Player-Rating/

# Run notebooks (using papermill or jupyter nbconvert)
jupyter nbconvert --to notebook --execute notebooks/CurrentSeason.ipynb --output notebooks/CurrentSeason.ipynb

# Update the last_updated.txt file
date -u +"%Y-%m-%dT%H:%M:%SZ" > data/Metrics/last_updated.txt

# Git commands to push changes
git add .
git commit -m "Update $(date)"
git push origin main
