#!/bin/bash

jdk=$1
src=/opt/java/"$jdk"/bin

for j in `ls "$src"`
do update-alternatives --install /usr/bin/"$j" "$j" "$src"/"$j" 1200
#do ln -s "$src"/"$j" ~/javatest/"$j"
done
