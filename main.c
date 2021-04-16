/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmogo <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 18:13:51 by jmogo             #+#    #+#             */
/*   Updated: 2021/04/16 09:20:40 by jmogo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(int argc, char **argv)
{
	(void)argc;
	(void)argv;

	char	*buf = malloc(1024);

	printf("Checking read: \n");
	ft_read(0, buf, 32);
	printf("\nResult is:\n%s\n\n", buf);
	printf("OS strlen: %lu\nMy strlen: %lu\n\n", strlen(buf), ft_strlen(buf));
	printf("OS write: \n");
	write(1, buf, ft_strlen(buf));
	printf("\nMy write: \n");
	ft_write(1, buf, ft_strlen(buf));
	printf("\n\n");
	free(buf);
}
