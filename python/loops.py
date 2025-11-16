#!/usr/bin/env python3
"""
Loop over a JSON array of users and print some fields.
"""

import json
from pathlib import Path

DATA_PATH = Path(__file__).resolve().parents[1] / "input" / "users.json"


def load_users(path: Path):
    if not path.exists():
        raise FileNotFoundError(f"Missing JSON file: {path}")
    with path.open() as f:
        return json.load(f)


def main():
    print("== Python loops demo ==")
    users = load_users(DATA_PATH)

    # Expecting structure: { "users": [ { "name": "...", "role": "..." }, ... ] }
    for user in users.get("users", []):
        name = user.get("name", "<unknown>")
        role = user.get("role", "<unknown>")
        print(f"User: {name:<15} Role: {role}")

    # Simple numeric loop
    print("\nNumeric loop:")
    for i in range(1, 6):
        print(f"Iteration {i}")


if __name__ == "__main__":
    main()

