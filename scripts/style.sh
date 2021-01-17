#!/bin/bash

cd $1

for script in $(find -name '*.json'); do
  jq . --indent 4 $script | sponge $script
done
