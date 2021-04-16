extern	_malloc
extern	___error
extern	_ft_strlen

global	_ft_strdup

section	.text

_ft_strdup:

_loop:
		call	_ft_strlen
		mov		rcx, rax
		call	_malloc
		test	rax, rax
		jz		_error


		ret

_error:
		xor		rax, rax
		ret
