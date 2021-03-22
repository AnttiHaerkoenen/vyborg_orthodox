#!/usr/bin/env bash

cd ./article/slides
pandoc -s --mathml -i -t revealjs slides-seminar-2021.md -o slides-seminar-2021.html --slide-level 2 --include-in-header custom.css
pandoc -s --mathml -i -t pptx slides-seminar-2021.md -o slides-seminar-2021.pptx --slide-level 2
sed 's/black.css/sky.css/g' slides-seminar-2021.html -i slides-seminar-2021.html
cd ..