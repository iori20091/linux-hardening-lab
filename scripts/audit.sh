#!/bin/bash

echo "==============================="
echo " Linux Hardening Lab Audit"
echo "==============================="

echo
echo "Hostname"
hostname

echo
echo "Sistema Operacional"
cat /etc/os-release

echo
echo "Kernel"
uname -r

echo
echo "Arquitetura"
uname -m

echo
echo "Tempo ligado"
uptime


echo
echo "==============================="
echo "Usuários conectados"
echo "==============================="
who

echo
echo "==============================="
echo "Informações do usuário"
echo "==============================="
id

echo
echo "==============================="
echo "Grupos"
echo "==============================="
groups

echo
echo "==============================="
echo "Permissões do diretório atual"
echo "==============================="
ls -la

echo
echo "==============================="
echo "SSH"
echo "==============================="

systemctl is-active ssh
systemctl is-enabled ssh

echo
echo "Versão do OpenSSH"
ssh -V 2>&1

echo
echo "==============================="
echo "Serviços ativos"
echo "==============================="
systemctl list-units --type=service --state=running --no-pager

echo
echo "==============================="
echo "Top 5 processos por CPU"
echo "==============================="
ps aux --sort=-%cpu | head -6

echo
echo "==============================="
echo "Top 5 processos por Memória"
echo "==============================="
ps aux --sort=-%mem | head -6

echo
echo "==============================="
echo "Portas abertas"
echo "==============================="
ss -tuln

echo
echo "==============================="
echo "Conexões estabelecidas"
echo "==============================="
ss -tun

echo
echo "==============================="
echo "Últimos logs"
echo "==============================="
journalctl -n 10 --no-pager

echo
echo "==============================="
echo "Últimos erros"
echo "==============================="
journalctl -p err -n 10 --no-pager