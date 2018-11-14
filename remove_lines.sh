#!/bin/sh

NUMBEROFLINES="$(wc -l <  /path/to/file)"
LIMIT=400
DIFF=$(( $NUMBEROFLINES - $LIMIT ))

if [ $NUMBEROFLINES  -gt 400 ]
        then
                sed -i "1,${DIFF}d"  /path/to/file
fi
