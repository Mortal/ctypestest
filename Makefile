CFLAGS := -Wall -Wextra -O2

all: c_fib.so

clean:
	$(RM) c_fib.so c_fib.o
.PHONY: all clean

c_fib.so: %.so: %.o
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -shared -o $@

c_fib.o: %.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -fPIC $< -o $@
