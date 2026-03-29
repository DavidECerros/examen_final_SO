# ============================================================
# Dockerfile CORREGIDO - Examen 2, Actividad 1 Parte A
# ERROR 1: node:latest -> node:18 (version fija, best practice)
# ERROR 2: Faltaba RUN antes de npm install
# ERROR 3: npm install sin RUN es instruccion invalida
# ERROR 4: EXPOSE 80 -> EXPOSE 3000 (puerto estandar de Node.js)
# ============================================================

FROM node:18

WORKDIR /app

COPY . .

RUN npm install --production

EXPOSE 3000

CMD ["node", "index.js"]
