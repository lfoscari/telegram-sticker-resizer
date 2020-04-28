#!/bin/sh

set -e

OUTPUT=./thumb
SIZE=512x512

function usage {
    echo usage: thumb [-d destination] [-s size] images...
    exit 1
}

[[ $# -eq 0 ]] && usage

# Parse parameters
while getopts d:s: option
do
    case "${option}" in
        d) OUTPUT="$OPTARG" ;;
        s) SIZE="$OPTARG" ;;
        *) usage ;;
    esac
done

# Create destination directory
[[ ! -d "$OUTPUT" ]] && mkdir "$OUTPUT"

# Shift args to start reading files
shift $(($OPTIND - 1))

# Convert files
for p in "$@"; do
    if [[ -f "$p" ]]; then
        echo Reducing "$p" to "$SIZE"
        convert "$p" -resize "$SIZE" -background "rgba(0, 0, 0, 0)" -gravity center -extent "$SIZE" "$OUTPUT/${p%.*}.png"
    else
        echo Image "$p" not found
        exit -1
    fi
done
