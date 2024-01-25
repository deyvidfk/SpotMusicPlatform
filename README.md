# Projeto SpotMusic

Este repositório é um monorepo para a plataforma SpotMusic, composto por diferentes projetos em várias linguagens. Abaixo estão breves descrições de cada projeto e as tecnologias utilizadas, organizados em categorias para aplicativos de artistas, ouvintes e aplicações internas.

## **Plataforma para Artistas**

### MusicStudioWeb

- **Descrição:** Aplicação web em ReactJS, um sistema de gerenciamento de playlist para artistas.
- **Tecnologias:** ReactJS.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicStudioWeb](MusicStudioWeb/readme.md).

### MusicStudioBackoffice

- **Descrição:** Aplicação web em ReactJS, um sistema de gerenciamento interno para inscrições de artistas, faturamento, etc., utilizado apenas por funcionários do SpotMusic.
- **Tecnologias:** ReactJS.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicStudioWeb](MusicStudioWeb/readme.md).

### MusicStudioApi

- **Descrição:** Uma API web em Python com Flask para o backend de aplicações SpotMusicStudio.
- **Tecnologias:** Python, Flask.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicStudioApi](MusicStudioApi/readme.md).

## **Plataforma para Ouvintes**

### MusicPlayerApi

- **Descrição:** Uma API web em Python com Flask para o backend dos reprodutores de música SpotMusic.
- **Tecnologias:** Python, Flask.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicPlayerApi](MusicPlayerApi/readme.md).

### MusicPlayerWeb

- **Descrição:** Aplicação web em ReactJS, um player de música utilizado pelos clientes da SpotMusic.
- **Tecnologias:** ReactJS.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicPlayerWeb](MusicPlayerWeb/readme.md).

### MusicPlayerMob

- **Descrição:** Aplicação mobile feita em ReactNative, um player de música utilizado pelos clientes da SpotMusic.
- **Tecnologias:** ReactNative.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicPlayerMob](MusicPlayerMob/readme.md).

## **Bastidores**

### MusicCodeService

- **Descrição:** Um serviço em Rust para codificar arquivos de áudio em diversos formatos e qualidades.
- **Tecnologias:** Rust.
- **Instruções de Instalação e Uso:** Consulte o [readme.md em MusicCodeService](MusicCodeService/readme.md).


## **Ambiente de desenvolvimento**

### Configuração de Docker

Cada projeto possui um arquivo Dockerfile para facilitar a criação de containers.

### CI/CD via GitHub Actions

O repositório está configurado com GitHub Actions para automação de CI/CD. Consulte o arquivo [.github/workflows/ci-cd.yaml](.github/workflows/ci-cd.yaml) para mais detalhes.

### Configuração Terraform

O diretório [terraform/](terraform/) contém os arquivos necessários para a configuração do Terraform.

Para mais informações específicas de cada projeto, consulte os respectivos arquivos readme.md nas pastas dos projetos.

## **Executando o Ambiente com Docker Compose**

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