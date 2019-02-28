#!/bin/bash
# This is a basic bash script about functions

function greet {
echo "Hi, $1. Have a nice $2"
}

#greet Claudia morning!

#greet Everyone evening!


function numberthings {
i=1
for f in $@; do
       echo $i: $f
((i+=1))
done
}

#numberthings $(ls)

numberthings pine birch maple spruce
