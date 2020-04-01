PREFIX=/usr
MANDIR=$(PREFIX)/share/man
BINDIR=$(PREFIX)/bin

all:
	@echo "Run 'make install' for installation."
	@echo "Run 'make uninstall' for uninstallation."

install:
	install -Dm755 create_sta $(DESTDIR)$(BINDIR)/create_sta
	install -Dm644 README.md $(DESTDIR)$(PREFIX)/share/doc/create_sta/README.md

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/create_sta
	rm -f $(DESTDIR)$(PREFIX)/share/doc/create_sta/README.md
