##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## compil antman binary
##

SRC		=	main.c \
			print_hello.c

DIR_SRC 	= 	$(addprefix src/, $(SRC))

OBJ			=	$(DIR_SRC:.c=.o)

CFLAGS		=	-Wall -Wextra

CPPFLAGS	=	-I./include/

NAME		=	hello


all:	$(NAME)

$(NAME):	$(OBJ)
	gcc -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ) vgcore* *.gc* unit_tests

fclean:	clean
	rm -f $(NAME)

re:	fclean all

tests_run:
	gcc -o unit_tests src/print_hello.c tests/test_print_hello.c --coverage \
	-lcriterion $(CPPFLAGS)
	./unit_tests

.PHONY: all clean fclean re tests_run
