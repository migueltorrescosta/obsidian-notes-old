---
tags: math, statistics
---

# Links
- [WIkipedia page](https://en.wikipedia.org/wiki/Granger_causality)

Statistical Hypothesis test to determine whether one time series is useful for predicting another

# Definition
A sequence $X$ is said to Grager-cause a sequence $Y$ if
- $\mathbb {P} [Y(t+1)\in A\mid {\mathcal {I}}(t)]\neq \mathbb {P} [Y(t+1)\in A\mid {\mathcal {I}}_{-X}(t)]$ 

## Notation
- $\mathbb{P}$ denotes the probability of an event
- $X$, $Y$ are the 2 sequences
- $t$ denotes time
- $A$ is an arbitrary non-empty set
- $\mathcal {I}(t)$  and $\mathcal {I_{-X}}(t)$ denote filtrations ( See [[Filtration]] )