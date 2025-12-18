NAME = MONITOR
SRCS = main.c cpu_calc.c ram_calc.c storage_calc.c temp_calc.c 
HDRS = monitor.h
OBJS = $(SRCS:.c=.o)
CC = gcc 
CCFLAGS = -Wall -Wextra -Werror -O2
INSTALL_DIR = $(HOME)/.local/bin

$(NAME): $(OBJS)
	$(CC) $(CCFLAGS) $(OBJS) -o $(NAME)

all: $(NAME)

%.o: %.c $(HDRS)
	$(CC) $(CCFLAGS) -c $< -o $@

install: $(NAME)
	mkdir -p $(INSTALL_DIR)
	cp $(NAME) $(INSTALL_DIR)/

clean: 
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all install clean fclean re
