# Cron e Tarefas Agendadas

## Objetivo

Auditar tarefas agendadas no sistema Linux e identificar possíveis riscos relacionados à execução automática de comandos.

## Comandos utilizados

```bash
systemctl status cron --no-pager
systemctl is-enabled cron
systemctl is-active cron
crontab -l
ls -la /etc/cron.d/
ls -la /etc/cron.daily/
ls -la /etc/cron.weekly/
cat /etc/crontab
sudo find /etc/cron* -type f -maxdepth 2 -ls
```

## Estrutura do Cron

O formato tradicional das tarefas é:

```text
MINUTO HORA DIA MÊS DIA_DA_SEMANA USUÁRIO COMANDO
```

## Análise de Segurança

Tarefas agendadas devem ser auditadas periodicamente. Scripts executados com privilégios elevados precisam possuir permissões adequadas e estar armazenados em locais protegidos contra alterações por usuários não privilegiados.

Tarefas executadas como root merecem atenção especial, principalmente quando executam scripts localizados em diretórios que podem ser modificados por outros usuários.

## Boas práticas

- Revisar tarefas agendadas periodicamente.
- Evitar executar scripts privilegiados a partir de diretórios inseguros.
- Verificar proprietário e permissões dos scripts.
- Remover tarefas desnecessárias.
- Evitar armazenar senhas ou tokens diretamente em scripts.
- Utilizar o menor privilégio possível.

## Resultado

A auditoria foi realizada sem publicar informações potencialmente sensíveis do sistema.