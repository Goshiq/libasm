#ifndef LIBASM_H
# define LIBASM_H

# include <string.h>
# include <stdio.h>

size_t	ft_strlen(const char *str);
size_t	ft_read(int fd, void *buf, size_t nbytes);
size_t	ft_write(int fd, void *buf, size_t nbytes);

#endif
