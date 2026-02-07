# Wtf?

**murder** - Linux process killer script that I often use

# Usage

```
Usage: murder [OPTIONS] <PID|NAME|:PORT>

Options:
  -f, --force     Kill without confirmation
  -q, --quiet     Quiet mode (minimal output)
  -h, --help      Show this help message
      --nocolor   Disable colored output

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
