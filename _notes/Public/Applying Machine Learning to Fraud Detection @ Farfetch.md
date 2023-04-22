---
tags: math
title: Applying Machine Learning to Fraud Detection @ Farfetch
---

**Supervisor: Cristina Cerqueira**

When I first joined [[Applying Machine Learning to Fraud Detection @ Farfetch]] I was told they were looking for someone to implement [[Machine Learning]] algorithms to help predict possible fraud attempts. These fraud attempts can consist of something as simple as using someone else's credit card to make purchases to more convoluted methods which I am not aware of.

On my first day I realized I was the only person working on this project. I dived into learning [[SQL]] and [[Python]]'s [[Pandas]] module, both of which I was working with for the first time, and into [[Machine Learning]] algorithms. I used [Microsoft's Azure Machine Learning Studio](https://studio.azureml.net/) for a quick testing of different Machine Learning algorithms, and I repeated the same in R to double-check the accuracy of different algorithms. Both agreed that [[Random Forests]] was the most efficient method.

Having decided on Random Forests for the initial implementation in Python, the next three weeks consisted of doing the manual labor: building the queries to retrieve all the information needed efficiently, where information was not only across different tables but also different databases. Transforming the raw information into more relevant data using tips from field experts at [[Applying Machine Learning to Fraud Detection @ Farfetch]], checking that datatypes match,... and finally running the Machine Learning algorithm on the transformed data. After all this the python/sql scripts worked as expected. I quickly tried the same scripts with different algorithms to check (again) for efficiency, but similarly to the initial tests Random Forests performed best.

All of the above was done on static data. I still had to make it so that the algorithm could run live. The speed of the script wasn't an issue, but I had yet to understand the way Farfetch data pipelines worked so that I could integrate my work. Unfortunately my internship was coming to an end, and I had to go back to my studies in October. I spent my 2nd last week organizing my code (It was a mess when I started, but by the end I was rather happy with it's clarity), and writing plans/suggestions/documentation for what exists/could be improved/needs to get done. In the last week a new intern, Nuno Carneiro, came along to continue this project (which by then got the informal nickname of [[Project Sherlock]]). During that week my work was to put him up to date on the work that was done.

Nuno was doing his Master thesis at [[Applying Machine Learning to Fraud Detection @ Farfetch]], specifically about implementing [[Machine Learning]] in industry (titled [A data mining based system for credit-card fraud detection in e-tail](https://www.sciencedirect.com/science/article/abs/pii/S0167923617300027)) , so he wrote his thesis alongside this internship (and I got to co-author the paper given my initial role in [[Project Sherlock]]).

Looking back I reckon I would've been more productive if I practiced more SQL/Python and less time on understanding the theory behind the Machine Learning algorithms used, but they were so interesting. As much as I like coding, there will always be a mathematician in me curious about how things work, and not just building products.

I'd like to thank [João Sousa](https://www.linkedin.com/in/jgsousa) (Pandas expert) and Carlos Gomes (SQL expert) for all the technical support they've given me during the internship, and everyone else who was there during breaks and lunch and gym sessions and dinners out. Couldn't have had a better internship.