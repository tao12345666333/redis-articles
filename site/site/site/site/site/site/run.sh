#!/bin/bash

usage="Usage: $0 [update|deploy] url title "

case $1 in
    (update)
        git checkout master
        git pull origin master
        echo "*"  `date +%Y-%m-%d`"  "[$3]\($2\) >> README.md
        echo "" >> README.md
        git add README.md
        git commit -m "$3"
        git push origin master
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
