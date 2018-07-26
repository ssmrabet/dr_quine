section .data
code db "section .data%ccode db %c%s%c%c%csection .text%cglobal start%cglobal _main%cextern _printf%c%cstart:%ccall _main%cret%c%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 16%cmov r8, 30%cwhile_push:%ccmp r8, 0%cje call_printf%cpush 10%csub r8, 1%cjmp while_push%ccall_printf:%clea rdi, [rel code]%cmov rsi, 10%cmov rax, 34%clea rbx, [rel code]%cmov rcx, 34%cmov rdx, 10%ccall _printf%cleave%cret"

section .text
global start
global _main
extern _printf

start:
call _main
ret

_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov r8, 31
lea rdi, [rel code]
mov rsi, 10
mov rax, 34
lea rbx, [rel code]
mov rcx, 34
;mov rdx, 10
while_push:
cmp r8, 0
push 10
sub r8, 1
jmp while_push
call _printf
leave
ret
