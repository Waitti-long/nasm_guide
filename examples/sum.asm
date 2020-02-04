	global		main
	extern 		printf
	extern 		atoi
	default		rel

	section .text
print:			;print rax
	mov 	rdi,format
	mov 	rsi,rax
	;xor 	rax,rax
	call 	printf
	ret
sumf:
	push 	rdi
	push 	rsi
	mov 	rdi,[rsi+rdi*8]
	call 	atoi
	pop 	rsi
	pop 	rdi
	add 	[sum],rax
	dec 	rdi
	jnz 	sumf
	mov 	rax,[sum]
	call 	print
	jmp	endl
main:
	dec 	rdi
	jnz 	summ
	mov	rax,233
	call	print
	ret
summ:
	jmp	sumf
endl:
	ret

	section	.data
	sum:	dq	0
	count:	dq	0
	format:	db "%d",10,0
