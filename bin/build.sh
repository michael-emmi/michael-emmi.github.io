#!/bin/sh

mustache data/michaelemmi.yml layouts/profile.html > index.html && git add index.html
