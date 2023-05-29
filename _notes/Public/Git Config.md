---
tags: coding
---

The .gitconfig file I usually focus on

```sh
[user]
        email = miguelptcosta1995@gmail.com
        name = migueltorrescosta
[alias]
        s = status
        co = checkout
        cob = checkout -b
        br = !git fetch --all --prune && git branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate
        lg = !git log --pretty=format:\"%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]\" --abbrev-commit -30
        refresh = ! git pull && git fetch --all --prune && git branch -D `git branch | grep -v '^*\\|main\\|master\\|staging\\|devel'` || git fetch --all --prune
        cleanbr = ! git pull && git branch -D `git branch | grep -v '^*\\|main\\|master\\|staging\\|devel'`
        tree = log --oneline --decorate --graph --all
[color]
        ui = true
[checkout]
        defaultRemote = origin
[blame]
        ignoreRevsFile = .git-blame-ignore-revs

```

# Links

- [[Optimized Software Development]]
