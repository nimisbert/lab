AS=arm-none-eabi-as # GNU binutils assembler
LD=arm-none-eabi-ld # GNU binutils linker
DB=arm-none-eabi-gdb # GNU binutils debugger
QM=qemu-system-arm # QEMU arm system emulation
HW=virt-6.2 # QEMU arm system to emulate

main.out: main.s
	$(AS) -g main.s -o main.o
	$(LD) main.o -o main.out

debug: main.out
	$(DB) -f main.out

run: main.out
	$(QM) $(HW) main.out

clean:
	rm *.o *.out
