#!/usr/bin/env -S uv run --script
# /// script
# dependencies = ["ipython", 'pandas']
# ///

print("importing ipython")
import IPython
print("importing pandas")
import pandas as pd

df = pd.DataFrame()
print(df)

IPython.embed()
