UNAME_S := $(shell uname -s)
CC=g++
LD=g++
CFLAGS=-g -Wall
LDFLAGS=

BIT_OPS_OBJS = bit_ops.o test_bit_ops.o
BIT_OPS_PROG = bit_ops

BINARIES=$(BIT_OPS_PROG)

all: $(BINARIES)

$(BIT_OPS_PROG): $(BIT_OPS_OBJS)
	$(CC) $(CFLAGS) -g -o $(BIT_OPS_PROG) $(BIT_OPS_OBJS) $(LDFLAGS)

bit_ops.cpp: bit_ops.h
test_bit_ops.cpp: bit_ops.h

.cpp.o:
	$(CC) -c $(CFLAGS) $<

clean:
	-rm -rf core *.o *~ "#"*"#" Makefile.bak $(BINARIES) *.dSYM

