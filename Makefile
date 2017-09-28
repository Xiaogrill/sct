TARGETDIR = /usr/local/bin
FLAGS = -Wall
LIBS  = -lX11 -lXrandr

sct:
	gcc sct.c -o sct $(FLAGS) $(LIBS)

clean:
	rm sct

install: sct
	install -m 0755 sct $(TARGETDIR)

uninstall:
	rm -f $(TARGETDIR)/sct

.PHONY: clean install uninstall
