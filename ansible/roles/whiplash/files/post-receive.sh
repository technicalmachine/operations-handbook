#!/bin/sh
set -u
unset GIT_DIR
cd /home/whiplash/whiplash
git reset --hard master
npm install --status=info
sudo supervisorctl restart whiplash