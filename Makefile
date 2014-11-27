CC=sdcc
LD=sdld
PROJECT=stm8TestMake

BINDIR = ./bin
SRCDIR = ./src
INCDIR += -I ./src/include
CFLAGS = $(INCDIR)
LDFLAGS=
SOURCES = $(wildcard src/*.c)
OBJECTS = $(patsubst src/%.c, bin/%.ihx, $(SOURCES))

vpath %.h src/include
vpath %.c src


.PHONY: all clean flash

all: $(OBJECTS)

clean:
	rm -f $(BINDIR)/*

flash: $(OBJECTS)
	stm8flash -cstlink -pstm8l150 -w $(OBJECTS)

release: 
	rm -f $(BINDIR)/*
	rm -f *.zip
	zip -r $(PROJECT)-$(shell date --iso=seconds) *
	
$(BINDIR)/%.ihx: $(SRCDIR)/%.c Makefile
	@#printf " CC   $(subst $(shell pwd)/,,$(@))\n"
	$(CC) -lstm8 -mstm8 --out-fmt-ihx $(CFLAGS) $(LDFLAGS) -o $(BINDIR)/ $<

