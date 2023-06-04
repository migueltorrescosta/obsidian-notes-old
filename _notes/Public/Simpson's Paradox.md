---
tags: fallacy, math
feed: show
---

A statistical phenomenon where an association between two variables in a population emerges, disappears or reverses when the population is divided into subpopulations. Simpson's paradox is just an apparent paradox. When we look underneath the cover there is no contradiction. It is based on a logical step that is made often but is nonetheless wrong. Intuitively it goes as follows:

# Sources

- Cristopher Olah's [post](http://colah.github.io/posts/2015-09-Visual-Information/).

# Example

Let's say that We have 2 vaccines $\alpha$ and $\beta$ which are good at removing kidney stones. In trials with small kidney stones vaccine $\alpha$ is better. In trials with large kidney stones vaccine $\alpha$ is also better. Then $\alpha$ is better overall, right?

Not always.

We'll have to look into the number of trials for each experiment to see where we might go wrong. Say we had the following number of trials in each sample. Each cell consists of the comparison between _number of successful trials/total trials ( percentage of success)_

| | Treatment $\alpha$ | Treatment $\beta$ |
| --- | --- | --- | --- |
| Small Kidney Stone | 180 out of 200 people (90%) | 600 out of 800 people (75%)
| Large Kidney Stone | 200 out of 800 people (25%) | 40 out of 200 people (20%)
| Total | 380 out of 1000 people (38%) | 640 out of 1000 people (64%)

The main idea to take is that even though vaccine $\alpha$ is better than vaccine $\beta$ in both small and large kidney stone treatments, Vaccine $\beta$ was overwhelmingly given to people with Small Kidney stones which were easier to cure, and Vaccine $\alpha$ was overwhelmingly given to people with Large Kidney Stones.

## Insight
This shows that dividing into the correct subpopulations is essential to understand the best treatment, and in general the impact of any variables affecting the result. News papers often extrapolate more than they should from existing studies.
🚨 It does not suffice to take into account the overall population results

# Related
- [[Interesting Problems for the Bored Mind]]
