#!/bin/sh

filename=./kws.txt

while read kw || [[ -n "$kw" ]]; do
    echo PPAs für \"$kw\" werden gesammelt
    sleep 1
    echo python3 gquestions.py query \"$kw\" de depth 1 --csv --headless
    python3 gquestions.py query "$kw" de depth 1 --csv --headless
    echo PPAs für \"$kw\" fertig gesammelt\n
    sleep 3
done < "$filename"