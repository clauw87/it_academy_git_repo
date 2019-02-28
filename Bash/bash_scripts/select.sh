#!/bin/bash
# This is my first bash script

#select animal in "cat" "dog" "bird" "fish"
#do 
#	echo "You selected $animal"
#	break
#done

select option in "cat" "dog" "quit"
do
	case $option in
        cat) echo "Cats like sleep.";;
        dog) echo "Dogs like to play catch";;
        quit) break;;
        *) echo "I'm not sure what that is.";;
        esac
done



