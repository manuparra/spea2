# Makefile for SPEA2

# Compiler
CC = gcc

# Compiler options
CFLAGS = -g -Wall -pedantic

# all object files
SEL_OBJECTS = spea2_functions.o spea2_io.o spea2.o

spea2 : $(SEL_OBJECTS)
	$(CC) $(CFLAGS) -lm $(SEL_OBJECTS) -o spea2

spea2_functions.o : spea2_functions.c spea2.h
	$(CC) $(CFLAGS) -c spea2_functions.c 

spea2_io.o : spea2_io.c spea2.h
	$(CC) $(CFLAGS) -c spea2_io.c

spea2.o : spea2.c spea2.h
	$(CC) $(CFLAGS) -c spea2.c

clean:
	rm -f *~ *.o

