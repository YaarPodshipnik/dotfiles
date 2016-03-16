#!/bin/sh

for ((j=0; j<256; j+=16)); do
  for ((i=$j; i<$j+16; i++)); do
    printf "\e[38;5;%dm %03d" $i $i
  done
  printf "\n"
done

printf "\e[0m\n"

for ((i=30; i<38; i++)); do
  printf "\e[%dm %03d" $i $i
done
printf "\n"

for ((i=30; i<38; i++)); do
  printf "\e[1;%dm %03d" $i $i
done
printf "\n"

printf "\e[0m\n"

exit 0
