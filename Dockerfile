FROM n8nio/n8n:latest

# Expõe a porta que o Render vai usar
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["n8n", "start"]
