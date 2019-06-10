#!bin/bash

while getopts 'n:' flag; do
    case "${flag}" in
        n) repo_name="$OPTARG" ;;
    esac
done

cd
cd Projects/
echo "$repo_name"

