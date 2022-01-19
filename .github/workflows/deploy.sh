#!/usr/bin/env bash 


git config --global user.email "janinelutw@gmail.com"
git config --global user.name "Janine Lu"

BLOG_GITHUB_CHECKOUT=${GITHUB_WORKSPACE}/checkout 
OUTPUT_DIR=${GITHUB_WORKSPACE}/public

rm -rf ${OUTPUT_DIR}
hugo -D 
# cp -r content/media ${OUTPUT_DIR}/media
cp CNAME ${OUTPUT_DIR}/CNAME
cd $BLOG_GITHUB_CHECKOUT  
cp -r $OUTPUT_DIR/* . 
git status
git add * 
git commit -am "new version $NOW "
git push 