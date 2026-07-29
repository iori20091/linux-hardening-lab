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