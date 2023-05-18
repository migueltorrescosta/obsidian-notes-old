Guidelines on how to [[Test]]
- Keep tests grouped by what they test
- Good Signal to Noise: Refactor away repeated code across tests
- Mock any external calls: we are testing our code, not our external dependencies
- Name tests `should_do_X_when_Y`, prefixing it with `test_` if the framework requires it.
- We don't need to test every single function individually:
	- We should find a good balance such that we test for the behaviour / interfaces we want to be sure don't change, and the smaller functions that are used by our interfaces will be naturally covered.
	- An uncovered function means that either we are missing an higher level test OR the code can be deleted.

# Test Types

## Unit
Test individual functionality

## Integration
Test calls and joint usage of different services / components

## Load
Measure how much load until you get 500s or failures.

## Performance
Under a known specific load, measure how fast/slow the response times would be.

## Regression Testing
They make sure that any changes to our codebase do not lead to code corruption or unexpected behavior changes.