#!/bin/bash

ssh $1 'yum install -y git'
ssh $1 'git clone https://github.com/jstremick/dotfiles.git'
ssh $1 './dotfiles/bin/bootstrap.sh'
