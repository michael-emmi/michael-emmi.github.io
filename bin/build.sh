#!/bin/sh

DATA="data/michaelemmi.yml"
PAGES="index cv"

for p in ${PAGES}
do
  echo "Building ${p}.html"
  mustache ${DATA} layouts/${p}.mustache > ${p}.html && git add ${p}.html
done
