#! /bin/sh
echo runnign log script
PROXY_REPO=/home/tesselproxy/proxy

cd $PROXY_REPO
env $(<config/.env xargs) node $PROXY_REPO/proxy
