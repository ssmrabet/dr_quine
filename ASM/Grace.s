%define DATA_STRING "%%define DATA_STRING %c%s%c%c%%define GLOBAL_MAIN global _main%c%%define LABEL_MAIN _main:%c;/*%c;    This program will print its own source when run.%c;*/%csection .data%cpath db %c./Grace_kid.s%c, 0%cperm db %cw%c, 0%cdata db DATA_STRING, 0%csection .text%cglobal start%cGLOBAL_MAIN%cextern _fopen%cextern _fprintf%cLABEL_MAIN%cpush rbp%cmov rbp, rsp%csub rsp, 16%clea rdi, [rel path]%clea rsi, [rel perm]%ccall _fopen%cmov rcx, 41%cwhile_push:%ccmp rcx, 0%cje put_in_file%cpush 10%csub rcx, 1%cjmp while_push%cput_in_file:%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cmov rdi, rax%clea rsi, [rel data]%cmov rdx, 34%clea rcx, [rel data]%cmov r8, 34%cmov r9, 10%ccall _fprintf%cleave%cret"
%define GLOBAL_MAIN global _main
%define LABEL_MAIN _main:

section .data
path db "./Grace_kid.s", 0
perm db "w", 0
data db DATA_STRING, 0

section .text
global start
GLOBAL_MAIN
extern _fopen
extern _fprintf

LABEL_MAIN
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel path]
lea rsi, [rel perm]
call _fopen
mov rcx, 41

while_push:
cmp rcx, 0
je put_in_file
push 10
sub rcx, 1
jmp while_push

put_in_file:
push 34
push 34
push 10
push 34
push 34
push 10
push 10
push 10
push 10
push 10
push 10
mov rdi, rax
lea rsi, [rel data]
mov rdx, 34
lea rcx, [rel data]
mov r8, 34
mov r9, 10
call _fprintf
leave
ret
