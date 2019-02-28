#!/bin/bash
# This is a basic bash script  about flags.

#while getopts u:p: option; do
#	case $option in
#		u) user=$OPTARG;;
#		p) pass=$OPTARG;;
#	esac
#done

#echo "User: $user / Pass: $pass"

while getopts :u:p:ab option; do
        case $option in
                u) user=$OPTARG;;
                p) pass=$OPTARG;;
		a) echo "Got a!";;
		b) echo "Got b!";;
		?) echo "I don know what $OPTARG is!";;
        esac
done


echo "User: $user / Pass: $pass"

