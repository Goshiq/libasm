global	_ft_strcpy

section	.text

_ft_strcpy:
		push	rdi
_loop:
		cmp	byte [rsi], 0
		je _exit
		mov	al, byte [rsi]
		mov	[rdi], al
		inc	rsi
		inc	rdi
		jmp	_loop
_exit:
		pop	rdi
		ret
