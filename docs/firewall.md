# Firewall e Portas de Rede

## Objetivo

Identificar quais serviços estão expostos na rede e verificar o firewall utilizado pelo sistema.

---

## Comandos utilizados

```bash
which ufw
sudo ufw status

which nft
sudo nft list ruleset

systemctl status nftables

ss -tuln

sudo ss -tulpn

ss -tun
```

---

## O que aprendi

O firewall é uma das principais camadas de proteção de um sistema Linux. Além de controlar o tráfego de entrada e saída, ele reduz a superfície de ataque ao permitir apenas os serviços realmente necessários.

Também aprendi a identificar portas abertas, conexões ativas e o firewall utilizado pelo sistema.

---

## Boas práticas

- Manter apenas portas necessárias abertas.
- Bloquear serviços não utilizados.
- Monitorar conexões periodicamente.
- Revisar regras do firewall.
- Utilizar o princípio do menor privilégio para acesso à rede.

## Análise de Segurança

A exposição desnecessária de portas aumenta a superfície de ataque de um sistema. Durante uma auditoria é importante identificar quais serviços estão escutando conexões de rede e verificar se realmente são necessários. A aplicação de regras de firewall e o monitoramento periódico das portas abertas reduzem significativamente os riscos de acesso não autorizado.