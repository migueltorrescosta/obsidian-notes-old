---
tags: math
feed: show
---

We will apply [[Mathematical Induction]] to the following statement

> All horses have the same colour pattern

# Induction Hypothesis
Any set of $n$ horses $\{ h_1, h_2,... h_n \}$ have the same colour pattern.

# Base case
For $n=1$ we have a single horse, so there can be only one colour pattern.

# Inductive Step
Assume that the statement is true for $n$. Take the set $\{ h_1, h_2,..., h_n, h_{n+1} \}$ with $n+1$ horses. By our hypothesis the set of horses $\{ h_1,...,h_n \}$ has a single colour pattern, and the set $\{ h_2, ... , h_n, h_{n+1} \}$ also has a single colour pattern. Since this must be the colour pattern of their intersection set $\{ h_2,...h_n \}$, then the entire set of $n+1$ horses has the same colour.

# Conclusion
All three elements of mathematical induction are fulfilled. Can you spot the logical error?