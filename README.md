# Dashboard Federado — Innovación Comercial X

Visualización dinámica de datos comerciales por país y estado, con badges SVG, despliegue multiplataforma y arquitectura federada.

## 🚀 Estructura del Proyecto

```
frontend-web/
├── index.html
├── Dockerfile
├── frontend-mobile/       # App Expo
├── public/                # Assets estáticos
├── src/                   # Componentes React
├── netlify.toml           # Configuración de despliegue
└── package.json
```

## 🧩 Funcionalidades

- Badges SVG por país y estado
- API federada desde `backend/`
- Visualización en tiempo real
- Despliegue automático vía Netlify

## ⚙️ Despliegue en Netlify

1. Conecta el repositorio en [Netlify](https://app.netlify.com)
2. Usa `netlify.toml` para configurar el build
3. Publica desde la carpeta `dist/` o `public/`

## 📦 Instalación local

```bash
npm install
npm run start
```

## 🛡️ Licencia

Apache 2.0 — libre uso con atribución.
