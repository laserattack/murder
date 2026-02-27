# Wtf?

**murder** - simple Linux process killer script that I often use

Inspired by [Evan Hahn's](https://evanhahn.com/) murder script

> murder is just an easier-to-use kill. It offers me two main features: (1) I don’t have to know the pid. murder node, for example, saves you a step (2) it starts by asking nicely with SIGTERM, waits a bit, and then gets more and more “aggressive” before eventually sending SIGKILL. It’s a simple script but I use it when a process really needs to be shut down.
> — *Evan Hahn ([evanhahn.com/a-decade-of-dotfiles](https://evanhahn.com/a-decade-of-dotfiles/))*

# Usage

```
What is it : Linux process killer script
Usage      : murder [-hfqonc] arguments

Flags:
  -h, --help       Show this help message
  -f, --force      Kill without confirmation
  -q, --quiet      Quiet mode (minimal output)
  -o, --one        Kill only the specified process, not the entire tree
  -c, --name-only  Search by process name only (not full command line)
  -n, --dry-run    Show what would be killed without actually killing

Arguments:
  PID    Process ID to kill
  NAME   Process name to kill (e.g., python, emacs, firefox)
  :PORT  Port number to kill process on (e.g., :3000)

Examples:
  murder 1234          Kill process with PID 1234
  murder -f ruby       Kill all ruby processes without asking
  murder -q :3000      Kill process on port 3000 quietly
  murder -fq python    Kill python processes without asking and quietly
  murder -nf firefox   Show what would be killed (search by full command)
  murder -nfc firefox  Show what would be killed (search by name only)
  murder -nfq firefox  Show what would be killed with minimal output
```

Some explanations:

- By default, murder kills the process and all its descendants (if any exist). To kill only the specified process, use the `--one` or `-o` flag
- By default, in NAME mode murder searches for NAME as a substring in the full command line (e.g., "python" will match both "/usr/bin/python3" and "python script.py"). To search only in the executable name, use the `--name-only` or `-c` flag

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
