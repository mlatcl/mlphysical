#/bin/bash

FILES=""
SKIP=true
while read stub; do
    if $SKIP; then
	SKIP=false
    else
	maketalk $stub.md
    fi
done < lectures.csv
