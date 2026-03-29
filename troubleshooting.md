# Actividad 4: Troubleshooting de Workflows

## Snippet 1 - Error de sintaxis en triggers
**Error:** Falta `:` despues de `push` y `pull_request`, y falta `:` en `branches` del pull_request.
```yaml
# INCORRECTO
on:
  push
  branches: [main]
  pull_request
  branches [main, develop]
```
```yaml
# CORREGIDO
on:
  push:
    branches: [main]
  pull_request:
    branches: [main, develop]
```

---

## Snippet 2 - Referencia incorrecta a secrets
**Error:** Falta `${{ }}` para referenciar el secret correctamente.
```yaml
# INCORRECTO
env:
  VERCEL_TOKEN: secrets.VERCEL_TOKEN
```
```yaml
# CORREGIDO
env:
  VERCEL_TOKEN: ${{ secrets.VERCEL_TOKEN }}
```

---

## Snippet 3 - Matrix invalida
**Error:** `node-version` debe ser una lista (array), no un valor unico.
```yaml
# INCORRECTO
matrix:
  node-version: 18
```
```yaml
# CORREGIDO
matrix:
  node-version: [18.x, 20.x]
```
