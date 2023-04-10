#coding #math 

# Code

```python
class next_prime( object ):

    def __init__( self ):
        self.primes = [2]

    def __call__( self ) -> int:
        n = self.primes[-1] + 1
        while not self.is_prime(n):
            n+=1
        self.primes.append(n)
        return n

    def is_prime(self, k: int) -> bool:
        for i in self.primes:
            if k%i==0:
                return False
        return True
```

# Usage

```python
x = next_prime() # creates prime generator object starting at 3
x() # returns the next prime, 3
x() # 5
x() # 7
x.primes # [2,3,5,7] # Lists all primes seen so far
```