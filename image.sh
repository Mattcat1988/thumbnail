#!/bin/bash
var=_thumbnail.jpg
for f in *.jpg
do
  if [[ $f != *"_thumbnail"* ]]
  then
  name= echo $f | sed 's/.jpg//'
  A=(`convert $f -resize 200x100 ${name}_thumbnail`)
    #$f | sed 's/.jpg/_thumbnail.jpg/'
    #name= echo $f | sed 's/.jpg//'
    #name=$name $var
    #convert $f -resize 200x100 "$name"_thumbnail.jpg
    #echo $name
    #echo $f
    #echo "$var"

  fi
done