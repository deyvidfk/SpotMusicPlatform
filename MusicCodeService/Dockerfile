# SpotMusicPlayerApi/Dockerfile

# Use a imagem oficial do Rust
FROM rust:latest

# Configuração do diretório de trabalho
WORKDIR /app

# Copie o código-fonte para o diretório de trabalho
COPY ./src /app

# Compilar o código
RUN cargo build --release

# Comando para iniciar a aplicação
CMD ["./target/release/nome_do_executavel"]