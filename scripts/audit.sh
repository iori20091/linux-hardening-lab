#!/bin/bash

echo "================================"
echo " Linux Hardening Lab Audit"
echo "================================"

echo
echo "Hostname"
hostname

echo
echo "Sistema Operacional"
if [ -f /etc/os-release ]; then
    grep PRETTY_NAME /etc/os-release
else
    echo "Arquivo /etc/os-release não encontrado"
fi

echo
echo "Kernel"
uname -r

echo
echo "Arquitetura"
uname -m

echo
echo "Tempo ligado"
if command -v uptime >/dev/null 2>&1; then
    uptime
else
    echo "Comando uptime não disponível"
fi

echo
echo "================================"
echo "Usuário atual"
echo "================================"
id

echo
echo "Grupos"
groups

echo
echo "================================"
echo "Permissões do diretório"
echo "================================"
ls -la

echo
echo "================================"
echo "SSH"
echo "================================"

if command -v systemctl >/dev/null 2>&1; then
    systemctl is-active ssh
    systemctl is-enabled ssh
else
    echo "systemctl não disponível"
fi

echo
echo "Versão do OpenSSH"
if command -v ssh >/dev/null 2>&1; then
    ssh -V 2>&1
else
    echo "OpenSSH não encontrado"
fi

echo
echo "================================"
echo "Serviços ativos"
echo "================================"

if command -v systemctl >/dev/null 2>&1; then
    systemctl list-units --type=service --state=running --no-pager
else
    echo "systemctl não disponível"
fi

echo
echo "================================"
echo "Processos por CPU"
echo "================================"

if ps --help 2>&1 | grep -q -- '--sort'; then
    ps aux --sort=-%cpu | head -6
else
    echo "Opção de ordenação não disponível nesta versão do ps"
fi

echo
echo "================================"
echo "Portas abertas"
echo "================================"

if command -v ss >/dev/null 2>&1; then
    ss -tuln
else
    echo "ss não disponível"
fi

echo
echo "================================"
echo "Conexões"
echo "================================"

if command -v ss >/dev/null 2>&1; then
    ss -tun
else
    echo "ss não disponível"
fi

echo
echo "================================"
echo "Últimos logs"
echo "================================"

if command -v journalctl >/dev/null 2>&1; then
    journalctl -n 10 --no-pager
else
    echo "journalctl não disponível"
fi

echo
echo "================================"
echo "Últimos erros"
echo "================================"

if command -v journalctl >/dev/null 2>&1; then
    journalctl -p err -n 10 --no-pager
else
    echo "journalctl não disponível"
fi

echo
echo "================================"
echo "Cron"
echo "================================"

if command -v systemctl >/dev/null 2>&1; then
    systemctl is-active cron
    systemctl is-enabled cron
fi

echo
echo "Tarefas agendadas do sistema"
if [ -d /etc/cron.d ]; then
    ls -la /etc/cron.d/
else
    echo "/etc/cron.d não encontrado"
fi