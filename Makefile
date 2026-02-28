readme:
	printf '```\n%s\n```\n' "$$(man ./murder.1 | col -b)" > README.md

.PHONY: readme
