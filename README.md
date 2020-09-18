# libft
A bunch of cool functions. Some are redesigned from classic libc functions, while others were created to perform common tasks. Part of the 42 School curriculum. Enjoy :)

## Compilation
This project requires `gcc` to compile the static library. To compile it, run `make` and wait a couple of seconds. If you like it, it's possible to run some tests with the command `make test`. This will the produce the `libft.a` static library, which can be used at your working directory or installed on your system and setting up the `$PATH` environment variable. Though not advisable, the user should put these files on the library `PATH` and in the header `PATH` as well.

    make
    make test

## Linking
Whenever you may need to use this library, it's possible to link it with the `-lft` flag at the linking moment. Thus, it's possible to use it when generating a simple C executable or a longer project, including it on your `Makefile`

#### Examples
1. `libft.a` at working directory: `gcc -L. -lft my_program.c`
2. `libft.a` at different directory: `gcc -L./path/to/libft -lft my_program.c`

## Functions of libft

Here's a short summary on what functions you may find on this library. This is a never ending work in progress, so you may check it out every so or often to view the most recent additions to `libft`

| Libc (Part 1)  | Libc (Part 2)  | Custom Functions | Linked List Functions |
| -------------- | -------------- | ---------------- | --------------------- |
| ft_bzero       | ft_isalpha     | ft_itoa          | ft_lstadd_new         |
| ft_memset      | ft_isdigit     | ft_substr        | ft_lstadd_front       |
| ft_memcpy      | ft_isalnum     | ft_strjoin       | ft_lstadd_back        |
| ft_memccpy     | ft_isascii     | ft_strtrim       | ft_lstsize            |
| ft_memmove     | ft_isprint     | ft_strmapi       | ft_lstlast            |
| ft_memchr      | ft_toupper     | ft_split         | ft_lstdelone          |
| ft_memcmp      | ft_tolower     | ft_putchar_fd    | ft_lstclear           |
| ft_strlen      | ft_atoi        | ft_putstr_fd     | ft_lstiter            |
| ft_strncmp     | ft_strdup      | ft_putendl_fd    | ft_lstmap             |
| ft_strlcat     | ft_calloc      | ft_putnbr_fd     |                       |
| ft_strlcpy     | ft_strnstr     |                  |                       |
| ft_strchr      | ft_strrchr     |                  |                       |
