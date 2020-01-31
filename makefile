CFLAGS = -Wall
#target exe
all: myfunc.o main.o
	g++ $(CFLAGS) -o myexe myfunc.o main.o
	
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

#rebuild if either of the files below change	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp 

#type 'make clean' to remove following	
clean:
	rm -f *.o myexe
