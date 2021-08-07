/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rnd.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: graja <graja@student.42wolfsburg.de>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/06 17:12:42 by graja             #+#    #+#             */
/*   Updated: 2021/08/07 10:48:03 by graja            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int	main(int argc,char **argv)
{
	long	n;
	long	nbr;
	int	max;
	int	i;
	char	*chk;

	i = 0;
	srandom(time(NULL));
	if (argc < 3)
	{
		printf("USE: rnd <n element> <max value>\n\n");
		return (0);
	}
	n = atoi(argv[1]);
	max = atoi(argv[2]);
	if (n > max)
	{
		printf("ERROR: n is larger than max possible value\n\n");
		return (0);
	}
	chk = calloc(max * 2 + 1, sizeof(char));
	if (!chk)
		return (0);
	while (n > 0 && i < n)
	{
		nbr = random() % max;
		if (random() % 2)
			nbr *= -1;
		if ((nbr < 0 && !chk[nbr * -1]) || (nbr >= 0 && !chk[max + nbr]))
		{
			printf("%ld ", nbr);
			i++;
			if (nbr < 0)
				chk[nbr * -1] = 1;
			else
				chk[max + nbr] = 1;
		}
	}
	free(chk);
	printf("\n");
	return (1);
}
