org 0x7c0 0
bits 16
mov ah, 0x0e
mov al, [string]
int 0x10


string:
    db "Lmao ", 0


buffer:
    times 10 db 0
    mov bx, buffer
    mov [bx], al
    inc bx

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa