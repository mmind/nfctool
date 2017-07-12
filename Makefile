# pkg-config glib-2.0 --cflags
# pkg-config libnl-genl-3.0 --cflags

# pkg-config glib-2.0 --libs
# pkg-config libnl-genl-3.0 --libs


LDFLAGS=-lglib-2.0 -lnl-genl-3 -lnl-3
CFLAGS=-Wall -g -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -Iinclude -I/usr/include/libnl3 -DVERSION=1
OBJECTS= adapter.o display.o llcp-decode.o main.o ndef-decode.o netlink.o snep-decode.o sniffer.o

nfctool: $(OBJECTS)
	gcc -o nfctool $(OBJECTS) $(LDFLAGS)

all: nfctool

clean:
	rm -f nfctool adapter.o display.o llcp-decode.o main.o ndef-decode.o netlink.o snep-decode.o sniffer.o
