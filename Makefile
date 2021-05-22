CC = g++
OBJS = main.o dependency.o
TARGET = hello_world

all: $(OBJS)
	$(CC) -o $(TARGET) dependency.o main.o

main.o:
	$(CC) -c main.cpp

dependency.o:
	$(CC) -c dependency.cpp
