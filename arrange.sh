#!/bin/bash

mkdir -p {a..z}

for file in files/*
do

    first_letter=$(echo "${file##*/}" | cut -c1 | tr '[:upper:]' '[:lower:]')

    if [ -d "$first_letter" ]; then
        mv "$file" "$first_letter/"
    fi
done
