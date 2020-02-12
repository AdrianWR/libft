# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aroque <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/21 11:20:51 by aroque            #+#    #+#              #
#    Updated: 2020/01/25 20:36:36 by aroque           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = run

CC =		gcc
CC_FLAGS =	-Wall	\
			-Wextra	\
			-Werror

LD_FLAGS = 

INCLUDES =	..

LIB_DIR =	..
LIB		=	${LIB_DIR}/libft.a

SRC_DIR	= 	.
SRC		=	${SRC_DIR}/test.c

OBJ_DIR =	.
OBJ		=	$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

all: ${NAME}

${NAME}: ${OBJ} ${LIB}
	${CC} ${LD_FLAGS} $^ -o $@

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c
	${CC} ${CC_FLAGS} -c $< -I${INCLUDES} -o $@

clean:
	rm -f ${OBJ}

fclean: clean
	rm -f ${NAME}

re: fclean all
