VGFLAGS ?= --quiet --leak-check=full --show-leak-kinds=all --track-origins=yes

example: example.c snow/snow.h
	$(CC) $(CFLAGS) -g -Wall -o $@ $<

test: example
	@valgrind $(VGFLAGS) ./example $(ARGS)

clean:
	rm -f example

.PHONY: test clean
