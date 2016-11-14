#!/bin/bash

usage="Usage: $0 [update|deploy] title url"

case $1 in
    (update)
        git checkout master
        git pull origin master
        echo "*"  `date -d now +%Y-%m-%d`"  "[$2]\($3\) >> README.md
        echo "" >> README.md
        ;;

    (deploy)
        echo "deploy"
        # for mkdocs limit
        mv README.md index.md
        mkdocs gh-deploy
        echo "publish to github"
        mv index.md README.md
        echo "finish"
        ;;

    (*)
        echo $usage
        exit 1
        ;;

esac
