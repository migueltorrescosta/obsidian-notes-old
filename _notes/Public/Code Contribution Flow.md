---
tags: checklist, productivity
---

Never add any code without an Issue & PR: *"We want to move so fast that we end up being slower than needed"*

# Submitting an Issue
1. Add points to all issues

### Issue Template
```markdown
Description goes here.
Usually the more information, the better, but that doesn't mean long descriptions.
Conciseness, links, etc. helps you provide a lot of information without needing to write a lot.

# Acceptance criteria
- [ ] criteria1
- [ ] criteria2
```

# Submitting a PR
- No special characters, only alphanumeric , `_` and `-`
- Limit to 50 chars
- Follow the [Seven Rules](https://cbea.ms/git-commit/#seven-rules) which talk about "subject"
- Most people reading the PR don't have the context you have: not only should you explain what you changed, but also how and why

### PR Template
```markdown
# Problem 
Why does this PR exist? What is the problem that needs solving?

# Solution
- Explain the _what_ and _why_ of your solution.
- The _how_ should be clear from the code.

Notably,
- If you didn't add automated tests, explain how this code was tested.
- If additional steps are necessary after merging the PR, list them.

# Miscellaneous
Anything you included in the PR unrelated to the problem and solution (usually very small stuff not worthy of its own PR, this section is generally missing)
```

# Writing the code
> Less code is better code
- [ ] Do we have similar code elsewhere that we should use?
- [ ] Does this code require new tests?
- [ ] Is the code clear to someone who has never seen it?
- [ ] Follow the [[Testing Software]] guidelines

## Preparing for PR Review

> Every preventable rejected PR review is time wasted

- [ ] All tests pass on `CI/CD`
- [ ] Relevant new tests were added
- [ ] Out-of-band tests & considerations were mentioned in the PR `Miscellaneous`
- [ ] The right people were tagged for the PR Review
- [ ] No unexpected `File changes` exist, after doing all of the above

## PR Review
- [ ] I start a review as a group, rather than a list of individual comments
- [ ] I understand the motivation for the code changes
- [ ] I am confident the new changes were tested
- [ ] The code changes are consistent with the rest of our code

## PR Merge
- [ ] No reviewer has status.
- [ ] Everyone resolved the issues they raised ( Don't resolve someone else's comment )
- [ ] Squash Merge ( even if you auto-merge )