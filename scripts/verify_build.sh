#!/bin/bash
EXPECTED_BUILDS=2
results=$(docker images | grep quali | grep latest | wc -l)

if [ "$results" = "$EXPECTED_BUILDS" ];
then
    exit 0
fi
exit 1
