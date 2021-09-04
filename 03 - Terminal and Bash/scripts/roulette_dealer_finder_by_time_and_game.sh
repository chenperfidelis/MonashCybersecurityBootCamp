#!/bin/bash

#Incase $2 is entered as a single number, e.g. 1 or 2, append with a 0 to prevent returning 11 or 12$
if (( $2 < 10 ));
then
  hour='0'"$2"
elif (( $2 > 12 ));
then
  echo "Please enter a valid time, e.g. between 1 and 12" && exit 1
else
  hour="$2"
fi

#Check format of am/pm - change to match input
if [[ $3 = AM ]] || [[ $3 = a.m ]];
then
  ampm=a.m.
elif [[ $3 = PM ]] || [[ $3 = p.m ]];
then
  ampm=p.m.
else
  ampm=$3
fi

#Checking game argument
if [[ $4 = BLACKJACK ]] || [[ $4 = 1 ]];
then
  game=2
elif [[ $4 = ROULETTE ]] || [[ $4 = 2 ]];
then
  game=3
elif [[ $4 = TEXAS ]] || [[ $4 = 3 ]];
then
  game=4
else
echo "Please enter BLACKJACK, ROULETTE or TEXAS for the game" && exit 1
fi


dealer="$(grep $hour $1'_Dealer_schedule' | sed 's/AM/a.m./g' | sed 's/PM/p.m./g' | grep $ampm | awk -F'	' '{print $'$game'}')"
echo "The dealer working on $1 at $hour $ampm was $dealer"
