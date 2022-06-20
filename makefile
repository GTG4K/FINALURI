

CC = gcc
CFLAGS=-Wall

all: countRanges
.PHONY : all

countRanges : Main.o
	$(CC) $(CFLAGS) -o countRanges Main.o
	
Main.o: Main.c
	$(CC) $(CFLAGS) -c -o Main.o Main.c
	
debug: clean Main.c 
	$(CC) $(CFLAGS) -g -o test Main.c
	gdb -tui test
	
.PHONY: clean
clean:
	rm -rf *.o
