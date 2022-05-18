#!/bin/bash
function myconvert {
    JPG_REGEX=".*\.jpg$"
    if [[ $file != *"_thumbnail"* ]] && [[ $file =~ $JPG_REGEX ]]
    then
      name=${file//.jpg/}
      convert "$file" -thumbnail 320 "${name}_thumbnail.jpg"
    fi
}
if [ -n "$1" ];
then
  while IFS= read -r file;
  do
    myconvert
  done <"$1"
else
  for file in *.jpg
  do
    myconvert
  done
fi
