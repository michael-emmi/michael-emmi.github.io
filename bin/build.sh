#!/bin/sh

DATA="data/michaelemmi.yml"

for p in layouts/*.mustache
do
  name=$(basename $p .mustache)
  echo "Building $name.html from $p"
  mustache $DATA $p > $name.html && git add $name.html
done
