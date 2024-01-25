# SpotMusicApi/Dockerfile

# Use a imagem oficial do Python
FROM python:3.8-slim

# Configuração do diretório de trabalho
WORKDIR /app

# Copie o código-fonte para o diretório de trabalho
COPY ./app /app

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando para iniciar a aplicação
CMD ["python", "main.py"]