#!/bin/sh

NUMBEROFLINES="$(wc -l <  /home/admin/web/facebook.justsell.com.br/public_html/webhook/comparison.txt)"
LIMIT=400
DIFF=$(( $NUMBEROFLINES - $LIMIT ))

if [ $NUMBEROFLINES  -gt 400 ]
        then
                sed -i "1,${DIFF}d"  /home/admin/web/facebook.justsell.com.br/public_html/webhook/comparison.txt
fi
