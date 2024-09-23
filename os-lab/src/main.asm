org 0x7C00
bits 16

main:
    ; set up data segments
    mov ax, 0   ; can't write to ds/es directly
    mov ds, ax 
    mov es, ax
    ; set up stack segment
    mov ss, ax
    mov sp, 0x7C00


; @brief Prints a caracter to the screen
; @param string loaded in ds:si
puts:
    ; save registers we will modify in stack
    push si
    push ax

.loop:
    lodsb      ; load the next caracter from ds:si to ax
    or al al   ; verify if next caracter is null
    .jz done   ; jump to destination if zero flag set by condition
    .jmp .loop ; jump to loop if zero flag is not set 

.done: 
    pop ax
    pop si
    ret

.halt:
    jmp .halt

times 510-($-$$) db 0
dw 0AA55h
