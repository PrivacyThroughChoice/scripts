#!/bin/bash

# Destroy current image

# Build new image
rm -rf packer/cookbooks
cd chef_repo
berks install --path ../packer/cookbooks
cd ../packer
packer build site.json
