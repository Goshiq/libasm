global	_ft_strcmp

section	.text

_ft_strcmp:

_loop:
		mov	al, byte [rsi]
		mov	bl, byte [rdi]
		sub	bl, al
		movzx	rax, bl
		cmp	bl, 0
		jne	_exit
		cmp	byte [rdi], 0
		je	_exit
		inc	rsi
		inc	rdi
		jmp	_loop

_exit:
		ret
