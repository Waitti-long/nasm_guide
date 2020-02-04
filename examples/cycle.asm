	global	 main
	extern	 printf

	section .text
print:			;print rax
	mov	rdi,format
	mov 	rsi,rax
	;xor	rax,rax
	call	printf
	ret
main:
	mov	rax,233
	mov	rcx,4
cycle:
	push	rax
	push	rcx
	call	print
	pop	rcx
	pop	rax

	dec	rcx
	jnz	cycle
	ret

	section	.data
	format:	db "%d",10,0

