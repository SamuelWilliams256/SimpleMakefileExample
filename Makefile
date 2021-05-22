CC = g++
OBJS = main.o dependency.o

all: $(OBJS)
	$(CC) -o main dependency.o main.o

main.o:
	$(CC) -c main.cpp

dependency.o:
	$(CC) -c dependency.cpp
