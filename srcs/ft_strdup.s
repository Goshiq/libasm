extern	_malloc
extern	_ft_strlen
extern	_ft_strcpy

global	_ft_strdup

section	.text

_ft_strdup:
		push	rdi
		call	_ft_strlen
		add		rax, 1
		mov		rdi, rax
		call	_malloc
		cmp		rax, 0
		je		_error
		pop		rsi
		mov		rdi, rax
		call	_ft_strcpy
		ret
_error:
		xor		rax, rax
		ret
