all: 1m-block

1m-block: main.o
	gcc -o 1m-block main.o -lnetfilter_queue -lsqlite3

main.o: libnet.h main.cpp

clean:
	rm -f 1m-block
	rm -f main.o