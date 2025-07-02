# 🏀 WNBA Player Rating System
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

This project creates a custom WNBA player evaluation system inspired by ESPN's NBA Player Efficiency Rating (PER). It calculates and compares three performance metrics — **Efficiency**, **Win Score**, and a custom **PER-like rating** — using publicly available WNBA season totals.

---

## 📌 Project Purpose

- Evaluate WNBA player performance using multiple rating formulas  
- Normalize for playing time and team changes  
- Provide a transparent, reproducible workflow for analysis  

---

## 📂 Project Structure

```
📁 data/
 ├── Raw/        → Unmodified data scraped from Basketball-Reference  
 ├── Cleaned/    → Filtered to remove duplicates and keep "TOT" rows only  
 └── Metrics/    → Final metrics by player and year (2023–2025)  

📁 notebooks/
 ├── scrape.ipynb     → Scrapes WNBA player totals  
 └── Metrics.ipynb    → Calculates Efficiency, Win Score, and PER

README.md
```

## 📈 Metrics Explained
All metrics are computed per game (or per minute for PER), and adjusted to remove duplicate entries for multi-team players.

### 🔹 1. Efficiency
A basic per-game productivity measure:

Efficiency = (PTS + TRB + AST + STL - TOV - (FGA - FG) - (FTA - FT)) / G

### 🔹 2. Win Score
A weighted version of box score stats:

WinScore = (PTS + TRB + STL + 0.5 × AST + 0.5 × BLK  - FGA - TOV - 0.5 × FTA - 0.5 × PF) / G

### 🔹 3. Custom PER
A minute-adjusted composite score using weighted coefficients:


PER = 0.68 + (1 / MP) × [ 26.77 × FG - 35.58 × FG + 26.32 × FT - 25.47 × FTA + 42.74 × ORB + 11.45 × DRB + 29.70 × AST + 47.30 × STL + 38.00 × BLK - 47.90 × TOV - 18.80 × PF + 41.10 × PTS]

These weights are loosely modeled after NBA PER logic

## 🚀 How to Run
### 1. Clone the repo

git clone https://github.com/smonroe6/WNBA-Player-Rating.git  
cd WNBA-Player-Rating

### 2. Install dependencies

Only pandas is required:  
pip install pandas

### 3. Run the notebooks

notebooks/scrape.ipynb → Fetches and saves raw season totals

notebooks/Metrics.ipynb → Cleans data, calculates all three metrics, and saves to CSV

## ✅ Future Enhancements
Add per-possession and pace-adjusted stats

Visualize trends with Tableau or Streamlit

Create player dashboards and career summaries

Automate scraping for real-time updates during the season

## 🤝 Connect
Have ideas, feedback, or want to collaborate on WNBA analytics?  
Feel free to reach out or open a pull request!  
Can be reached at sdmonroe1999@gmail.com

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute this project with attribution.  
See the full license text in the [LICENSE](LICENSE) file.

