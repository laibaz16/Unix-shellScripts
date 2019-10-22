#!/bin/sh
set $command
printf "Grock- "
read command

while test if ["$1" != "quit"]{
	 if ["$1" == "setdb"]{
	then	
		if ["$2" != ""]{
		then
			if ["$2" == -e && "$2" == -r]
			then 
				printf "$database is set to $2";
			elif ["$2" != -e]
			then 
				printf "File $2 does not exist";
			elif ["$2" != -r]
			then
				printf "File $2 is not readable";
			fi
		else {
		 printf "Missing Argument";
		}		
		fi
	}
	else printf "Command unrecognize";

fi
}
