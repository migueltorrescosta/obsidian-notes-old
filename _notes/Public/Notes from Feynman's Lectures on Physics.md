[[Feynman]] is one of the greats. He assisted in the development of the atomic bomb, got a Nobel Prize in Physics, and was generally an impressive person. I have recently started reading Feynman's Lectures on Physics, and started taking notes of all the tiny little things that did not seem right.

# Volume I, Chapter 3, Page 7
All proteins are not enzymes, but all enzymes are proteins.

## Problem
This is just me being pedantic, but he meant *Not all proteins are enzymes* instead of *All proteins are not enzymes*. If all proteins are not enzymes, then no enzyme could be a protein, which is a contradiction with his next statement.

# Volume I, Chapter 6, Page 3
In this paragraph Feynman had been discussing probabilities associated with flipping coins. His goal was to prove that if you flip $30$ coins, the most likely amount of heads is $15$ coins. Even though the conclusion is correct, I disagree with the reasoning:

## Feynman's reasoning
Why did we choose $15$ as more likely than any other number? We must have argued with ourselves in the following manner: If the most likely number of heads is $N_H$ in a total number of tosses $N$, then the most likely number of tails $N_T$ is $( N − N_H )$. (We are assuming that every toss gives either heads or tails, and no “other” result!) But if the coin is “honest,” there is no preference for heads or tails. Until we have some reason to think the coin (or toss) is dishonest, we must give equal likelihoods for heads and tails. So we must set $N_T = N_H$. It follows that $N_T = N_H = \frac{N}{2}$, or $\mathbb{P}(H) = \mathbb{P}(T) = 0.5.$

## Problem
The misstep is in assuming that there is a unique value that maximizes the number of heads and tails. As a sanity check, replace $30$ by an odd number, and you immediately see that the equation $N_T = N_H = \frac{N}{2}$ can't be correct. Even if we use an even number, replace the [[Binomial Distribution]] by a symmetric [[Beta Distribution]] with parameters such that most of the probability mass is at the extremes, and this reasoning fails.

As a simpler example, say we have the discrete distribution
| $x$ | 0 | 1 | 2 | 3 | 4 |
| --- | --- | --- | --- | --- | --- |
| $\mathbb{P} [ x ]$ | $30$% |$15$% | $10$% | $15$% | $30$% |

In this case we still have the same symmetry around the middle value $2$ that is used by Feynman, but we no longer have that the central value is the most likely one.

# WIP
I'll keep updating this post as I read more of Feynman's work :)