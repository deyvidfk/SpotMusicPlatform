# Infraestrutura da Spotmusic

A arquitetura da Spotmusic é projetada para atender às demandas da plataforma atual. Abaixo está um diagrama representando a infraestrutura utilizada:

![Infraestrutura Spotmusic](../docs/assets/Infra%20Diagram.svg)

## Componentes Essenciais:

### 1. VPC (Virtual Private Cloud):
   **Descrição:**
    A VPC proporciona isolamento e segmentação da rede, permitindo a criação de uma rede personalizada.
   **Justificativa:**
     Essencial para garantir a segurança e a comunicação eficiente entre os componentes da infraestrutura.

### 2. IAM Roles e Policies (Identity and Access Management):
   **Descrição:**
     Definição de roles e políticas de IAM para gerenciar permissões e garantir a segurança da conta.
   **Justificativa:**
     Fornece controle granular sobre as permissões de acesso, seguindo princípios de segurança baseados em princípios do menor privilégio.

### 3. Grupos de Segurança:
   **Descrição:**
     Configuração de grupos de segurança para controlar o tráfego de entrada e saída entre os recursos.
   **Justificativa:**
     Garante uma camada adicional de segurança, permitindo apenas o tráfego necessário.

### 4. Backend Remoto:
   **Descrição:**
     Backend remoto para armazenar centralmente o estado do Terraform.
   **Justificativa:**
     Facilita a colaboração da equipe e oferece uma fonte única de verdade para o estado da infraestrutura.

### 5. AWS Secrets Manager, AWS Parameter Store:
   **Descrição:**
     Armazenamento seguro de informações sensíveis, como chaves e senhas.
   **Justificativa:**
     Protege dados sensíveis, evitando exposição acidental e permitindo a rotação fácil de segredos.

### 6. Amazon S3 (Simple Storage Service):
   **Descrição:**
     Armazenamento escalável de arquivos de áudio.
   **Justificativa:**
     Ideal para armazenar grandes volumes de dados, como arquivos de áudio, com escalabilidade e alta disponibilidade.

### 7. Amazon CloudFront:
   **Descrição:**
     Distribuição de conteúdo (CDN) para a aplicação web.
   **Justificativa:**
     Melhora a velocidade de entrega de conteúdo, reduzindo a latência e melhorando a experiência do usuário.

### 8. Redis - Amazon ElastiCache for Redis:
   **Descrição:**
     Uso do ElastiCache para caching e otimização de desempenho.
   **Justificativa:**
     Melhora a eficiência e a velocidade de acesso aos dados, especialmente útil para operações frequentes.

### 9. Amazon Simple Queue Service (SQS):
   **Descrição:**
     Criação de filas no SQS para processamento assíncrono.
   **Justificativa:**
     Facilita a implementação de operações assíncronas, garantindo uma resposta mais rápida às solicitações.

### 10. AWS WAF (Web Application Firewall):
**Descrição:**
Configuração do AWS Web Application Firewall para segurança da aplicação web.
**Justificativa:**
Protege contra ataques comuns da web, como injeções SQL e cross-site scripting (XSS).

### 11. Logs - AWS CloudWatch:
   **Descrição:**
      Configuração do CloudWatch para monitoramento e logs.
    **Justificativa:**
      Permite monitoramento em tempo real e análise de logs para identificação e resolução rápida de problemas.

### 12. Amazon RDS (Relational Database Service):
**Descrição:**
Provisionamento do RDS para o banco de dados relacional (por exemplo, MySQL).
**Justificativa:**
Fornece um banco de dados gerenciado, escalável e altamente disponível para a aplicação.

### 13. API Gateway:
**Descrição:**
Configuração do API Gateway para expor a Web API.
**Justificativa:**
      Simplifica a criação, manutenção e escalabilidade de APIs, facilitando a integração com serviços da AWS.

## Componentes de Aplicação:

### 1. ECR (Elastic Container Registry):
   **Descrição:**
    Configuração do ECR para armazenar imagens de contêineres.
   **Justificativa:**
    Facilita o gerenciamento e a implantação de contêineres, mantendo um registro centralizado.

### 2. AWS ECS (Elastic Container Service):
   **Descrição:**
    Provisionamento do ECS para orquestração e gerenciamento de contêineres.
   **Justificativa:**
    Permite a execução eficiente e escalável de contêineres, facilitando a implementação e a atualização da aplicação.

### 3. Container Docker - Web API:
   **Descrição:**
     Implantação da Web API no ECS usando imagens do ECR.
   **Justificativa:**
     Utilização de contêineres para garantir consistência de ambientes e facilidade na escalabilidade horizontal.

### 4. Container Docker - Workers:
**Descrição:**
Configuração de contêineres para execução em segundo plano.
**Justificativa:**
Utilização de workers para processar tarefas em segundo plano, melhorando a eficiência e a escalabilidade
