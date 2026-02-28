readme:
	printf '```\n%s\n```\n' "$$(man ./murder.1 | col -b)" > README

.PHONY: readme
