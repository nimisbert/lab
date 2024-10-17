# GNU binutils ARM assembler 
AS=as
# GNU binutils ARM linker 
LD=ld
# GNU debugger
DB=gdb

main.out: main.s
	$(AS) -g main.s -o main.o
	$(LD) main.o -o main.out

debug: main.out
	$(DB) main.out

clean:
	rm *.o *.out
