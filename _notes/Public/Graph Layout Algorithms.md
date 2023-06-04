---
tags: math
---

Most models that convert a graph into a 2D map of points use force based systems to find a layout. This works wonderfully however there are some odd situations created by local minima: planar graphs don't become planar due to the original 

# Existing solutions
1. NetworkX provides a [comprehensive list of Graph Layout mechanisms](https://networkx.org/documentation/stable/reference/drawing.html#module-networkx.drawing.layout) 
	1. Historically I found the best results using the Kamada Kawai algorithm.

#next-steps Is it possible to bypass local minima in force based layout algorithms by using the force based approach on more than 2 dimensions, and iterate the algorithm along a slow collapse of the extra dimensions? Worth studying :)

# Related
- [[Infographic]]
- [[Interesting Problems for the Bored Mind]]