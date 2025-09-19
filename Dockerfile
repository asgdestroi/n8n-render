# Base Node.js
FROM node:20

# Atualiza e instala dependências
RUN apt-get update && apt-get install -y redis-server git curl

# Cria diretório do app
WORKDIR /app

# Copia package.json se precisar (ou instala Waha + n8n global)
RUN npm install -g n8n
RUN npm install -g waha

# Copia o script e env
COPY start.sh /app/start.sh
COPY .env /app/.env

# Permissão para script
RUN chmod +x /app/start.sh

# Expondo portas
EXPOSE 5678
EXPOSE 3000

# Start
CMD ["/app/start.sh"]
