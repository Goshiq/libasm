CC		= gcc

NA		= nasm

NAFLAG	= -f macho64

NAME	= libasm.a

LIB		= ar rcs $(NAME)

DIR		= ./srcs/

HEADER	= ./includes/

HFILE	= libasm.h

FLAGS	= -Wall -Wextra -Werror

SRCS	= ft_write.s\
		  ft_read.s\
		  ft_strlen.s

vpath %.s	$(DIR)
vpath %.h	$(HEADER)

OBJS		= $(SRCS:.s=.o)

%.o:		%.s
			$(NA) $(NAFLAG) $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
			$(LIB) $(OBJS)

clean:
			rm -rf $(OBJS)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
