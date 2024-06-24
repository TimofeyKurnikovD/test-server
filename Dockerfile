# Используем базовый образ Node.js
FROM node:14

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем исходный код
COPY . .

# Устанавливаем nodemon локально
RUN npm install nodemon

# Открываем порт 3000
EXPOSE 3000

# Запускаем сервер с использованием nodemon
CMD ["npx", "nodemon", "index.js"]
