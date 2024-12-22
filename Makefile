all: funca

funca: main.o funca.o
	g++ -g -Wall main.o funca.o -o funca.elf 

main.o: main.cpp
	g++ -g -Wall -c main.cpp 

funca.o: FuncA.cpp FuncA.h
	g++ -g -Wall -c FuncA.cpp 

clean: 
	rm -rf -v *.o
	rm -rf -v *.gch


