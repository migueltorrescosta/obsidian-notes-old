---
tags: coding
---

An amazing [[Python]] tool that allows us to [[Test]]  locally and offline, i.e. with no Internet Connection

# Problem
Our current code makes HTTP calls to external services. Any flakiness with the external services translates to failed tests, even if our own code works as expected.

# Solution
[VCR.py](https://vcrpy.readthedocs.io/en/latest/) runs the test suit live, records all the responses in a fixtures folder, and uses this folder on subsequent test runs, no longer requiring access to the Web in order to run the tests. It is also much faster since it just fetches the cached HTTP calls, rather than waiting on external servers for the code to be run