#!/bin/bash
# Start Redis (opcional se você quiser usar Redis local)
redis-server --daemonize yes

# Start Waha
echo "Iniciando Waha..."
nohup npx waha &

# Start N8N
echo "Iniciando N8N..."
n8n start

chmod +x start.sh
