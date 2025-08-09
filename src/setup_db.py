from pathlib import Path
import sqlite3

BASE = Path(__file__).resolve().parents[1]
DB_PATH = BASE / "retail.db"
SCHEMA = BASE / "sql" / "01_schema.sql"
SEED = BASE / "sql" / "02_seed.sql"

def run_sql(path, conn):
    with open(path, "r", encoding="utf-8") as f:
        conn.executescript(f.read())

def main():
    conn = sqlite3.connect(DB_PATH.as_posix())
    run_sql(SCHEMA, conn)
    run_sql(SEED, conn)
    conn.commit()
    conn.close()
    print("Database created and seeded at:", DB_PATH)

if __name__ == "__main__":
    main()
