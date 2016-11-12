#!/bin/bash

# for mkdocs limit
mv README.md index.md

mkdocs gh-deploy
echo "publish to github"

mv index.md README.md
echo "finish"
