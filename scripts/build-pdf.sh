#!/bin/bash

docker run -v $PWD:/workdir:z resume  /bin/sh -c 'pdflatex resume.tex resume.pdf && pdflatex resume-es.tex resume-es.pdf'

rm -f resume*.aux resume*.log resume*.out
