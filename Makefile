CC		= gcc

NA		= nasm

NAFLAG	= -f macho64

NAME	= libasm.a

LIB		= ar rcs $(NAME)

DIR		= ./srcs/

EXEC	= check

HEADER	= ./includes/

HFILE	= libasm.h

FLAGS	= -Wall -Wextra -Werror

SRCS	= ft_read.s\
		  ft_strcmp.s\
		  ft_strcpy.s\
		  ft_strdup.s\
		  ft_strlen.s\
		  ft_write.s\

OBJ_DIR	= ./objects/

OBJWDIR	= $(addprefix $(OBJ_DIR), $(OBJS))

vpath %.h	$(HEADER)
vpath %.o	$(OBJ_DIR)
vpath %.s	$(DIR)

OBJS		= $(SRCS:.s=.o)

%.o:		%.s $(HFILE) | $(OBJ_DIR)
			$(NA) $(NAFLAG) $< -o $(OBJ_DIR)$@

all:		$(NAME) | $(OBJ_DIR)

$(NAME):	$(OBJS)
			$(LIB) $(OBJWDIR)

$(OBJ_DIR):
			mkdir -p $@

$(EXEC):	$(NAME)
			$(CC) $(FLAGS) -L. -lasm main.c -I$(HEADER) -o $(EXEC)

clean:
			rm -rf $(OBJ_DIR)

fclean:		clean
			rm -f $(NAME)
			rm -f $(EXEC)

re:			fclean all

.PHONY:		all $(EXEC) clean fclean re
