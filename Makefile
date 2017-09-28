TARGETDIR = /usr/local/bin
FLAGS = -Wall
LIBS  = -lX11 -lXrandr

sct:
	gcc sct.c -o sct $(FLAGS) $(LIBS)

clean:
	rm -f sct

install:
	install -m 0755 sct $(TARGETDIR)

uninstall:
	rm -f $(TARGETDIR)/sct

all: sct

.PHONY: clean install all uninstall
