# Serviços e Processos

## Objetivo

Identificar serviços ativos e processos em execução no sistema Linux.

---

## Comandos utilizados

```bash
systemctl list-units --type=service --state=running

systemctl list-unit-files --type=service --state=enabled

systemctl status ssh

systemctl status cron

ps aux

ps -ef

top

ps aux --sort=-%cpu | head

ps aux --sort=-%mem | head
```

---

## O que aprendi

Os serviços são responsáveis por manter funcionalidades do sistema em execução. O monitoramento periódico dos serviços e processos permite identificar comportamentos anormais, softwares não autorizados e possíveis indicadores de comprometimento.

---

## Boas práticas

- Desabilitar serviços que não são utilizados.
- Monitorar processos com alto consumo de CPU ou memória.
- Manter apenas os serviços necessários em execução.
- Revisar periodicamente os serviços iniciados automaticamente.
- Investigar processos desconhecidos antes de encerrá-los.

## Análise de Segurança

Durante uma auditoria de segurança, é fundamental identificar serviços desnecessários e processos com comportamento incomum. Serviços habilitados sem necessidade aumentam a superfície de ataque, enquanto processos desconhecidos podem indicar falhas de configuração ou até mesmo comprometimento do sistema. A revisão periódica dessas informações é uma prática essencial para manter um ambiente Linux seguro.