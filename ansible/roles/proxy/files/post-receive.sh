#!/bin/sh
set -u
unset GIT_DIR
cd /home/tesselproxy/proxy
git reset --hard master
su tesselproxy <<'EOF'
echo npm install
npm install --status=info
npm run bower --status=info -y
EOF
npm start --status=info
sudo supervisorctl restart tesselproxy
