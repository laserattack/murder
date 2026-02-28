<<<<<<< Updated upstream
readme.md: murder.1
	pandoc -s -t markdown -f man murder.1 -o README.md
	@echo "README.md generated from murder.1"
=======
readme:
	@man ./murder.1 | col -b > README
	@echo "README generated from murder.1"
>>>>>>> Stashed changes

.PHONY: readme
