#!/bin/bash

IFS=. read -r maj min patch <<< "$(cat VERSION)"

case $1 in 
    "major")
        maj=$(($maj+1)); min=0; patch=0
        ;;
    "minor")
        min=$(($min+1)); patch=0
        ;;
    "patch")
        patch=$(($patch+1))
        ;;
    *)
        echo "command should be one of \"major\", \"minor\" or \"patch\""; exit 1
        ;;
esac

echo "$maj.$min.$patch" > VERSION