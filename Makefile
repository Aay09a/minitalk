# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahussein <ahussein@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/01 17:07:11 by ahussein          #+#    #+#              #
#    Updated: 2022/09/01 17:34:13 by ahussein         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER = server
CLIENT = client
CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f
SRC_SERVER = server.c
SRC_CLIENT = client.c
OBJ_SERVER = $(SRC_SERVER:.c=.o)
OBJ_CLIENT = $(SRC_CLIENT:.c=.o)
all: $(SERVER) $(CLIENT)

$(SERVER): $(OBJ_SERVER)
	@make -C ./libft02
	$(CC) $(CFLAGS) server.c -Llibft02 -lft -o $@

$(CLIENT): $(OBJ_CLIENT)
	@make -C ./libft02
	$(CC) $(CFLAGS) client.c -Llibft02 -lft -o $@
clean:
	$(RM) $(OBJ_CLIENT)
	$(RM) $(OBJ_SERVER)
fclean:
	make -C ./libft02 fclean
	$(RM) $(CLIENT) $(OBJ_CLIENT)
	$(RM) $(SERVER) $(OBJ_SERVER)

re: fclean all