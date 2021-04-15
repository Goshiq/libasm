/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmogo <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 18:13:51 by jmogo             #+#    #+#             */
/*   Updated: 2021/04/15 22:00:45 by jmogo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(int argc, char **argv)
{
	(void)argc;
	(void)argv;

	char	*str = "It is a test string";
	char	*buf = malloc(1024);

	printf("String is: %s\nOS strlen: %lu\nMy strlen: %lu\n\n", str, strlen(str), ft_strlen(str));
	printf("OS write: \n");
	write(1, str, 19);
	printf("\nMy write: \n");
	ft_write(1, str, 19);
	printf("\n\n");
	printf("Checking read: \n");
	ft_read(0, buf, 32);
	printf("Result is:\n%s\n\n", buf);
}
