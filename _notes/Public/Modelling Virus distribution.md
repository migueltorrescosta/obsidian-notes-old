#biology
We want to model the distribution of the existing viruses in a sample based on the distribution of the fluorophores in the respective point cloud.

# Requirements
Having estimates for the values of $\lambda_{f,v}$ , as per the notation below.
#next-steps : Can we find a table of such values available online?

# Notation
- $V$ : Set of viruses $v$
- $F$ : Set of fluorophores $f$
- $N_v$ : number of viruses $v$ in the sample.
- $M_f$ : number of fluorophores $f$ in the sample.
- $\lambda_{f,v}$ : frequency with which fluorophore $f$ attaches to virus $v$.
- $P_{f,v}$ : Number of points observed due to fluorophore $f$ attaching to virus $v$.
- $P_{f}$ : Number of points observed corresponding to fluorophore $f$.

# Model
A fluorophore only emits light when attached to the virus. We have:
- $\mathbb{E} [ P_{f,v} ] \propto N_v M_f \lambda_{f,v}$
- $P_f = \sum_v P_{f,v}$

To get exact equations for the model we further introduce
- A model parameter $k$ to handle the proportionality $\propto$.
- A poisson approximation $\mathcal{P}$ to $P_{f,v}$, since it  follows a Binary distribution with very large numbers of viruses and fluorophores, so [this limit applies](https://math.stackexchange.com/a/364476).

Getting the model
- $P_{f,v} \approx \mathcal{P}_{ \left ( k N_v M_f \lambda_{f,v} \right ) }$, where $\mathbb{P} [ \mathcal{P}_\lambda = n ] = \frac{\lambda^n}{n!}e^{-\lambda}$
- $P_f = \sum_v P_{f,v}$

To find our desired virus distribution $[ N_v : v \in V ]$ we can apply the [[Maximum Likelihood Estimation]] framework with
- ( $\theta$ ) Model parameters: $k$, $\lambda_{f,v}$, $N_v$, $M_f$, $P_{f,v}$ 
- ( $y$ ) Observations $P_f$
- Constraints $P_f = \sum_v P_{f,v}$

#next-steps 
- Build out the probability of the underlying parameters given the observations.
- Go through the calculations]
- reach out to Jonathan for more info :) 
	- DStorm has a model that takes into account the camera as well
	- Keywords
		- binding model   $K_d \left [ M \right ]$  A+B
		- disassociation constant


