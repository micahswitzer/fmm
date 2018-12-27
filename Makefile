SRCDIR=src
IDIR=$(SRCDIR)
CC=gcc
CFLAGS=-I$(SRCDIR)
CPPFLAGS=-Wall -Wextra
LDFLAGS=

ODIR=obj
LDIR=lib
BINDIR=bin

# include json-c deps.
#CFLAGS += $(shell pkg-config --cflags json-c)
#LDFLAGS += $(shell pkg-config --libs json-c)

_DEPS = fmm.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = fmm.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: $(SRCDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(CPPFLAGS)

$(BINDIR)/fmm: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS) $(CPPFLAGS)

.PHONY: clean
clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ $(BINDIR)/*
