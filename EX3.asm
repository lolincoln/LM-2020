extern printf
extern fat

section .data
	format db "%d",10,0

section .text
	global _start

_start:
	mov rdi, 5
	call fat
	mov rdi, format
	mov rsi, rax
	call printf

	mov rax, 60
	mov rdi, 0
	syscall
