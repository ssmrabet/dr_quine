section .data ;hello world
code db "section .data ;hello world%ccode db %c%s%c%c%csection .text%cglobal start%cglobal _main%cextern _printf%c%cstart:%ccall _main%cret%c%c_main:%cpush rbp ;A comment%cmov rbp, rsp%clea rdi, [rel code]%cmov rsi, 0x0a%cmov rdx, 0x22%cmov rcx, rdi%cmov r8, 0x22%cmov r9, 0x0a%cmov r10, 0x20%ccall _loop%c%c_loop:%cpush 0x0a%cdec r10%ccmp r10, 0x0%cjge _loop%ccall _printf%cleave%cret"

section .text
global start
global _main
extern _printf

start:
call _main
ret

_main:
push rbp ;A comment
mov rbp, rsp
lea rdi, [rel code]
mov rsi, 0x0a
mov rdx, 0x22
mov rcx, rdi
mov r8, 0x22
mov r9, 0x0a
mov r10, 0x20
call _loop

_loop:
push 0x0a
dec r10
cmp r10, 0x0
jge _loop
call _printf
leave
ret
