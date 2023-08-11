#!/bin/bash

# use the following setup to define longer flags in bash


while test $# -gt 0; do
  case "$1" in
    --first)
        shift
        first_argument=$1
        shift
        ;;
    --second)
        shift
        second_argument=$1
        shift
        ;;
  esac
done

echo $first_argument
echo $second_argument