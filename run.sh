#!/bin/bash
set -e

# TODO: check that not running as root

# TODO: check for chef workstation or dk

# TODO: check for password-less sudo

# Install Homebrew
if ! which brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Download needed cookbooks and install into ./cookbooks/
berks vendor cookbooks

# Run chef-client
chef-client --local-mode --runlist 'recipe[kreedy_workstation]'
