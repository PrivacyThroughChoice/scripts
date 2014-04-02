#!/bin/bash

dirs="chef_repo roles/* cookbooks/*"

for dir in $dirs; do
  echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  echo " $dir"
  echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  echo ""
  pushd $dir >/dev/null 2>&1
  bundle install
  berks install
  berks update
  popd >/dev/null 2>&1
  echo ""
  echo ""
done
