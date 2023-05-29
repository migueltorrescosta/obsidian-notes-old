---
tags: coding
---

[[List Comprehensions]] in [[Python]] look like the code below

```python
[i**2 for i in range(5) if i%2==0]
```

These tend to be fast enough that we don't care about what get's executed when. However let us look at the more complex calculation

```python
[heavy_async_calculation(i) for i in range(5) if heavy_check(i)]
```

In this situation, we might want to be sure that the `async_calculation` is triggered as soon as it is found. We could play it safe with a for loop

```python
for i in range(10) :
	if heavy_check(i):
		heavy_async_calculation(i)
```

However we can check the order of operations in the list comprehension easily:

```python
def f(i):
    print(f"Check {i}%2")
    return i%2==0

[print(i) for i in range(10) if f(i)]
```

creates the output

```python
Check 0%2
0
Check 1%2
Check 2%2
2
Check 3%2
Check 4%2
4

[None, None, None]
```

Confirming that the execution of the `print` / `heavy_async_calculation` is done as soon as the check passes
