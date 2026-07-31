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


## Análise de Segurança

### Por que permitir login do root representa um risco?

Permitir o login direto do usuário root aumenta significativamente o risco de ataques de força bruta, pois o invasor já conhece o nome do usuário administrativo. Além disso, qualquer ação realizada pelo root possui privilégios totais, dificultando a rastreabilidade e aumentando o impacto de um eventual comprometimento.

### Quais são as vantagens da autenticação por chave SSH?

A autenticação por chave SSH oferece um nível de segurança superior ao uso de senhas, pois utiliza criptografia assimétrica. Esse método é resistente a ataques de força bruta, elimina a necessidade de transmitir senhas pela rede e permite um controle mais seguro do acesso remoto.

### Em quais situações faz sentido alterar a porta padrão do SSH?

Alterar a porta padrão (22) pode reduzir a quantidade de tentativas automatizadas de conexão realizadas por robôs que procuram servidores SSH expostos na Internet. No entanto, essa medida não substitui outras práticas de segurança, como autenticação por chaves, firewall e atualização constante do sistema.

## O que aprendi

O SSH é o principal método de administração remota em servidores Linux. Configurações inadequadas podem facilitar ataques de força bruta e acesso não autorizado.