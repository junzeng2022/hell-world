cur_dir :=$(shell pwd)
src =$(wildcard *.c)
not_dir = $(notdir $src)
objects = $(patsubst %.c, %.o, $(not_dir))
#objects = $(not_dir:%.c = %.o)
CFLAGS = -g

helloworld:$(objects)
	CC -o $@ $(CFLAGS) $^

clean:
	rm helloworld $(objects) 
	@echo "$(cur_dir) Cleaned up"
