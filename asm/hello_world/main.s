.section .text      // text directive
.global _start      // create an entry point for program

_start:             // entry point label
    mov r0, pc
    mov r1, #2
    add r2, r1, r1
    bkpt
