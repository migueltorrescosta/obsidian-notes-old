---
tags: coding
feed: show
---

# Testing Maturity Levels
Better source of info: [TMMi](https://www.tmmi.org/tmmi-model/)

## Level 1 - Initial
An organisation is using _ad hoc_ methods for testing, so results are not repeatable and there is no quality standard.

## Level 2 - Definition
Testing is defined as a process, so there might be test strategies, test plans, test cases, based on requirements. Testing does not start until products are completed, so the aim of testing is to compare products against requirements.

## Level 3 - Integration
Testing is integrated into a software life cycle, e.g. the [V-model](https://en.wikipedia.org/wiki/V-Model_(software_development) "V-Model (software development)"). The need for testing is based on risk management, and the testing is carried out with some independence from the development area.

## Level 4 - Management and Measurement
Testing activities take place at all stages of the life cycle, including reviews of requirements and designs. Quality criteria are agreed for all products of an organisation (internal and external).

## Level 5 - Optimisation
The testing process itself is tested and improved at each iteration. This is typically achieved with tool support, and also introduces aims such as defect prevention through the life cycle, rather than defect detection (zero defects).

[Wikipedia Page](https://en.wikipedia.org/wiki/Testing_Maturity_Model)

# Guidelines on how to [[Test]]
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
