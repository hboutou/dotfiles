#! /usr/bin/env -S uv run --script

# /// script
# requires-python = ">=3.11"
# dependencies = [
#     "requests",
# ]
# # better reproduceacility
# [tool.uv]
# exclude-newer = "2025-01-25T00:00:00Z"
# ///

import requests
print('works')
