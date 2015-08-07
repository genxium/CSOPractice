CC=gcc
CFLAGS=-g
LDFLAGS=-L$(shell pwd)
ASLIB=-shared
ASSISTOBJS=mean.o diff.o
CLEANFILES = main libforeign.so libassist.a 
main:	main.c libassist.a libforeign.so	
	$(CC) $(CFLAGS)	$(LDFLAGS) -o main -lforeign -lassist main.c

libassist.a: $(ASSISTOBJS) 
	ar cr libassist.a $(ASSISTOBJS)	 
	rm mean.o diff.o

mean.o: mean.c
	$(CC) $(CFLAGS) -o mean.o -c mean.c 

diff.o: diff.c
	$(CC) $(CFLAGS) -o diff.o -c diff.c 

libforeign.so:foreign.c	
	$(CC) $(CFLAGS) $(ASLIB) -o libforeign.so foreign.c

# -----------------------------	
clean :
	rm -f $(CLEANFILES)
