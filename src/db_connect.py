import sqlite3
from pathlib import Path

def get_connection(db_path: str = "retail.db"):
    """Return a sqlite3 connection to the given DB path (creates file if missing)."""
    p = Path(db_path)
    conn = sqlite3.connect(p.as_posix())
    return conn
