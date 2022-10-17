#!/bin/bash

npm ci --production && npm run download-dist
pm2 start server/server.js --name uptime-kuma -- --port=$port
