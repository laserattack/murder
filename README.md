# Wtf?

**murder** - simple Linux process killer script that I often use

Inspired by Evan Hahn's murder script

> murder is just an easier-to-use kill. It offers me two main features: (1) I don’t have to know the pid. murder node, for example, saves you a step (2) it starts by asking nicely with SIGTERM, waits a bit, and then gets more and more “aggressive” before eventually sending SIGKILL. It’s a simple script but I use it when a process really needs to be shut down.
> — *Evan Hahn ([evanhahn.com/a-decade-of-dotfiles](https://evanhahn.com/a-decade-of-dotfiles/))*

# Usage

```
Usage: murder [OPTIONS] <PID|NAME|:PORT>

Options:
  -f, --force     Kill without confirmation
  -q, --quiet     Quiet mode (minimal output)
  -h, --help      Show this help message
  -n, --nocolor   Disable colored output

Arguments:
  PID             Process ID to kill
  NAME            Process name to kill (e.g., ruby, python)
  :PORT           Port number to kill process on (e.g., :3000)

Examples:
  murder 1234               Kill process with PID 1234
  murder -f ruby            Kill all ruby processes without asking
  murder -q :3000           Kill process on port 3000 quietly
  murder --nocolor python   Kill python processes without colors

```

# Requirements

- Perl 5.10+
- `ps`, `awk`, `grep` - usually pre-installed
- `lsof` - for port killing
