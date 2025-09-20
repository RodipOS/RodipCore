[org 0x7c00]
print0:
    mov si, msg
print1:
    lodsb
    cmp al, 0
    je end
    mov ah, 0x0e
    int 0x10
    jmp print1
end:
    jmp $
msg:
    db 'Hello World!', 0
times 510-($-$$) db 0
dw 0xaa55