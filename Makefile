# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aroque <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/21 11:20:51 by aroque            #+#    #+#              #
#    Updated: 2020/01/25 20:37:09 by aroque           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC		 =	gcc
CC_FLAGS =	-Wall	\
			-Wextra	\
			-Werror


LD_FLAGS = 

INCLUDES =	./include

SRC_DIR	= 	./src
SRC		=	${SRC_DIR}/ft_memset.c			\
			${SRC_DIR}/ft_bzero.c			\
			${SRC_DIR}/ft_memcpy.c			\
			${SRC_DIR}/ft_memccpy.c			\
			${SRC_DIR}/ft_memmove.c			\
			${SRC_DIR}/ft_memchr.c			\
			${SRC_DIR}/ft_memcmp.c			\
			${SRC_DIR}/ft_strlen.c			\
			${SRC_DIR}/ft_strlcpy.c			\
			${SRC_DIR}/ft_strlcat.c			\
			${SRC_DIR}/ft_strchr.c			\
			${SRC_DIR}/ft_strrchr.c			\
			${SRC_DIR}/ft_strnstr.c			\
			${SRC_DIR}/ft_strncmp.c			\
			${SRC_DIR}/ft_atoi.c			\
			${SRC_DIR}/ft_isalpha.c			\
			${SRC_DIR}/ft_isdigit.c			\
			${SRC_DIR}/ft_isalnum.c			\
			${SRC_DIR}/ft_isascii.c			\
			${SRC_DIR}/ft_isprint.c			\
			${SRC_DIR}/ft_toupper.c			\
			${SRC_DIR}/ft_tolower.c			\
			${SRC_DIR}/ft_calloc.c			\
			${SRC_DIR}/ft_strdup.c			\
			${SRC_DIR}/ft_substr.c			\
			${SRC_DIR}/ft_strjoin.c			\
			${SRC_DIR}/ft_strtrim.c 		\
			${SRC_DIR}/ft_split.c			\
			${SRC_DIR}/ft_itoa.c			\
			${SRC_DIR}/ft_strmapi.c			\
			${SRC_DIR}/ft_putchar_fd.c		\
			${SRC_DIR}/ft_putstr_fd.c		\
			${SRC_DIR}/ft_putendl_fd.c		\
			${SRC_DIR}/ft_putnbr_fd.c		\
			${SRC_DIR}/ft_lstnew.c			\
			${SRC_DIR}/ft_lstadd_front.c	\
			${SRC_DIR}/ft_lstsize.c			\
			${SRC_DIR}/ft_lstlast.c			\
			${SRC_DIR}/ft_lstadd_back.c		\
			${SRC_DIR}/ft_lstdelone.c		\
			${SRC_DIR}/ft_lstclear.c		\
			${SRC_DIR}/ft_lstiter.c			\
			${SRC_DIR}/ft_lstmap.c

OBJ_DIR 	=	./build
OBJ			=	$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))
OBJ_BONUS	=	$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_BONUS))

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $^

bonus: ${NAME} ${OBJ_BONUS} 
	ar rcs $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	${CC} ${CC_FLAGS} -c -I${INCLUDES} $< -o $@

clean:
	$(RM) ${OBJ} ${OBJ_BONUS}

fclean: clean
	$(RM) ${NAME}

re: fclean all

test: all
	$(MAKE) -C test
	./test/test_libft
