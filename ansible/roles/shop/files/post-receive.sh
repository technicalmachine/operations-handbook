#!/bin/sh
set -u
unset GIT_DIR
cd /home/shop/shop
git reset --hard master
su shop <<'EOF'
echo npm install
npm install --status=info
npm run bower --status=info -y
EOF
npm run build --status=info
sudo supervisorctl stop all
sudo supervisorctl restart shop
