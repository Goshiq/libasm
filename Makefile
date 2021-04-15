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

OBJ_DIR	= ./objects/

#OBJS_W_DIR	= $(addprefix $(OBJ_DIR), $(OBJS))

vpath %.h	$(HEADER)
vpath %.o	$(OBJ_DIR)
vpath %.s	$(DIR)

OBJS		= $(SRCS:.s=.o)

%.o:		%.s $(HFILE) | $(OBJ_DIR)
			$(NA) $(NAFLAG) $< -o $(OBJ_DIR)$@

all:		$(NAME) | $(OBJ_DIR)

$(NAME):	$(OBJS)
			$(LIB) $(OBJ_DIR)$<

			#$(LIB) $(OBJS_W_DIR)

$(OBJ_DIR):
			mkdir -p $@

check:		$(NAME)
			$(CC) $(FLAGS) -L. -lasm main.c -I$(HEADER) -o check

clean:
			rm -rf $(OBJ_DIR)

fclean:		clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all check clean fclean re
