#!/bin/bash
#Check format of am/pm - change to match input
if [[ $3 = AM ]];
then
  ampm=a.m.
elif [[ $3 = PM ]];
then
  ampm=p.m.
fi
#Incase $2 is entered as a single number, e.g. 1 or 2, append with a 0 to prevent returning 11 or 12 values
if (( $2 < 10 ));
then
  hour='0'"$2"
else
  hour="$2"
fi
#dealer variable for output
dlr="$(awk -F'	' '{print $1"	"$3}' $1'_Dealer_schedule' | sed 's/AM/a.m./g' | sed 's/PM/p.m./g' | grep $hour | grep $ampm | awk '{print $3,$4}')"
#Manager-friendly output
echo "The dealer working on $1 at $2 $ampm was $dlr"
