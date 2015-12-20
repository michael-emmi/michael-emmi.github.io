#!/usr/bin/env bash

BUILD="build.ninja"
DATA="data/michaelemmi.yml"

echo -n > $BUILD
echo "# this file is generated by $0" >> $BUILD
echo >> $BUILD

echo "rule it" >> $BUILD
echo "  command = mustache \$in > \$out" >> $BUILD
echo >> $BUILD

for template in layouts/*.mustache
do
  base=$(basename $template)
  html="${base%.*}.html"
  echo "build $html: it $DATA $template" >> $BUILD
done
