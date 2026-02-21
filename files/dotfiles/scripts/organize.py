#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.12"
# ///

import os
import shutil
from pathlib import Path

def organize():
    cwd = Path(os.getcwd())
    script_name = Path(__file__).name

    for item in list(cwd.iterdir()):
        if not item.is_file() or item.name == script_name:
            continue

        ext = item.suffix.lstrip(".").lower()
        if not ext:
            continue

        dest_dir = cwd / ext
        dest_dir.mkdir(exist_ok=True)

        dest = dest_dir / item.name
        if dest.exists():
            base, suffix = item.stem, item.suffix
            counter = 1
            while dest.exists():
                dest = dest_dir / f"{base}_{counter}{suffix}"
                counter += 1

        shutil.move(str(item), str(dest))
        print(f"{item.name} -> {dest_dir.name}/")

if __name__ == "__main__":
    organize()
