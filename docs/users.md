# Usuários e Grupos

## Objetivo

Conhecer como o Linux gerencia usuários e grupos, identificando informações importantes para administração e auditoria.

---

## Comandos utilizados

```bash
cat /etc/passwd
cat /etc/group
id
groups
who
w
```

---

## Arquivos importantes

- `/etc/passwd`
- `/etc/shadow`
- `/etc/group`

---

## Segurança

O conteúdo do arquivo `/etc/shadow` não foi publicado por conter hashes de senhas.

---

## O que aprendi

O Linux separa informações públicas dos usuários (`/etc/passwd`) dos hashes de senha (`/etc/shadow`), protegendo o acesso às credenciais.

Também compreendi como identificar grupos, usuários conectados e IDs utilizados pelo sistema.