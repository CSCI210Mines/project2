CC=gcc
CFLAGS=-g -Wall -std=c11
DEPS = types.h
OBJ = other_commands.o mkdir_splitpath.o 

.DEFAULT_GOAL := main

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: main.c $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm -f mkdir_splitpath.o main
