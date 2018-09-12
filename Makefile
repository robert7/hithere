prefix = /usr/local
bindir = $(prefix)/bin
sharedir = $(prefix)/share
mandir = $(sharedir)/man
man1dir = $(mandir)/man1

CFLAGS = --std=c99

all: hithere

clean:
	rm -f hithere hithere.o

install: all
	@test -d $(DESTDIR)$(bindir) || mkdir -p $(DESTDIR)$(bindir)
	install hithere $(DESTDIR)$(bindir)
	@test -d $(DESTDIR)$(man1dir) || mkdir -p $(DESTDIR)$(man1dir)
	install -m 0644 hithere.1 $(DESTDIR)$(man1dir)
