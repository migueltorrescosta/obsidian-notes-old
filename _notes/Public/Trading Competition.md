#idea #tournment
#next-steps Build the [[Jupyter Notebook]] to do this.

# Goal
Build a Stock Exchange Simulator in a [[Jupyter Notebook]] similar to how the [Liar's Game](https://colab.research.google.com/github/migueltorrescosta/tutor/blob/master/Tournments/LiarsGame.ipynb) works. It would be cool to see different people try out different strategies.

# Approach
There are 3 key Data Structures needed:

## Stock Price
Tracks the known prices of each company and generates block box estimates of future prices. The final price needs to be set in advance in order for the estimates to be of value. The final prices will not be shared with anyone, the estimates will be shared individually with the players

## Stock Exchange
Has access to the Stock Price object, keeps track of the order book and stock ownership. It asks players what orders they want to add/removein a round-robin fashion.

## Player
The player class needs a `process_turn` method which takes
	- Takes the inputs
		- `self`, 
		- `order-book`
		- `internal-predictions`
	- Returns a list of order changes from:
		- `remove-order(order_id)`
		- `add-buy-order(company_id, n_shares)`
		- `add-sell-order(company_id, n_shares)`.

# Metrics
For each tournment, make sure that at the end the Stock Exchange class can show the plots:
- Evolution of the Order Book.
- Evolution of the Player's wealth using the final Stock Price.
- Evolution of the Player's wealth using the Market Price at each point in time.
- Evolution of individual Stock ownership. Since this has two dimentions ( player & stock ), I still need to figure out the best graph for this.