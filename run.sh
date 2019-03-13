#!/bin/bash
set -e

# Install Homebrew
if ! which brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Download needed cookbooks and install into ./cookbooks/
berks vendor cookbooks

# Run chef-client
chef-client --local-mode --runlist 'recipe[kreedy_workstation]'
