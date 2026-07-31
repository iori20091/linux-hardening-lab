# SSH Hardening

## Objetivo

Compreender o funcionamento do OpenSSH e aplicar boas práticas de segurança.

---

## Comandos utilizados

```bash
ssh -V
systemctl status ssh
systemctl is-enabled ssh
systemctl is-active ssh
sudo sshd -t
```

---

## Arquivo de configuração

```text
/etc/ssh/sshd_config
```

---

## Configurações analisadas

- PermitRootLogin
- PasswordAuthentication
- PubkeyAuthentication
- Port

---

## Boas práticas

- Desabilitar login direto do root.
- Utilizar autenticação por chaves SSH.
- Manter o OpenSSH atualizado.
- Validar a configuração antes de reiniciar o serviço.
- Restringir acesso por firewall.

---

## O que aprendi

O SSH é o principal método de administração remota em servidores Linux. Configurações inadequadas podem facilitar ataques de força bruta e acesso não autorizado.