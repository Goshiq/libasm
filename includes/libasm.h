#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>

size_t	ft_read(int fd, void *buf, size_t nbytes);
size_t	ft_strlen(const char *str);
int		ft_strcmp(char *s1, char *s2);
char	*ft_strcpy(char *dst, char *src);
char	*ft_strdup(char *str);
size_t	ft_write(int fd, void *buf, size_t nbytes);

#endif
