# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mariverg <mariverg@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/13 14:45:53 by mariverg          #+#    #+#              #
#    Updated: 2024/02/27 14:22:14 by mariverg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= get_next_line.a

BONUS_NAME = get_next_line_bonus.a


SRCS	= get_next_line.c\
		  get_next_line_utils.c\

BONUS_SRCS = get_next_line_bonus.c\
			 get_next_line_utils_bonus.c\

CC		= 	gcc
FLAGS 	= 	-Wall -Werror -Wextra
INCLUDE =   get_next_line.h

OBJS 	= 	${SRCS:.c=.o}
BONUS_OBJS = ${BONUS_SRCS:.c=.o}

all: ${NAME}

bonus: $(BONUS_OBJS)
	ar rcs $(NAME) $(BONUS_OBJS) $(INCLUDE)

${NAME}: ${OBJS}
	ar rcs $(NAME) $(OBJS) $(INCLUDE)

%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -f ${OBJS} ${BONUS_OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re bonus
