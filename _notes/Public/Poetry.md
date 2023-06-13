---
tags: coding
feed: show
---

[Poetry](https://python-poetry.org/) simplifies Package Management in Python. It is [easily installed](https://python-poetry.org/docs/#installation), [well documented](https://python-poetry.org/docs/#installation) and supports [auto completion in your CLI](https://python-poetry.org/docs/#enable-tab-completion-for-bash-fish-or-zsh)

| Command | Description | 
| --- | --- |
| `poetry init` | Initialize poetry on an existing repo |
| `poetry install` | Installs the dependencies specified in `poetry.lock`. If this file does not exist, it is generated based on the latest conflict free dependency resolution, based on the constraints specified in your `pyproject.toml` |
| `poetry add <dep>` | Adds a Package to your `pyproject.toml` file |
| `poetry add --group dev black` | Adds a Package to a specific group, usually `dev` or `test` related packages |
| `poetry shell` | Opens a shell with the respective `venv` being used |
| `poetry env info -p` | Prints the `venv` being used by Poetry |
| `poetry run python manage.py runserver` | Runs the desired command, in this case a standard [[Django]] server |


# Related
- [[Python Packaging]]