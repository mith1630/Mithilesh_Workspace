#!/bin/bash

Java_Version=$1

if [ -f $Java_Version ];
    tar -xvzf $Java_Version
    cd ${Java_Version%.*}
fi