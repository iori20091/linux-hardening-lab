# Permissões no Linux

## Objetivo

Compreender como o Linux controla o acesso a arquivos e diretórios por meio de permissões.

---

## Comandos utilizados

```bash
ls -l
ls -la
chmod 600 teste.txt
chmod 644 teste.txt
chmod 755 teste.txt
```

---

## Permissões

| Número | Permissão |
|----------|----------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |

---

## O que aprendi

As permissões do Linux permitem controlar quais usuários podem ler, modificar ou executar arquivos. A configuração correta reduz riscos de acesso não autorizado e faz parte das práticas de Hardening.