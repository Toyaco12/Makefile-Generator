CC=gcc
CFLAGS=-Wall -g
OBJ=test.o
TARGET=main_file

all:$(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

test.o: test.c
	$(CC) $(CFLAGS) -c test.c -o test.o

clean:
	rm -f $(TARGET) $(OBJ)
