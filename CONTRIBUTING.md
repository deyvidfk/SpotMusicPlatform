
## GitLab Flow

Seguimos o [GitLab Flow](https://docs.gitlab.com/ee/topics/gitlab_flow.html) para gerenciar o ciclo de vida das branches e releases do projeto. Aqui está uma visão geral:

1. **Branches:**
   - `main`: Branch principal para releases estáveis.
   - `release/`: Branch de release criada a partir de `main` para preparar versões estáveis.
   - `feat/`: Branches de funcionalidades criadas a partir de `main` para implementação de novas funcionalidades.
   - `fix/`: Branches de correção de bugs criadas a partir de `main` para corrigir problemas existentes.

2. **Fluxo de Trabalho:**
   - Crie branches específicas para suas contribuições a partir de `main`, seja `feat/` ou `fix/`.
   - Abra um Merge Request (MR) para `release/` quando estiver pronto para revisão.
   - Após revisão e aprovação, faça um merge de `release/` para `main`, **após a homologação ser concluída**.
   - Se erros forem identificados na `release/`, corrija-os em uma nova branch de `feature/`, abra um MR para `release/`, e, após a homologação, faça um MR para `main`.

3. **Versionamento Semântico:**
   - Seguimos o [Versionamento Semântico](https://semver.org/) para número de versão.

## Regras de Commit

Para manter uma boa organização e histórico do projeto, seguimos as seguintes regras de commit:

1. **Mensagens de Commit Concisas:** Use mensagens de commit claras e concisas, explicando as alterações realizadas.
2. **Padrão de Mensagem:** Seguimos o padrão [Conventional Commits](https://www.conventionalcommits.org/). Certifique-se de seguir o formato `tipo(escopo): mensagem`.
3. **Tipo de Commit:** Use tipos de commit como `feat`, `fix`, `docs`, `style`, `refactor`, `test`, etc.

Exemplo:
```bash
feat(api): adiciona endpoint para obter informações do usuário
```
## Commitlint

Utilizamos o Commitlint para validar mensagens de commit e garantir conformidade com o padrão Convencional Commits. Esta seção explica como configurar o Commitlint para projetos JavaScript. Para outras linguagens, como Python e Rust, você pode explorar ferramentas equivalentes.

### JavaScript (Node.js)

1. Instale globalmente o `@commitlint/cli`:

    ```bash
    npm install -g @commitlint/cli
    ```

2. Execute o seguinte comando antes de fazer commit:

    ```bash
    commitlint -E HUSKY_GIT_PARAMS
    ```

   Se houver problemas, o Commitlint fornecerá orientações sobre como corrigir.

### Python

Para Python, você pode utilizar o `commitizen` junto com o `cz-semantic` para seguir padrões semânticos de commit. Primeiro, instale as dependências:

```bash
pip install commitizen cz-semantic
```

Em seguida, configure o `commitizen` adicionando um script no seu `package.json`:

```json
{
  "scripts": {
    "commit": "cz"
  }
}
```

Agora, ao executar `npm run commit`, você será guiado para gerar mensagens de commit semânticas.

### Rust

Para Rust, você pode usar o `git-cz` em conjunto com o `cz-customizable` para seguir padrões semânticos de commit. Adicione as dependências no seu arquivo `Cargo.toml`:

```toml
[dev-dependencies]
git-cz = "0.8.0"
cz-customizable = "0.5.0"
```

Crie um script, por exemplo, `commit.sh`, para facilitar o uso do `git-cz`:

```bash
#!/bin/bash
cargo run --bin git-cz -- "$@"
```

Torque o script executável:

```bash
chmod +x commit.sh
```

Agora, ao executar `./commit.sh`, você será guiado para gerar mensagens de commit semânticas.

Lembre-se de ajustar as configurações conforme necessário para atender às práticas específicas do seu projeto e da linguagem utilizada.

## Padrões de Colaboração

Antes de enviar uma contribuição, considere as seguintes diretrizes:

1. **Ramo de Desenvolvimento:** Trabalhe no ramo `feature/` ou `bugfix/` e crie ramos específicos para suas contribuições.
2. **Pull Requests:** Envie Pull Requests para a branch `release/` e aguarde a revisão.
3. **Testes:** Certifique-se de que os testes estejam passando e, se aplicável, adicione testes para suas alterações.

## Reportando Problemas

Encontrou um problema? Por favor, [abra uma issue](../../issues) para relatar. Forneça informações detalhadas sobre o problema encontrado, incluindo passos para reprodução.

Obrigado por contribuir!
