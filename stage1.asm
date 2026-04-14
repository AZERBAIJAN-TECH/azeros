BITS 16
ORG 0x7C00

start:
    xor ax, ax
    mov ds, ax
    mov es, ax

    mov bx, 0x8000  
    mov ah, 0x02
    mov al, 1 
    mov ch, 0
    mov cl, 2  
    mov dh, 0
    mov dl, 0x80   
    int 0x13
    jc error

    jmp 0x8000 
error:
    mov ah, 0x0e
    mov al, 'E'
    int 0x10
    jmp $

times 510-($-$$) db 0
dw 0xAA55