# Logs e Auditoria

## Objetivo

Aprender a localizar e analisar registros do sistema Linux para fins de auditoria, diagnóstico e investigação de incidentes.

---

## Comandos utilizados

```bash
journalctl -n 20
journalctl -p err -n 20
journalctl --since today
journalctl -b
journalctl -u ssh
ls -lh /var/log
du -sh /var/log
dmesg | tail -20
```

---

## Principais fontes de logs

- journalctl
- /var/log
- auth.log
- syslog
- kernel (dmesg)

---

## O que aprendi

Os logs registram eventos importantes do sistema, permitindo identificar erros, tentativas de autenticação, falhas de serviços e outras informações essenciais para auditoria e resposta a incidentes.

---

## Boas práticas

- Revisar logs periodicamente.
- Armazenar logs de forma segura.
- Monitorar falhas de autenticação.
- Investigar mensagens de erro.
- Configurar rotação de logs.

## Análise de Segurança

A análise de logs é uma das atividades mais importantes durante uma investigação de segurança. Os registros permitem identificar falhas, tentativas de acesso não autorizado, erros de serviços e alterações no sistema. A revisão periódica desses eventos contribui para a detecção precoce de incidentes e para a manutenção da integridade do ambiente.