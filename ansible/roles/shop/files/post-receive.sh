#!/bin/sh
su shop <<'EOF'
set -u
unset GIT_DIR
cd /home/shop/shop
git reset --hard master
npm install --status=info
npm run bower --status=info -y
EOF
npm run build --status=info
sudo supervisorctl restart shop
