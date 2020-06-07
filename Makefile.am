ACLOCAL_AMFLAGS = -I m4

EXTRA_DIST =
CLEANFILES =

bin_PROGRAMS = lightum

lightum_SOURCES = \
	./configfile.c \
	./dbus.c \
	./dbus-session.c \
	./functions.c \
	./lightum.c \
	./xbacklight.c

lightum_CFLAGS = \
	$(GLIB_2_0_CFLAGS) \
	$(GIO_2_0_CFLAGS) \
	$(DBUS_1_CFLAGS) \
	$(LIBSYSTEMD_CFLAGS) \
	$(X11_CFLAGS) \
	$(XSCRNSAVER_CFLAGS)

lightum_LDFLAGS = \
	$(GLIB_2_0_LIBS) \
	$(GIO_2_0_LIBS) \
	$(DBUS_1_LIBS) \
	$(LIBSYSTEMD_LIBS) \
	$(X11_LIBS) \
	$(XSCRNSAVER_LIBS) \
	-lm

systemdunitdir = $(prefix)/lib/systemd/user
systemdunit_DATA = \
	lightum.service

EXTRA_DIST += \
	lightum.service.in

CLEANFILES += \
	lightum.service

lightum_docdir = $(docdir)
lightum_doc_DATA = README LICENSE

lightum_mandir = $(mandir)/man1
lightum_man_DATA = man/lightum.1

substitutions = \
    '|PACKAGE_VERSION=$(PACKAGE_VERSION)|' \
    '|PACKAGE_NAME=$(PACKAGE_NAME)|' \
    '|PACKAGE_URL=$(PACKAGE_URL)|' \
    '|VERSION=$(VERSION)|' \
	'|bindir=$(bindir)|'

SED_PROCESS = \
	$(AM_V_GEN)$(MKDIR_P) $(dir $@) && \
	$(SED) $(subst '|,-e 's|@,$(subst =,\@|,$(subst |',|g',$(substitutions)))) \
		< $< > $@

%.service: %.service.in
	$(SED_PROCESS)
