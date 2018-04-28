#!/bin/bash

nb_lines=$(wc -l < all.txt)
line_nb=$(($RANDOM % $nb_lines))
sed "${line_nb}q;d" all.txt
