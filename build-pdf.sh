#!/bin/bash

docker run -v $PWD:/workdir:z resume

rm resume.aux resume.log resume.out
