#!/bin/bash

dirs="thunr_scripts thunr_chef_repo roles/* cookbooks/* app/*"

for dir in $dirs; do
  echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  echo " $dir"
  echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  echo ""
  pushd $dir >/dev/null 2>&1
  git status
  popd >/dev/null 2>&1
  echo ""
  echo ""
done
