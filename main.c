/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmogo <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/14 18:13:51 by jmogo             #+#    #+#             */
/*   Updated: 2021/04/14 18:35:52 by jmogo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(int argc, char **argv)
{
	if (argc > 1)
	{
		printf("String is:\n%s\norig strlen: %lu\nlibs strlen: %lu\n", argv[1],
				strlen(argv[1]), ft_strlen(argv[1]));
	}
	else
	{
		printf("Where are the arguments?\n");
	}
}
