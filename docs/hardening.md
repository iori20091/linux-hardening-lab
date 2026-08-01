# Linux Hardening Checklist

## Objetivo

Avaliar configurações de segurança do sistema Debian utilizando uma abordagem baseada em checklist.

---

## 1. Usuários e privilégios

- [x] Identificação de usuários
- [x] Verificação de contas com UID 0
- [x] Verificação do grupo sudo
- [x] Análise de política de senha

## 2. SSH

- [x] Verificação do login root
- [x] Verificação da autenticação por senha
- [x] Verificação da autenticação por chave
- [x] Verificação da porta SSH

## 3. Serviços

- [x] Identificação de serviços ativos
- [x] Identificação de serviços habilitados
- [ ] Remoção/desativação de serviços desnecessários

## 4. Firewall

- [x] Identificação da tecnologia de firewall
- [x] Verificação das regras
- [x] Identificação das portas abertas

## 5. Atualizações

- [x] Atualização dos índices de pacotes
- [x] Verificação de pacotes atualizáveis
- [ ] Aplicação de atualizações pendentes

## 6. Permissões

- [x] Verificação de arquivos SUID
- [x] Verificação de arquivos world-writable

## 7. Tarefas agendadas

- [x] Verificação do crontab
- [x] Verificação dos diretórios cron

## 8. Logs

- [x] Verificação de erros recentes
- [x] Verificação dos logs do SSH

---

## Metodologia

A auditoria foi realizada através da análise das configurações do sistema, serviços, usuários, permissões, firewall, atualizações, tarefas agendadas e registros de eventos.

As alterações de configuração não foram realizadas automaticamente. Cada item deve ser analisado antes de uma eventual alteração para evitar indisponibilidade ou perda de acesso administrativo.

---

## Princípios de Hardening

O processo de hardening segue os seguintes princípios:

- Princípio do menor privilégio.
- Redução da superfície de ataque.
- Remoção de serviços desnecessários.
- Atualização contínua.
- Monitoramento de eventos.
- Controle de acesso.
- Defesa em profundidade.