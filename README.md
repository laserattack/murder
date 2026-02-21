# Wtf?

**murder** - simple Linux process killer script that I often use

Inspired by [Evan Hahn's](https://evanhahn.com/) murder script

> murder is just an easier-to-use kill. It offers me two main features: (1) I don’t have to know the pid. murder node, for example, saves you a step (2) it starts by asking nicely with SIGTERM, waits a bit, and then gets more and more “aggressive” before eventually sending SIGKILL. It’s a simple script but I use it when a process really needs to be shut down.
> — *Evan Hahn ([evanhahn.com/a-decade-of-dotfiles](https://evanhahn.com/a-decade-of-dotfiles/))*

# Usage

```
Usage: murder [-hfqo] arguments

Options:
  -h, --help   Show this help message
  -f, --force  Kill without confirmation
  -q, --quiet  Quiet mode (minimal output)
  -o, --one    Kill only the specified process, not the entire tree

Arguments:
  PID    Process ID to kill
  NAME   Process name to kill (e.g., python, emacs, firefox)
  :PORT  Port number to kill process on (e.g., :3000)

Examples:
  murder 1234        Kill process with PID 1234
  murder -f ruby     Kill all ruby processes without asking
  murder -q :3000    Kill process on port 3000 quietly
  murder -fq python  Kill python processes without asking and quietly
```

By default, murder kills the process and all its descendants (if any exist). To kill only the specified process, use the `--one` or `-o` flag

# Installation

Just download `murder` file

```
wget https://raw.githubusercontent.com/laserattack/murder/refs/heads/master/murder
```

Make it executable

```
chmod +x murder
```

And use (optionally, move it to a directory in your PATH)

# Requirements

- Perl 5.10+
- `ps`, `awk`, `grep` - usually pre-installed
- `lsof` - for port killing
