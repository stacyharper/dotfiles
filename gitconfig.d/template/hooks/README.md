# Ninjgit

A simple git hook manager in python !

## Installation

```
$ mkdir -p ~/.gitconfig.d/template/hooks
$ git clone https://github.com/Eluminae/Ninjgit.git ~/.gitconfig.d/template/hooks
```

```config
# ~/.gitconfig
[core]
	excludesfile = ~/.gitconfig.d/gitignore
[init]
	templatedir = ~/.gitconfig.d/template
[clone]
	templatedir = ~/.gitconfig.d/template
```

You should have something like this.

```
~/.gitconfig
~/.gitconfig.d/template/
└── hooks
    ├── applypatch-msg
    ├── commit-msg
    ├── fsmonitor-watchman
    ├── hooks.yml
    ├── p4-pre-submit
    ├── post-applypatch
    ├── post-checkout
    ├── post-commit
    ├── post-merge
    ├── post-receive
    ├── post-rewrite
    ├── post-update
    ├── pre-applypatch
    ├── pre-auto-gc
    ├── pre-commit
    ├── prepare-commit-msg
    ├── pre-push
    ├── pre-rebase
    ├── pre-receive
    ├── push-to-checkout
    ├── python-command-dispatcher
    │   ├── dispatcher.py
    │   ├── __init__.py
    │   └── README.md
    ├── README.md
    ├── sendemail-validate
    └── update
```

From now, when you'll `git clone` or `git init` you'll have ninjgit in the `.git/hooks`

### Configuration

The `.git/hooks/hooks.yml` can contains:

```
---
config:
    commands:
        welcome_message:
            - "echo"
            - "Git hooks are ready !"
        update_ctags:
            - "ctags"
            - "--options=$HOME/.ctags"
            - "--recurse"
        lint_php:
            - "$GIT_DIR/bin/lint.sh"
            - "--extension=php"
            - "php-cs-fixer"
            - "--rules=@Symfony"
            - "fix"
    events:
        post-checkout:
            - welcome_message
```

It says that the `welcome_message` command will be executed on `post-checkout` git hook.

The git workflow will be stopped if the command do not return 0.
