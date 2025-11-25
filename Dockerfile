# Stage 1 — build
FROM node:20 AS builder
WORKDIR /app

# Копируем package.json и package-lock.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем весь проект и собираем Astro с SSR
COPY . .
RUN npm run build

# Stage 2 — production server
FROM node:20 AS production
WORKDIR /app

# Копируем зависимости и сборку из билд-стадии
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/dist ./dist

# Экспонируем порт, указанный в Astro (по умолчанию 4321)
EXPOSE 3000

# Запуск SSR сервера
CMD ["node", "./dist/server/entry.mjs"]
