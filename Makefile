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
	$(INSTALL) -m 755 build/jhbuild-meego.sh '$(DESTDIR)$(bindir)/jhbuild-meego'
	$(INSTALL) -m 644 jhbuildrc-meego '$(DESTDIR)$(HOME)/.jhbuildrc-meego'
	if test -f '$(DESTDIR)$(HOME)/.jhbuildrc-meego-custom' ; then echo "*** Custom jhbuild config already exists - leaving well alone";\
	else $(INSTALL) -m 644 jhbuildrc-meego-custom '$(DESTDIR)$(HOME)/.jhbuildrc-meego-custom' ;\
	fi	
