# Digital watch 

YELLOW=$'\e[33m'

   while true
   do 
	   clear
	   echo $YELLOW $(date +%T)
	   sleep 1s
   done

