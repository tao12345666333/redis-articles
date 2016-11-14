#!/bin/bash

usage="Usage: $0 [update] title url"

case $1 in
    (update)
        echo "*"  `date -d now +%Y-%m-%d`"  "[$2]\($3\) >> README.md
        echo "" >> README.md
        ;;

    (*)
        echo $usage
        exit 1
        ;;

esac
