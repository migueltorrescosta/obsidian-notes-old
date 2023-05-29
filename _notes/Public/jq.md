---
tags: coding
---

Command line utility to extract info from JSONs

# Sources

- [Webpage](https://stedolan.github.io/jq/)

# Examples

`jq -r '.assets[] | select(.name | contains("my-asset")) | .url')

Gets the list of assets, filters by any who has `my-asset` in the `name` field, and returns the associated URLs
