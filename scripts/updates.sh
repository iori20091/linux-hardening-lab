#!/bin/bash

echo "==============================="
echo " Atualizações do Sistema"
echo "==============================="

echo
echo "Versão do Debian"
cat /etc/debian_version

echo
echo "Sistema"
grep PRETTY_NAME /etc/os-release

echo
echo "Pacotes atualizáveis"
apt list --upgradable 2>/dev/null

echo
echo "Verificando integridade dos pacotes"
sudo apt check