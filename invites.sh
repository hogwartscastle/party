#!/usr/bin/env bash

declare -a arr=("name1" "name2" "name3")

for i in "${arr[@]}"
do
   name=`echo "$i" | rev`
   mkdir $name
   cp index.html $name/index.html
   git add .
done