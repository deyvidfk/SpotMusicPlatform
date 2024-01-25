# SpotMusic/readme.md

# Projeto SpotMusic

Este é um repositório monorepo para o projeto SpotMusic. Abaixo está uma breve descrição de cada projeto e as tecnologias utilizadas.

## SpotMusicApi

- **Descrição:** Uma web API em Python com Flask para o backend do SpotMusic.
- **Tecnologias:** Python, Flask.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em SpotMusicApi](SpotMusicApi/readme.md).

## SpotMusicPlayerApi

- **Descrição:** Uma API em Rust para streaming de música, utilizada pelo app de reprodução de música.
- **Tecnologias:** Rust.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em SpotMusicPlayerApi](SpotMusicPlayerApi/readme.md).

## SpotMusicWebPlayer

- **Descrição:** Aplicação web em ReactJS, trata-se de um player de música utilizado pelos clientes da SpotMusic.
- **Tecnologias:** ReactJS.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em SpotMusicWebPlayer](SpotMusicWebPlayer/readme.md).

## SpotMusicMobPlayer

- **Descrição:** Aplicação mobile feita em ReactNative, trata-se de um player de música utilizado pelos clientes da SpotMusic.
- **Tecnologias:** ReactNative.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em SpotMusicMobPlayer](SpotMusicMobPlayer/readme.md).

## Configuração de Docker

Cada projeto possui um arquivo Dockerfile para facilitar a criação de containers.

## CI/CD via GitHub Actions

O repositório está configurado com GitHub Actions para automação de CI/CD. Consulte o arquivo [.github/workflows/ci-cd.yaml](.github/workflows/ci-cd.yaml) para mais detalhes.

## Configuração Terraform

O diretório [terraform/](terraform/) contém os arquivos necessários para a configuração do Terraform.

Para mais informações específicas de cada projeto, consulte os respectivos arquivos readme.md nas pastas dos projetos.

## Executando o Ambiente com Docker Compose

Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina.

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
   ```

2. Crie um arquivo `.env` na raiz do projeto e configure as variáveis de ambiente necessárias, se aplicável.

3. Execute o seguinte comando para iniciar todos os projetos:

   ```bash
   docker-compose up
   ```

   Ou, se preferir rodar em segundo plano:

   ```bash
   docker-compose up -d
   ```

   Isso iniciará todos os serviços necessários para os projetos SpotMusic.

4. Acesse os projetos nas seguintes URLs:

   - SpotMusicApi: [http://localhost:5000](http://localhost:5000)
   - SportMusicWebPlayer: [http://localhost:3000](http://localhost:3000)

Certifique-se de ajustar as portas e URLs conforme necessário, dependendo das configurações do seu projeto. Essas são apenas instruções básicas, e você pode personalizar conforme a complexidade do seu ambiente.