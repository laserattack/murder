readme:
	@man ./murder.1 | col -b > README

.PHONY: readme
