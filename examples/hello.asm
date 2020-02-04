global _start

section .data
	message: db "hello,world",10

section .text
	_start:
		mov	rax,1
		mov	rdi,1
		mov	rsi,message
		mov	rdx,13
		syscall
	end:
		mov rax,60
                xor rdi,rdi
                syscall

