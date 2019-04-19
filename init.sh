#!/bin/bash
. data.config
sudo apt-get --yes --assume-yes update
sudo apt-get --yes --assume-yes install maven subversion libdbi-perl

git clone https://github.com/SpoonLabs/astor.git
cd astor
mvn clean compile
mvn package -DskipTests=true
cp target/astor-0.0.2-SNAPSHOT.jar astor.jar
mvn dependency:build-classpath -B | egrep -v "(^\[INFO\]|^\[WARNING\])" | tee astor-classpath.txt
cd ..

git clone https://github.com/rjust/defects4j
cd defects4j
git checkout fcf6b9bb030e0f5f03ebab112eb4d4b622f2f315
./init.sh
