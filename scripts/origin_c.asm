	global	 main
	extern	 printf

	section .text
print:			;print rax
	mov	rdi,format
	mov 	rsi,rax
	xor	rax,rax
	call	printf
	ret
main:
	mov	rax,1
	call	print
	ret

	section	.data
	format:	db "%d",10,0

