# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: keblazer <keblazer@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2019/12/21 15:56:03 by keblazer       #+#    #+#                 #
#    Updated: 2019/12/21 15:56:04 by keblazer      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

LIB = ar rcs
RM = rm -f

CC = gcc
CCFLAGS = -Wall -Wextra -Werror

NAME = get_next_line.a
INCLUDE = get_next_line.h

SRC = .c

OBJ = $(SRC:.c=.o)


all: $(NAME)

$(NAME): $(OBJ) $(INCLUDE)
	$(LIB) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all