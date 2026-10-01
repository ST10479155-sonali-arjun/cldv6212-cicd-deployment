#!/bin/bash
# Loops from 1 to 20 and prints Fizz/Buzz/FizzBuzz/number depending on divisibility.

for i in $(seq 1 20); do
    if (( i % 3 == 0 && i % 5 == 0 )); then
        echo "FizzBuzz"
    elif (( i % 3 == 0 )); then
        echo "Fizz"
    elif (( i % 5 == 0 )); then
        echo "Buzz"
    else
        echo "$i"
    fi
done