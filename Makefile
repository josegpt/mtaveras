PREFIX?=	${DESTDIR}/var/www
HTDOCSDIR=	${PREFIX}/htdocs
STATICDIR=	${HTDOCSDIR}/mtaveras

all: static

static:
	mkdir -p ${STATICDIR}
	cp -Rp static *.html ${STATICDIR}

install: all

uninstall:
	rm -r ${STATICDIR}

.PHONY: all static install uninstall
