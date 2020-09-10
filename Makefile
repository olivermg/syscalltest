all: asm c


asm: asm.o
	ld -o asm asm.o

asm.o: asm.S
	gcc -o asm.o -c asm.S


c: c.o
	gcc -o c c.o

c.o:
	gcc -o c.o -c c.c


clean:
	rm -vf *.o asm c

.PHONY: all clean
