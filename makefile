GC = gcc
MAIN = main.o
MY = hw3Array.o
WARN= -Wall -g

all:	start
start:	$(MAIN) $(MY)
	$(GC) $(WARN) $(MAIN) $(MY)  -o start -lm
main.o:  main.c hw3Array.h 
	$(GC) $(WARN) -c main.c

hw3Array.o: hw3Array.c hw3Array.h
		$(GC) $(WARN) -c hw3Array.c 
clean: 
	rm -f *.o *.a *.so start
.PHONY: clean all
