#!/bin/bash

for file in *.tsv; do
	dirn=${file%.tsv}

	if [ ! -d "$dirn" ]; then
		mkdir "$dirn"
	fi

	mv "$file" "$dirn"
done

