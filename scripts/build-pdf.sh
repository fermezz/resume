#!/bin/bash

docker run -v $PWD:/workdir:z resume

rm -f resume.aux resume.log resume.out
