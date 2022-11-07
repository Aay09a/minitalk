# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahussein <ahussein@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/25 22:00:18 by ealsomah          #+#    #+#              #
#    Updated: 2022/09/01 17:48:12 by ahussein         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Werror -Wextra
LIB = ar -rcs
OBJ = $(SRC:%.c=%.o)
SRC =	ft_atoi.c		\
		ft_putchar_fd.c	\
		ft_putnbr_fd.c	\
		ft_putstr_fd.c		



all :$(NAME)

$(NAME) : ${OBJ}
	@${LIB} ${NAME} ${OBJ}

%.o : %.c
	gcc $(FLAGS) -c $^

norme :
	norminette
clean :
	rm -f $(NAME)
fclean : clean
	rm -f *.o
cleano :
	rm -f *.o
re : fclean all

bonus :${BONUS_OBJ}
	@${LIB} ${NAME} ${BONUS_OBJ}
