#!/bin/sh

mustache data/michaelemmi.yml layouts/index.mustache > index.html && git add index.html
mustache data/michaelemmi.yml layouts/cv.mustache > cv.html && git add cv.html
