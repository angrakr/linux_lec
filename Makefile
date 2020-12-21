.SIUFFIXES : .c .o
CC=gcc
CXX=g++
CFLAGS= -g -O2
LDFLAGS=

OBJS = main.o my_os.o 
SRCS = $(OBJS:.o=.c)

.c.o:
	$(CC) $(CFLAGS) -c $*.c

all: toy
    
toy: $(OBJS)
	$(LINK.c) -o $@ $(OBJS)

clean:
	$(RM) $(OBJS) toy

dep :
	gccmakedep $(SRCS)
