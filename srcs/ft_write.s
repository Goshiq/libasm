extern	___error
global	_ft_write

section	.text

_ft_write:
		mov	rax, 0x2000004
		syscall
		jc	_err
		ret
_err:
		push	rax
		call	___error
		pop		rdx
		mov		[rax], rdx
		mov		rax, -1
		ret
