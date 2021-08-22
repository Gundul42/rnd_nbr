# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    testme.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: graja <graja@student.42wolfsburg.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/13 17:40:34 by graja             #+#    #+#              #
#    Updated: 2021/08/22 08:32:03 by graja            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if [ ! -f ./rnd ]; then
	echo
	echo "compiling rnd"
	gcc rnd.c -o rnd
fi

if [ ! -f ../push_swap ]; then
	make -C ..
fi

TEST=$(./rnd 3 100 1)
echo
echo "Test with 3:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 5 1000 -1)
echo
echo "Test with 5:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 10 1000 1)
echo
echo "Test with 10:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 30 1000 -1)
echo
echo "Test with 30:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 50 1000000 1)
echo
echo "Test with 50:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 100 10000000 -1)
echo
echo "Test with 100:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 500 100000000 1)
echo
echo "Test with 500:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST

TEST=$(./rnd 1000 100000000 -1)
echo
echo "Test with 1000:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Push_swap needed $DIFF seconds"
../push_swap $TEST | ./checker $TEST
