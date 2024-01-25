```markdown
# Contribuindo para o Projeto

Bem-vindo! Agradecemos por considerar contribuir para o projeto. As contribuições ajudam a melhorar a qualidade do software e a torná-lo mais útil para todos.

## Regras de Commit

Para manter uma boa organização e histórico do projeto, seguimos as seguintes regras de commit:

1. **Mensagens de Commit Concisas:** Use mensagens de commit claras e concisas, explicando as alterações realizadas.
2. **Padrão de Mensagem:** Seguimos o padrão [Conventional Commits](https://www.conventionalcommits.org/). Certifique-se de seguir o formato `tipo(escopo): mensagem`.
3. **Tipo de Commit:** Use tipos de commit como `feat`, `fix`, `docs`, `style`, `refactor`, `test`, etc.

Exemplo:
```bash
feat(api): adiciona endpoint para obter informações do usuário
```

## GitLab Flow

Seguimos o [GitLab Flow](https://docs.gitlab.com/ee/topics/gitlab_flow.html) para gerenciar o ciclo de vida das branches e releases do projeto. Aqui está uma visão geral:

1. **Branches:**
   - `main`: Branch principal para releases estáveis.
   - `develop`: Branch de desenvolvimento onde novas funcionalidades são integradas.
   - Branches de Feature: Criadas a partir de `develop` para implementação de novas funcionalidades.

2. **Fluxo de Trabalho:**
   - Crie branches específicas para suas contribuições a partir de `develop`.
   - Abra um Merge Request (MR) para `develop` quando estiver pronto para revisão.
   - Use MRs para discussões e revisões antes de mesclar.

3. **Versionamento Semântico:**
   - Seguimos o [Versionamento Semântico](https://semver.org/) para número de versão.

## Commitlint

Utilizamos o Commitlint para validar mensagens de commit e garantir conformidade com o padrão Convencional Commits.

Para garantir que suas mensagens de commit estão de acordo, você pode usar a ferramenta `commitlint`. Certifique-se de instalá-la globalmente:

```bash
npm install -g @commitlint/cli
```

Depois de instalar, execute o seguinte comando antes de fazer commit:

```bash
commitlint -E HUSKY_GIT_PARAMS
```

Se houver problemas, o Commitlint fornecerá orientações sobre como corrigir.

## Padrões de Colaboração

Antes de enviar uma contribuição, considere as seguintes diretrizes:

1. **Ramo de Desenvolvimento:** Trabalhe no ramo `develop` e crie ramos específicos para suas contribuições.
2. **Pull Requests:** Envie Pull Requests para a branch `develop` e aguarde a revisão.
3. **Testes:** Certifique-se de que os testes estejam passando e, se aplicável, adicione testes para suas alterações.

## Reportando Problemas

Encontrou um problema? Por favor, [abra uma issue](../../issues) para relatar. Forneça informações detalhadas sobre o problema encontrado, incluindo passos para reprodução.

Obrigado por contribuir!

```

Essas adições detalham como as branches são gerenciadas, como criar e revisar Merge Requests (MRs), e incluem informações sobre o Commitlint para validar mensagens de commit. Certifique-se de adaptar essas informações conforme necessário para atender às práticas específicas do seu projeto.
