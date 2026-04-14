BITS 16
ORG 0x8000

    mov ah, 0x0e
    mov al, '!'
    int 0x10

    jmp $

times 512 db 0
