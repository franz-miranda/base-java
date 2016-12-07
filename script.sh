#!/bin/bash

INPUT=$PWD
SUBSTRING=$(echo $INPUT| cut -d'/' -f 3)
echo $SUBSTRING
sed s/"{{ item.name }}"/$SUBSTRING/g $PWD/pom.j2 > $PWD/pom.xml
sed s/"{{ item.name }}"/$SUBSTRING/g $PWD/JunitTesting/pom.j2 > $PWD/JunitTesting/pom.xml
sed s/"{{ item.name }}"/$SUBSTRING/g $PWD/JunitTesting/target/classes/META-INF/maven/com.kdp.java.junit/JunitTesting/pom.j2 > $PWD/JunitTesting/target/classes/META-INF/maven/com.kdp.java.junit/JunitTesting/pom.xml

git config --global user.name $SUBSTRING
git config --global user.email $SUBSTRING\@example.com

git add . 
git commit -m "Config pom.xml"
git push origin master
