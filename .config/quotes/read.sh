#!/bin/bash

# Locally
# nb_lines=$(wc -l < all.txt)
# line_nb=$(($RANDOM % $nb_lines))
# sed "${line_nb}q;d" all.txt

# To add to .bashrc
file=$HOME/.config/quotes/all.txt
nb_lines=$(wc -l < $file)
line_nb=$(($RANDOM % $nb_lines))
sed "${line_nb}q;d" $file
