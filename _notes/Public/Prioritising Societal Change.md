---
tags: idea, society
---

Starting from the [[Starting a New App]] template

#next-steps Go through WAcademy's WhatsApp message to set myself up.

# Motivation

Joshua Green describes Utilitarianism in [Moral Tribes](https://www.goodreads.com/book/show/17707599-moral-tribes) as a Pricing mechanism for different human values. We use monetary prices as a proxy to the value of different objects in society, based on Supply and Demand. We can use Supply and Demand to price Societal Change.

# App flow

## Goal

We want to compare the value add in different Universes:

- A world with an UBI > 100$ per month vs a world with no UBI
- A pro-choice world vs A pro-life world
- An open borders world ( i.e. no passports ) vs a world with borders ( as we have it now )

To do this we will have users answer questions about the various changes so that we can build estimates of the utility $C_{utility}$ and likelihood $C_{likelihood}$ of any change $C$ .

## User Flow

### Core Flow

- Users will compare the value add of these changes and their likelihood. They will do it by getting a table such as:
  | Universe $\alpha$ | Change | Universe $\beta$ |
  | ----------- | -------- | ----------- |
  | UBI > 100$ | 1 | UBI = 0$ |
  | Pro-choice world | 2 | Pro-life world |
  | Closed borders | 3 | Open borders |

Having seen this table, they are asked 2 questions:

1. Which Universe would you rather live in, $\alpha$ or $\beta$
2. Which of these changes is most likely to change over the next decade: 1, 2 or 3?

### Advanced Flows

Users should be able to

1. Add Changes to an Ignore list, so that they are not asked about that change again
2. Add Changes to a preferred list, so that they see it compared with others more often
3. Propose New CHanges
4. See the current best changes, in a Top Changes table. This will be based on ranking the changes by the $C_{utility} \times  C_{likelihood}$ properties of a change $C$ , described below.

# Business Logic

## Estimating $C_{likelihood}$

$C_{likelihood} \sim \beta \left ( C_p, C_n \right )$ will be described with a [Beta distribution](https://en.wikipedia.org/wiki/Beta_distribution) , requiring 2 parameters, $p$ and $n$.

### Initialization

$\alpha=\beta=1$

### Update

Whenever a user submits a vote, they provide the information that $C_{likelihood} > A_{likelihood} \land C_{likelihood} > B_{likelihood}$ for some changes $A$, $B$ and $C$ .
The result of this depends on details to be completed on the [[Beta Distribution]] note. Until that get's finished, we will update the values of $A$, $B$, $C$ to $A'$, $B'$, $C'$ via:
| $X$ | Old $X_p$ | Old $X_n$ | New $X_p$ | Old $X_n$ |
| --- | --- | --- | --- | --- |
| $A$ | $A_p$ | $A_n$ | $A_p$ | $A_n + \frac{C_n}{C_p+C_n}$ |
| $B$ | $B_p$ | $B_n$ | $B_p$ | $B_n + \frac{C_n}{C_p+C_n}$ |
| $C$ | $C_p$ | $C_n$ | $C_p + \frac{A_p}{A_p+A_n}$ | $C_n$ |

## Estimating $C_{utility}$

$C_{utility} \sim \mathcal{N} \left ( C_\mu , C_\sigma \right )$ will be modelled with a [Normal distribution](https://en.wikipedia.org/wiki/Normal_distribution), requiring 2 parameters, $\mu$ and $\sigma$.

### Initialization

$\mu=1000, \sigma=100$

### Updates

Whenever a user submits a vote, they provide the information that $C_{utility} > B_{utility} + A_{utility}$ or $C_{utility} < B_{utility} + A_{utility}$ .

# Database

Tables needed:

1. User
   1. username: str
   2. email: str
2. Change
   1. submitted_by: FK to User
   2. option_a: str
   3. option_b: str
   4. details: str
   5. likelihood_alpha: float
   6. likelihood_beta: float
   7. utility_mean: float
   8. utility_sigma: float
3. Vote
   1. change_a: FK to change
   2. change_b: FK to change
   3. change_c: FK to change
   4. universe_chosen: Option ( $\alpha$ or $\beta$ )
   5. change_chosen: Option ( 1, 2 or 3 )
4. User_Change
   1. user: FK to user
   2. change: FK to Change
   3. ignored: boolean
   4. favorite: boolean
