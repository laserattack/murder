readme:
	@groff -man -Tascii murder.1 | col -bx > README

.PHONY: readme
