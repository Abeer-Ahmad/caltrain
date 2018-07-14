CC = gcc
CFLAGS = -Wall -Wno-unused-value
TARGET = caltrain

HEADERS = $(shell find . -name "*.h")
SOURCES = $(shell find . -name "*.c")
OBJECTS = $(patsubst %.c, %.o, $(SOURCES))

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ -lpthread

clean:
	-rm -f $(shell find . -name "*.o")
	-rm -f $(TARGET)
