[org 0x7c00]
mov bx, char
main:
    cmp bx, 15
    je exit
    mov ah, 0
    int 0x16
    mov ah, 0x0e
    mov [bx], al
    int 0x10
    inc bx
    jmp main
exit:
    jmp $
char:
    times 15 db 0
times 510-($-$$) db 0
db 0x55, 0xaa