# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    testme.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: graja <graja@student.42wolfsburg.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/13 17:40:34 by graja             #+#    #+#              #
#    Updated: 2021/08/27 15:24:36 by graja            ###   ########.fr        #
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

if [ ! -f ../checker ]; then
	make bonus -C ..
fi

if [ -f ../checker ]; then
	BONUS=$"Y"
fi

TEST=$(./rnd 3 100 1)
echo
echo "Test with 3:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
../push_swap $TEST | ./checker $TEST
if [ -n "$BONUS" ]; then
  echo "Your checker file: "
  ../push_swap $TEST | ../checker $TEST
else
  echo "No Bonus available"
fi
echo "Push_swap needed $DIFF seconds"

TEST=$(./rnd 5 1000 -1)
echo
echo "Test with 5:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
../push_swap $TEST | ./checker $TEST
if [ -n "$BONUS" ]; then
  echo "Your checker file: "
  ../push_swap $TEST | ../checker $TEST
else
  echo "No Bonus available"
fi
echo "Push_swap needed $DIFF seconds"

TEST=$(./rnd 100 10000000 -1)
echo
echo "Test with 100:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
../push_swap $TEST | ./checker $TEST
if [ -n "$BONUS" ]; then
  echo "Your checker file: "
  ../push_swap $TEST | ../checker $TEST
else
  echo "No Bonus available"
fi
echo "Push_swap needed $DIFF seconds"

TEST=$(./rnd 500 100000000 1)
echo
echo "Test with 500:"
START=$(date +%s)
../push_swap $TEST | wc -l
END=$(date +%s)
DIFF=$(( $END - $START ))
../push_swap $TEST | ./checker $TEST
if [ -n "$BONUS" ]; then
  echo "Your checker file: "
  ../push_swap $TEST | ../checker $TEST
else
  echo "No Bonus available"
fi
echo "Push_swap needed $DIFF seconds"
