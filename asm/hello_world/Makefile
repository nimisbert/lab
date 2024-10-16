AS=arm-none-eabi-as # GNU binutils assembler
LD=arm-none-eabi-ld # GNU binutils linker
DB=arm-none-eabi-gdb # GNU binutils debugger
QM=qemu-system-arm # QEMU arm system emulation
HW=virt-6.2 # QEMU arm system to emulate

main: main.s
	$(AS) main.s -o main.o
	$(LD) main.o -o main.out

debug:
	$(DB) main.out

run: main.out
	$(QM) $(HW) main.out

clean:
	rm *.o *.out
