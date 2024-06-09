
section .data

msg: db "goodbye World", 0xa
size: equ $-msg

section .text
global _start

_start:


mov edx, tam ; count, 14 bytes 
mov ecx, msg ; *buf
mov ebx, 1 ; fd
mov eax, 4
int 0x80

; exit(0)
mov ebx, 0 ; return value of exit()
mov eax, 1 ; code of syscall exit()
int 0x80