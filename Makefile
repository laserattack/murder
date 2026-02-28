PREFIX ?= /usr/local
MANDIR ?= $(PREFIX)/share/man/man1

all:
	@echo "Targets:"
	@echo "  make readme  - Generate README from man page"
	@echo "  make iman    - Install man page (use sudo if needed)"
	@echo "  make uman    - Uninstall man page"

readme:
	@man ./murder.1 | col -b > README
	@echo "README generated from murder.1"

iman:
	@echo "Installing man page to $(DESTDIR)$(MANDIR)/murder.1"
	@install -d $(DESTDIR)$(MANDIR)
	@install -m 644 murder.1 $(DESTDIR)$(MANDIR)/murder.1
	@gzip -f $(DESTDIR)$(MANDIR)/murder.1
	@echo "Man page installation complete"

uman:
	@echo "Removing man page from $(DESTDIR)$(MANDIR)/murder.1.gz"
	@rm -f $(DESTDIR)$(MANDIR)/murder.1.gz
	@echo "Man page uninstallation complete"

.PHONY: readme iman uman
