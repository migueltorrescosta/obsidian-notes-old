---
tags: math
---

Stochastic Volatility Model for a Stock Price. See [[Stochastic Calculus]]

# Links
- [Introduction](http://www.bachelier-paris.fr/cours/source/ressources/2019-rosenbaum-3.pdf)
- [Wikipedia page](https://en.wikipedia.org/wiki/Heston_model)

# Summary

- $dS_t = S_t \sqrt{V_t} dW_t$
- $dV_t = \lambda \left ( \theta - V_t \right ) dt + \lambda \nu \sqrt{V_t}dB_t$ 
- $\left < dW_t , dB_t \right > = \rho dt$ 
where
- $W_t$, $B_t$ are standard Brownian Motions
- $\lambda$, $\rho$, $\mu$, $\theta$ are constants
- $S_t$ represents the stock price
- $V_t$ represents the stock volatility