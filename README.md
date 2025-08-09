# Retail Analytics — SQL + Python

**Goal**: Answer key business questions (monthly revenue, top products, churn signals) using SQL and Python.

**Stack**: SQLite/Postgres (SQL joins, CTEs, window functions basics), Python (pandas, matplotlib).

**Dataset**: Sample retail dataset provided via `sql/02_seed.sql` (toy-size, for demo). You can replace it with a real/public dataset later.

## How to run
1. Create a virtual env (optional) and install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Create the SQLite database and load schema + seed data:
   ```bash
   python src/setup_db.py
   ```
3. Open the notebook and run the analysis:
   ```bash
   jupyter notebook notebooks/analysis.ipynb
   ```

## Results
- SQL KPIs in `sql/03_kpi_queries.sql`.
- Notebook creates basic monthly revenue and category charts and writes CSVs to `data/processed/`.
- Add a screenshot of your BI dashboard to `/dashboards`.

## What I learned (fill this in)
- Example: Writing joins and CTEs; translating business questions into SQL; basic plotting; reproducible workflow.

---
*Generated 2025-08-09.*
