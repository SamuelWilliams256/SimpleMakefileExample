CC = g++
TARGET = hello_world

SOURCE_DIR = source/
BUILD_DIR = build/

#Force build directory to be created
$(shell mkdir -p $(BUILD_DIR))

all: main.o dependency.o
	$(CC) -o $(BUILD_DIR)/$(TARGET) $(BUILD_DIR)/dependency.o $(BUILD_DIR)/main.o

main.o:
	$(CC) -c $(SOURCE_DIR)main.cpp -o $(BUILD_DIR)/main.o

dependency.o:
	$(CC) -c $(SOURCE_DIR)dependency.cpp -o $(BUILD_DIR)/dependency.o

