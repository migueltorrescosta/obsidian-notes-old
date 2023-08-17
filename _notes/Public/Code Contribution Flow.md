---
tags: checklist, productivity
feed: show
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

1. Do we have similar code elsewhere that we should use instead?
2. Does this code require new tests?
3. Is the code clear to someone who has never seen it?
4. Follow the [[Testing Software]] guidelines

## Preparing for PR Review

> Preventing PR rejections ahead of time is a big time saver

1. All tests pass on `CI/CD`
2. Relevant new tests were added
3. Out-of-band tests & considerations were mentioned in the PR `Miscellaneous`
4. The right people were tagged for the PR Review
5. No unexpected `File changes` exist, after doing all of the above

## PR Review
1. Start a review as a group, rather than a list of individual comments
2. Understand the motivation for the code changes
3. The changes were tested with either
	1. Tests in the code, with coverage visible
	2. Manually, with what tests and how they were conducted on the PR description
4. The code changes are consistent with the rest of our code

## PR Merge
1. No reviewer has requested changes.
2. Everyone resolved the issues they raised. Only the person raising issues can close it.
3. Squash Merge ( even if you auto-merge )
4. Only the author of the PR can merge it.