#!/bin/bash

# Generate and update github ssh keys

ssh-keygen -t rsa -b 4096 -f "~/.ssh/id_rsa" -q -C "rvazquez"

# Star ssh-agent
eval "$(ssh-agent -s)"

# Add key to ssh-agent
ssh-add ~/.ssh/id_rsa


