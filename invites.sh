#!/usr/bin/env bash

declare -a arr=("Maya" "Eleanor" "Kiera" "Amelie" "Tabatha" "Sasha" "Jasmin" "Tillie" "Praniv")

for name in "${arr[@]}"
do
   reverse=`echo "$name" | awk '{print tolower($0)}' | rev`
   rm -rf ${reverse}
   mkdir ${reverse}
   cp template.html ${reverse}/index.html
   sed s/XXXXX/${name}/g ${reverse}/index.html > new ; mv new ${reverse}/index.html
   git add .
done