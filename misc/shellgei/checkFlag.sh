#!/bin/bash
echo "input flag!";
read out;
if [ ${out:5:3} == "ctf" ]; then
    echo "hoge";
else
    echo "incorrect";
    exit 1;
fi
