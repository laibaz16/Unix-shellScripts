#!/bin/sh
# I am lab3
prompt="Grock- ";
printf "Grock- " 
read command
set $command 

while test "$command" != 'quit' 
do

if [ "$1" = 'setdb' ] && [ "$2" = '' ]
then 
printf 'Missing argument'
fi 

if [ "$1" = 'setdb' ] 
then 
     if test -e $2 
	then
     		if test -r $2
		then 
			printf "n Database set to $2"
		else 
			printf "file $2 id not readable"
    		 fi
     else
	 printf "File $2 does not exist"
     fi

else 
 printf 'Unrecognized command.'
fi
 

if [ "$2" ] && [ "$3" ]
then 
printf "\n Extra arguments ignored."
fi

done
  exit 

