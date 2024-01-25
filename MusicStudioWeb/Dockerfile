# SportMusicWebPlayer/Dockerfile

# Use a imagem oficial do Node.js
FROM node:14-alpine

# Configuração do diretório de trabalho
WORKDIR /app

# Copie o código-fonte para o diretório de trabalho
COPY ./src /app

# Instale as dependências
RUN npm install

# Comando para iniciar a aplicação
CMD ["npm", "start"]