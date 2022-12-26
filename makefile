GC = gcc
MAINSTRING = mainstring.o
MAINARRAY = mainarray.o
ARRAY = hw3Array.o
STRING = hw3String.o
WARN= -Wall -g

all:	isort txtfind
txtfind: $(MAINSTRING) $(STRING)
	$(GC) $(WARN) $(MAINSTRING) $(STRING)  -o txtfind -lm
isort:	$(MAINARRAY) $(ARRAY)
	$(GC) $(WARN) $(MAINARRAY) $(ARRAY)  -o isort -lm
mainarray.o:  mainarray.c hw3Array.h 
	$(GC) $(WARN) -c mainarray.c
mainstring.o:  mainstring.c hw3String.h 
	$(GC) $(WARN) -c mainstring.c
hw3Array.o: hw3Array.c hw3Array.h
		$(GC) $(WARN) -c hw3Array.c 
hw3String.o: hw3String.c hw3String.h
	$(GC) $(WARN) -c hw3String.c 

clean: 
	rm -f *.o *.a *.so isort txtfind
.PHONY: clean all
