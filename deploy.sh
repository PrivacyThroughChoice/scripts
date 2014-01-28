#!/bin/bash

# Destroy current image

# Build new image
rm -rf thunr_packer/cookbooks
cd thunr_chef_repo
berks install --path ../thunr_packer/cookbooks
cd ../thunr_packer
packer build thunr-site.json
