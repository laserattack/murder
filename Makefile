readme:
	@man ./murder.1 | col -b > README
	@echo "README generated from murder.1"

.PHONY: readme
