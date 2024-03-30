CC=clang
CFLAGS=-g -Werror -Wall -Wstrict-prototypes -Wundef -Wmissing-declarations -Wmissing-prototypes -std=gnu17 -ggdb3 -fsanitize=address
SRCS=main.c
TARGET=tree

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f $(TARGET)
