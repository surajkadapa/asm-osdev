[org 0x7c00]
mov ah, 0x0e
mov bx, string

printString:
    mov al, [bx]
    cmp al, 0
    je exit
    int 0x10
    inc bx 
    jmp printString

string:
    db "But I am just a noob", 0

exit:
    jmp $
times 510-($-$$) db 0
db 0x55, 0xaa