---
tags: math
feed: show
---

We want to calculate the [[Drag Factor]] for a given object. By definition, we want to know the acceleration felt during a given time interval. In other words, how fast the speed changes. For this, we need to measure the change in speed, but we also need an extra measurement, which can be either time or distance travelled.

# Notation
- $a$ : Drag Force i.e. acceleration felt by the object. As the object considered is fixed, this value is a constant
- For observation $i$ we also have:
	- $S_i$ : Initial Speed
	- $F_i$: Final Speed
	- $T_i$ : Time between measurements
	- $D_i$ : Distance between measurements 

# Results
This section summarizes the formulas we should use when given different data.
- The Time Based Approach includes speeds and time measurements.
- The Distance based approach includes speeds and distance measurements.

## Time Based Approach
Given the set of observations $\{ ( S_i, F_i, T_i ), i \in I_N \}$ where $I_N = \{ 1,2,... N \}$, the acceleration is best approximated by $$a = \frac{\sum_i \left ( F_i - S_i \right ) ^2}{\sum_i \left ( F_i - S_i \right ) T_i}$$
# Model
We take a set of sample measurements formed by the triplets $( S_i , F_i , T_i )$. Our measurements are not perfect, so we will need to model our uncertainty. We use the hidden variables $( S'_i , F'_i , T'_i )$  as the true values of these measurements, with
$$
\begin{align}
S_i \approx \mathcal{N} \left ( S^i_i , \alpha \right ) \\
F_i \approx \mathcal{N} \left ( F^i_i , \beta \right ) \\
T_i \approx \mathcal{N} \left ( T^i_i , \lambda \right ) \\
\end{align}
$$
with $\mathcal{N}$ being the [[Normal Distribution]] .

With this model we can apply the [[Maximum Likelihood Estimation]] framework with
- ( $\theta$ ) Model parameters: $a$, $\alpha$, $\beta$, $\lambda$, $S^i_i$ , $F^i_i$ , $T^i_i$ , $i \in \{ 1, 2, ..., N \}$
- ( $y$ ) Observations $S_i$ , $F_i$ , $T_i$ , $i \in \{ 1, 2, ..., N \}$

In order to relate these three metrics we will use the formula $a = t \times \Delta v$, relating acceleration to the delta in speed and time. Under constant acceleration, we get the constraint $a T'_i =  \left ( F'_i - S'_i  \right )$. Notice that this relate the hidden variables and not the error-prone observations.

# Calculations
Given the normal distributions above, and noting that a [[Normal Distribution]] $\mathcal{N} \left ( \mu , \sigma \right )$ has pdf $\frac{1}{\sigma\sqrt{2\pi}}\exp{ \left ( -\frac{1}{2} \left ( \frac{x-\mu}{\sigma} \right )^2 \right ) } \propto \frac{1}{\sigma}\exp{ \left ( -\frac{1}{2} \left ( \frac{x-\mu}{\sigma} \right )^2 \right )  }$, we get that

$$\mathbb{P} \left [ y | \theta \right ] \propto \prod_i \frac{1}{\alpha}\exp{ \left ( -\frac{1}{2} \left ( \frac{S'_i- S_i}{\alpha} \right )^2 \right )} \frac{1}{\beta}\exp{ \left ( -\frac{1}{2} \left ( \frac{F'_i- F_i}{\beta} \right )^2 \right )} \frac{1}{\lambda}\exp{ \left ( -\frac{1}{2} \left ( \frac{T'_i- T_i}{\lambda} \right )^2 \right )} $$  
Since we want to maximize this expression, we can take the log in order to simplify the equation without changing the solution. As such we are looking for

$$\underset{\theta}{argmax} \left \{ \sum_i -\log{\alpha } -\log{\beta} - \log{\lambda} - \frac{1}{2} \left ( \left ( \frac{S'_i- S_i}{\alpha} \right )^2 + \left ( \frac{F'_i- F_i}{\beta} \right )^2 + \left ( \frac{T'_i- T_i}{\lambda} \right )^2 \right ) \right \} $$

In order to include our key constraint $a = T'_i \times \left ( F'_i - S'_i  \right )$ for the acceleration $a$, we use the method of [[Lagrange Multipliers]] to append the variables $\lambda_i$ to our set of parameters $\theta$ and add the term $\left ( F'_i - S'_i - aT'_i \right )\lambda_i$ to our expression for $L$ , knowing we want to find $\underset{\theta}{argmax} \left \{ L \right \}$
$$\sum_i -\log{\alpha} -\log{\beta} - \log{\lambda} - \left ( \frac{1}{2} \left ( \frac{S'_i- S_i}{\alpha} \right )^2 +\left ( \frac{F'_i- F_i}{\beta} \right )^2 + \left ( \frac{T'_i- T_i}{\lambda} \right )^2 \right ) + \left ( F'_i - S'_i - aT'_i \right )\lambda_i $$

Taking derivatives with respect to our parameters in $\theta$, we get our system of equations

### Derivatives with respect to $S'_i$, $F'_i$ , $T'_i$
$$
\begin{align}
0 & = & \frac{\partial}{\partial S'_i }L & = & \left ( \frac{S'_i- S_i}{\alpha^2} \right ) - \lambda_i & \Rightarrow & S'_i & = & S_i + \lambda_i \alpha^2 \\
0 & = & \frac{\partial}{\partial F'_i }L & = & \left ( \frac{F'_i- F_i}{\beta^2} \right ) + \lambda_i & \Rightarrow & F'_i & = & F_i - \lambda_i \beta^2 \\
0 & = & \frac{\partial}{\partial T'_i }L & = & \left ( \frac{T'_i- T_i}{\lambda^2} \right ) - a\lambda_i & \Rightarrow & T'_i & = & T_i + a\lambda_i \lambda^2
\end{align}
$$

### Derivatives with respect to $\alpha$, $\beta$, $\lambda$
$$
\begin{align}
0 = \frac{\partial}{\partial \alpha }L &= \sum_i \left [ -\alpha^{-1} - \frac{1}{2} \left ( S'_i - S_i \right )^2(-2)\alpha^{-3} \right ] = \\
&= \sum_i \left [ -\alpha^{-1} + \left ( S'_i - S_i \right )^2\alpha^{-3} \right ] = \\
&= \sum_i \left [ -\alpha^{-1}  \right ] + N \left ( S'_i - S_i \right )^2\alpha^{-3}
\end{align}
$$
Multiplying both sides by $\alpha^3$ we get
$$
\begin{align}
0 &= \sum_i \left [ -\alpha^2 + \left ( S'_i - S_i \right )^2 \right ] \\
0 &= - N \alpha^2 + \sum_i \left ( S'_i - S_i \right )^2 \\
N \alpha^2 &= + \sum_i \left ( S'_i - S_i \right )^2 \\
\alpha^2 &= \frac{1}{N} \sum_i \left ( S'_i - S_i \right )^2
\end{align}
$$

Similarly,
$$
\begin{align}
0 = \frac{\partial}{\partial \beta }L &\Rightarrow \beta^2 = \frac{1}{N} \sum_i \left ( F'_i - F_i \right )^2 \\
0 = \frac{\partial}{\partial \lambda }L &\Rightarrow \lambda^2 = \frac{1}{N} \sum_i \left ( T'_i - T_i \right )^2
\end{align}
$$

### Derivatives with respect to $\lambda_i$
$0 = \frac{\partial}{\partial \lambda_i}L = \left ( F'_i + S'_i - aT'_i \right )$ 

### Derivative with respect to $a$
$0=\frac{\partial}{\partial \alpha}L = \sum_i T'_i\lambda_i$ 

### Solving the system of equations
Gathering all of the equations above we get

| From | Constraint |
| --- | --- |
| $S'_i$ | $\forall i : S'_i = S_i + \lambda_i \alpha^2$ |
| $F'_i$ | $\forall i : F'_i = F_i - \lambda_i \beta^2$|
| $T'_i$ | $\forall i : T'_i = T_i + a\lambda_i \lambda^2$ |
| $\alpha$ | $\alpha^2 = \frac{1}{N} \sum_i \left ( S'_i - S_i \right )^2$ |
| $\beta$ | $\beta^2 = \frac{1}{N} \sum_i \left ( F'_i - F_i \right )^2$ |
| $\lambda$ | $\lambda^2 = \frac{1}{N} \sum_i \left ( T'_i - T_i \right )^2$ |
| $\lambda_i$ | $\forall i : 0 = \left ( F'_i + S'_i - aT'_i \right )$ |
| $a$ | $0 = \sum_i T'_i\lambda_i$ |

Substituting the values of $S'_i$, $F'_i$ and $T'_i$ from the 1st three equations on all others we can get rid of these hidden variables, ending up with the simpler system

| From | Constraint | Substitution |
| --- | --- | --- |
| $\alpha$ | $\alpha^2 = \frac{1}{N} \sum_i \left ( \lambda_i \alpha^2 \right )^2$ | $S'_i = S_i + \lambda_i \alpha^2$ |
| $\beta$ | $\beta^2 = \frac{1}{N} \sum_i \left ( \lambda_i \beta^2 \right )^2$ | $F'_i = F_i - \lambda_i \beta^2$ |
| $\lambda$ | $\lambda^2 = \frac{1}{N} \sum_i \left ( a\lambda_i\lambda^2 \right )^2$ | $T'_i = T_i + a\lambda_i \lambda^2$ |
| $\lambda_i$ | $0 = \left ( F_i - \lambda_i\beta^2 \right ) - \left ( S_i + \lambda_i\alpha^2 \right ) - a \left ( T_i + a \lambda_i \lambda^2 \right )$ | $S'_i$, $F'_i$ and $T'_i$ as above |
| $a$ | $0 = \sum_i \left ( F_i - \lambda_i\beta^2 - S_i - \lambda_i\alpha^2 \right ) \lambda_i$ | $aT'_i =  F'_i - S'_i = F_i - \lambda_i\beta^2 - S_i - \lambda_i\alpha^2$ |

Focusing on the $\lambda_i$ equation
$0 = \left ( F_i - \lambda_i\beta^2 \right ) - \left ( S_i + \lambda_i\alpha^2 \right ) - a \left ( T_i + a \lambda_i \lambda^2 \right ) = - \lambda_i \left ( \alpha^2 + \beta^2 + a^2\lambda^2 \right ) + \left ( F_i - S_i - aT_i \right )$

Which can be solved for $\lambda_i$ as 
$$\lambda_i = \frac{F_i - S_i - aT_i}{\alpha^2 + \beta^2 + a^2\lambda^2}$$ 
The equations for $\alpha$ and $\beta$ can be simplified by multiplying both sides by $\frac{N}{\alpha^2}$ and $\frac{N}{\beta^2}$ respectively, giving us
$$
\begin{align}
N &= \sum_i \lambda_i^2\alpha^2 \\
N &= \sum_i \lambda_i^2\beta^2
\end{align}
$$
Focusing on the equation for $a$, we get
$$
\begin{align}
0 &= \sum_i \left ( F_i - \lambda_i\beta^2 - S_i - \lambda_i\alpha^2 \right ) \lambda_i =\\
&= \sum_i \left ( F_i - S_i \right ) \lambda_i - \sum_i \lambda_i^2\beta^2 + \sum_i \lambda_i^2 \alpha^2 = \\
&= \sum_i \left ( F_i - S_i \right ) \lambda_i - N + N = \\
&= \sum_i \left ( F_i - S_i \right ) \lambda_i = \\
&= \sum_i \left ( F_i - S_i \right ) \left ( \frac{F_i - S_i - aT_i}{\alpha^2 + \beta^2 + a^2\lambda^2} \right ) = \\
\end{align}\\
$$
Multiplying both sides by the positive number $\alpha^2 + \beta^2 + a^2\lambda^2$ we get
$$
\begin{align}
0 &= \sum_i \left ( F_i - S_i \right ) \left ( F_i - S_i - aT_i \right ) \Leftrightarrow \\
0 &= \sum_i \left ( F_i - S_i \right ) ^2 - a \sum_i \left ( F_i - S_i \right )T_i \Leftrightarrow \\
a &= \frac{\sum_i \left ( F_i - S_i \right ) ^2}{\sum_i \left ( F_i - S_i \right ) T_i}
\end{align}
$$

## Distance Based Approach
Will write this one down when I feel like it :)