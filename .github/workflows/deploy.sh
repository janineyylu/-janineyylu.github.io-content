#!/usr/bin/env bash 

set -e 

BLOG_GITHUB_CHECKOUT=${GITHUB_WORKSPACE}/checkout 
OUTPUT_DIR=${GITHUB_WORKSPACE}/public

git config --global user.email "janinelutw@gmail.com"
git config --global user.name "Janine Lu"



echo "got this far.."

rm -rf ${OUTPUT_DIR}

hugo -D 

cp CNAME ${OUTPUT_DIR}/CNAME

cd $BLOG_GITHUB_CHECKOUT  

cp -r $OUTPUT_DIR/* . 

git status
git add * 
git commit -am "new version $NOW "
git push 