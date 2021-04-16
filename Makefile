CC		= gcc

NA		= nasm

NAFLAG	= -f macho64

NAME	= libasm.a

LIB		= ar rcs $(NAME)

DIR		= ./srcs/

HEADER	= ./includes/

HFILE	= libasm.h

FLAGS	= -Wall -Wextra -Werror

SRCS	= ft_read.s\
		  ft_strlen.s\
		  ft_write.s\

OBJ_DIR	= ./objects/


vpath %.h	$(HEADER)
vpath %.o	$(OBJ_DIR)
vpath %.s	$(DIR)

OBJS		= $(SRCS:.s=.o)

%.o:		%.s $(HFILE) | $(OBJ_DIR)
			$(NA) $(NAFLAG) $< -o $(OBJ_DIR)$@

all:		$(NAME) | $(OBJ_DIR)

$(NAME):	$(OBJS)
			$(LIB) $(OBJ_DIR)$<

$(OBJ_DIR):
			mkdir -p $@

check:		$(NAME)
			$(CC) $(FLAGS) -L. -lasm main.c -I$(HEADER) -o check

clean:
			rm -rf $(OBJ_DIR)

fclean:		clean
			rm -f $(NAME)
			rm -f check

re:			fclean all

.PHONY:		all check clean fclean re
