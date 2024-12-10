# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: owmarqui <owmarqui@student.42madrid.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/08 16:29:11 by owmarqui          #+#    #+#              #
#    Updated: 2024/12/08 16:50:12 by owmarqui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := push_swap
CFLAGS := -Wextra -Wall -Werror

SRCS := error_free.c push_swap_command.c rotate_command.c stack_utils.c\
		main.c push_swap_init.c split.c swap_command.c\
		push_command.c reverse_rotate_command.c stack_init.c tiny_sort.c

OBJS := ${SRCS:.c=.o}

all: $(NAME)
	@echo "Ready"

$(NAME): $(OBJS) $(LIBDEF)
	cc $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

