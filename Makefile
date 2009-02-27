prefix = $(HOME)
bindir = $(prefix)/bin
sharedir = $(prefix)/share

RM = rm -f
TAR = tar
FIND = find
INSTALL = install

ifneq ($(findstring $(MAKEFLAGS),s),s)
	QUIET_GEN   = @echo '  GEN   ' $@;
	QUIET_CP    = @echo '  CP    ' $@;
	QUIET_RM    = @echo '  RM    ' $@;
	QUIET_MKDIR = @echo '  MKDIR ' $@;
endif

ALL_SCRIPTS = jhbuild-moblin2

install:
	$(INSTALL) -d -m 755 '$(DESTDIR)$(bindir)'
	$(INSTALL) -m 755 build/jhbuild-moblin2.sh '$(DESTDIR)$(bindir)/jhbuild-moblin2'
	$(INSTALL) -m 644 jhbuildrc-moblin2 '$(DESTDIR)$(HOME)/.jhbuildrc-moblin2'
