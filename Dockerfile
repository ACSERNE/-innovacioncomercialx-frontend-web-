# Etapa de build
FROM node:20-alpine AS build
WORKDIR /app

# Copiar solo package.json y package-lock.json
COPY package*.json ./
RUN npm install

# Copiar solo el código fuente necesario
COPY src/ ./src/
COPY public/ ./public/

# Generar build de producción
RUN npm run build

# Etapa de producción con Nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
