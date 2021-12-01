CC=clang

INCLDIR	= include/

CFLAGS=-g -Wall -Wextra -std=gnu17 -I$(INCLDIR)
LDFLAGS=

SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)
HEAD=$(wildcard include/*.h)

EXEC=main.out

all: $(EXEC)

$(EXEC): $(OBJ) $(HEAD)
	$(CC) $(CFLAGS) -o $@ $(OBJ) $(LDFLAGS)

.PHONY: clean
clean:
	rm $(OBJ) $(EXEC)
