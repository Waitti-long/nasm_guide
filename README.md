# nasm_guide
 this repository contains some examples and scripts, perhaps you can use it when learning nasm.

## What is nasm?

nasm is a Assembly language compiler. 

## How to install nasm?
If you are using ubuntu, you can use this code.
```
sudo apt-get install nasm
```
Or use origin code to install, this is the offical website.
```
https://www.nasm.us/
```
And you can find offical docs in this website.

## Fast Started
To compile a asm file:

Assume we edit a asm file like this:
```nasm
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


```
And we name it with **hello.asm**.
So, we shoule use this code to compile it.
```
nasm -f elf64 -o hello.o hello.asm
```

-f elf64 means we will get a elf64 format file. It can be run in linux-64bit.
-o hello.o means the output file name.

In the last procedure, we have got a file named **hello.o**,it's can't be run now,To run it, we should use ld to link.

```
ld -o hello hello.o
```

We get a file named hello !

Run it!
```
./hello
```
We get a result !
```
hello,world
```

You can see some other example in folder **examples**
