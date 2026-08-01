# Relatório Executivo — Linux Hardening Lab

## 1. Resumo Executivo

Foi realizada uma avaliação de segurança em um sistema Linux Debian com o objetivo de identificar configurações que poderiam aumentar a superfície de ataque do ambiente.

A avaliação contemplou usuários, privilégios, SSH, firewall, serviços, atualizações, permissões, tarefas agendadas e logs.

As configurações foram analisadas utilizando ferramentas nativas do sistema e scripts desenvolvidos durante o laboratório.

---

## 2. Escopo

A avaliação contemplou:

- Sistema operacional e kernel
- Usuários e grupos
- Privilégios administrativos
- Política de senhas
- SSH
- Serviços ativos
- Firewall
- Portas de rede
- Atualizações
- Permissões de arquivos
- Tarefas agendadas
- Logs do sistema

---

## 3. Metodologia

A avaliação foi realizada seguindo as etapas:

1. Identificação do ambiente.
2. Coleta de informações.
3. Análise das configurações.
4. Identificação de riscos.
5. Aplicação de correções.
6. Validação das alterações.
7. Documentação das evidências.

As alterações foram realizadas de forma controlada, evitando mudanças que pudessem causar indisponibilidade do sistema.

---

## 4. Principais Controles Avaliados

| Controle | Avaliação |
|---|---|
| Usuários e grupos | Avaliado |
| Contas privilegiadas | Avaliado |
| Política de senhas | Avaliado |
| SSH | Revisado e endurecido |
| Firewall | Configurado/revisado |
| Atualizações | Verificadas |
| Serviços | Revisados |
| Permissões | Auditadas |
| Cron | Auditado |
| Logs | Auditados |

---

## 5. Correções Aplicadas

### SSH

O acesso direto da conta `root` através do SSH foi desabilitado.

**Configuração:**

```text
PermitRootLogin no
```

**Objetivo:**

Reduzir a superfície de ataque associada à conta administrativa.

---

### Firewall

O firewall foi configurado para permitir apenas o tráfego administrativo necessário identificado durante o laboratório.

**Objetivo:**

Reduzir a exposição de serviços desnecessários.

---

### Atualizações

O sistema foi atualizado através do gerenciador de pacotes do Debian.

**Objetivo:**

Reduzir a exposição a vulnerabilidades conhecidas em componentes desatualizados.

---

## 6. Evidências

As evidências técnicas utilizadas durante a avaliação estão armazenadas no diretório:

```text
screenshots/
```

As informações sensíveis do ambiente foram removidas ou não foram incluídas nas evidências públicas.

---

## 7. Riscos Identificados

Durante a avaliação foram considerados os seguintes riscos:

### 🔴 Alto

Configurações administrativas inadequadas de SSH podem aumentar o risco de ataques de autenticação e comprometimento de contas privilegiadas.

### 🟠 Médio

Serviços ou portas desnecessárias podem aumentar a superfície de ataque do sistema.

### 🟡 Baixo

Configurações de monitoramento e manutenção podem ser aprimoradas através de auditorias periódicas.

---

## 8. Recomendações

Recomenda-se:

- Manter o sistema atualizado.
- Revisar periodicamente usuários e grupos.
- Utilizar autenticação baseada em chaves para SSH quando possível.
- Desabilitar serviços desnecessários.
- Manter o firewall ativo.
- Monitorar logs de autenticação.
- Revisar tarefas agendadas.
- Auditar permissões de arquivos.
- Executar verificações periódicas de segurança.

---

## 9. Resultado Final

Após as correções realizadas, o sistema apresentou uma postura de segurança aprimorada em relação ao estado inicial avaliado.

As principais melhorias foram relacionadas ao controle de acesso SSH, atualização do sistema, firewall e revisão das configurações de segurança.

---

## 10. Limitações

Esta avaliação foi realizada em um ambiente de laboratório e não representa uma auditoria completa de produção.

Não foram realizados testes de exploração, testes de penetração ou avaliação de vulnerabilidades externas.

O objetivo principal foi demonstrar procedimentos de hardening, auditoria e documentação de segurança em Linux.

---

## 11. Conclusão

O laboratório demonstrou a aplicação prática de conceitos de Linux Hardening, auditoria de sistemas, controle de acesso, gerenciamento de serviços, monitoramento e análise de segurança.

A abordagem utilizada priorizou:

**Identificar → Analisar → Corrigir → Validar → Documentar**

Esse processo pode ser aplicado como base para avaliações de segurança em ambientes Linux reais.