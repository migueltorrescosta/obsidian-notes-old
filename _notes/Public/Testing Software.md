Guidelines
- Keep tests grouped by what they test
- Good Signal to Noise: Refactor away repeated code across tests
- Mock any external calls: we are testing our code, not our external dependencies
- Name tests `should_do_X_when_Y`, prefixing it with `test_` if the framework requires it.

# Test Types

## Unit
Test individual functionality

## Integration
Test calls and joint usage of different services / components

## Load
Measure how much load until you get 500s or failures.

## Performance
Under a known specific load, measure how fast/slow the response times would be.