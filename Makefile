NAME = libasm.a
SRC = $(wildcard *.asm)
OBJ = $(SRC:.asm=.o)
NASM = nasm
NASM_FLAGS = -f elf64
AR = ar
AR_FLAGS = rcs
CC = gcc
CFLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re

all: $(NAME) main

$(NAME): $(OBJ)
	$(AR) $(AR_FLAGS) $(NAME) $(OBJ)

%.o: %.asm
	$(NASM) $(NASM_FLAGS) $< -o $@

main: main.o $(NAME)
	$(CC) $(CFLAGS) -o $@ main.o -L. -lasm -Wl,-z,noexecstack

main.o: main.c libasm.h
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f $(OBJ) main.o

fclean: clean
	rm -f $(NAME) main

re: fclean all

