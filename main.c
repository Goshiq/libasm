/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmogo <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 18:13:51 by jmogo             #+#    #+#             */
/*   Updated: 2021/04/16 13:25:45 by jmogo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(int argc, char **argv)
{
	(void)argc;
	(void)argv;

	char	*buf = malloc(1024);
	char	*buf2 = malloc(1024);
	char	*tocmp = "TTT";
	char	*to_dup;

	printf("Checking read: \n");
	ft_read(0, buf, 32);
	printf("\nResult is:\n%s", buf);
	printf("\n===\n");
	printf("OS strlen: %lu\nMy strlen: %lu", strlen(buf), ft_strlen(buf));
	printf("\n===\n");
	printf("OS write: \n");
	write(1, buf, ft_strlen(buf));
	printf("\nMy write: \n");
	ft_write(1, buf, ft_strlen(buf));
	printf("\n===\n");
	strcpy(buf2, buf);
	printf("OS strcpy result: %s\n", buf2);
	strcpy(buf2, "");
	ft_strcpy(buf2, buf);
	printf("My strcpy result: %s\n", buf2);
	printf("===\n");
	printf("OS strcmp: %d\n", strcmp(buf, buf2));
	printf("My strcmp: %d\n", ft_strcmp(buf, buf2));
	printf("===\n");
	printf("Now we compare:\n%s\n---vs---\n%s\n", buf, tocmp);
	printf("OS strcmp: %d\n", strcmp(buf, tocmp));
	printf("My strcmp: %d\n", ft_strcmp(buf, tocmp));
	printf("===\n");
	printf("FT_STRDUP:\n");
	printf("String is: %s\t%p\n", tocmp, tocmp);
	to_dup = ft_strdup(tocmp);
	printf("String is: %s\t%p\n", to_dup, to_dup);
}
