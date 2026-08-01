# Atualizações do Sistema

## Objetivo

Verificar o estado das atualizações do sistema e garantir que os pacotes estejam íntegros e atualizados.

---

## Comandos utilizados

```bash
cat /etc/debian_version
cat /etc/os-release
sudo apt update
apt list --upgradable
grep " install " /var/log/dpkg.log | tail -20
grep " upgrade " /var/log/dpkg.log | tail -20
sudo apt check
sudo dpkg --audit
```

---

## O que aprendi

A atualização periódica do sistema reduz a exposição a vulnerabilidades conhecidas. Além disso, a verificação da integridade dos pacotes permite identificar possíveis inconsistências antes que causem problemas no ambiente.

---

## Boas práticas

- Atualizar o sistema regularmente.
- Utilizar apenas repositórios oficiais.
- Corrigir pacotes quebrados imediatamente.
- Remover dependências não utilizadas.
- Verificar atualizações críticas de segurança.


## Análise de Segurança

Manter o sistema operacional atualizado é uma das medidas mais importantes para reduzir riscos de segurança. Vulnerabilidades conhecidas são frequentemente exploradas por invasores logo após sua divulgação. A aplicação regular de atualizações de segurança reduz a superfície de ataque e aumenta a confiabilidade do ambiente.