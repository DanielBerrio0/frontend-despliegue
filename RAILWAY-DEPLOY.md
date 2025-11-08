# 🚂 Despliegue en Railway - Frontend

## Pasos para desplegar:

### 1. Crear cuenta en Railway
- Ve a [railway.app](https://railway.app)
- Crea una cuenta o inicia sesión

### 2. Crear nuevo proyecto

#### Opción A: Desde el Dashboard (Recomendado)
1. Click en "New Project"
2. Selecciona "Deploy from GitHub repo"
3. Conecta tu cuenta de GitHub
4. Selecciona el repositorio: `DanielBerrio0/frontend-despliegue`
5. Click en "Deploy Now"

#### Opción B: Usando Railway CLI
```bash
# Instalar Railway CLI
npm i -g @railway/cli

# Login
railway login

# Inicializar proyecto
railway init

# Vincular con el repositorio
railway link

# Deploy
railway up
```

### 3. Configuración automática
Railway detectará automáticamente:
- ✅ `package.json` - Dependencias y scripts de Node.js
- ✅ `server.js` - Servidor HTTP simple
- ✅ Comando de inicio: `node server.js`

### 4. Obtener URL pública
Después del deploy, Railway te dará una URL como:
```
https://frontend-despliegue-production.up.railway.app
```

### 5. Configurar dominio personalizado (Opcional)
1. En Railway Dashboard → Tu proyecto
2. Settings → Domains
3. Generate Domain o conecta tu dominio propio

## 📋 Archivos de configuración creados

- `railway.toml` - Configuración principal de Railway
- `.python-version` - Especifica Python 3.11
- `.railway-env` - Documentación de variables de entorno

## 🔧 Configuración del proyecto

### railway.toml
```toml
[build]

[deploy]
startCommand = "node server.js"
healthcheckPath = "/herramienta.html"
healthcheckTimeout = 100
```

### Puerto
Railway asigna automáticamente el puerto a través de la variable `$PORT`.
El servidor Node.js detecta y usa esta variable automáticamente.

## 🧪 Testing

Una vez desplegado, verifica:
1. **Frontend:** `https://tu-app.railway.app/herramienta.html`
2. **Test de conexión:** `https://tu-app.railway.app/test-connection.html`
3. **Backend conectado:** El `config.js` ya apunta a Railway backend

## 🔄 Actualizaciones automáticas

Railway está configurado para:
- ✅ Deploy automático en cada push a `main`
- ✅ Rollback fácil a versiones anteriores
- ✅ Logs en tiempo real
- ✅ Métricas de uso

## 💡 Ventajas de Railway

- 🆓 Plan gratuito generoso
- 🚀 Deploy automático desde Git
- 📊 Métricas y logs incluidos
- 🔒 HTTPS automático
- 🌐 CDN global incluido
- 💻 CLI potente
- 🔄 Rollbacks fáciles

## 📊 Monitoreo

### Ver logs en tiempo real:
```bash
railway logs
```

### Ver métricas:
- Dashboard → Tu proyecto → Metrics

### Información del servicio:
```bash
railway status
```

## 🎯 URLs Finales

Después del deploy tendrás:

- **Frontend (Railway):** https://tu-frontend.railway.app
- **Backend (Railway):** https://backend-despliegue-despliegue.up.railway.app

Ambos servicios estarán conectados y funcionando. ✅

## 🆘 Troubleshooting

### Error: "Application failed to respond"
- Verifica que el puerto sea 8080
- Revisa los logs: `railway logs`

### Error: "Build failed"
- Verifica que `.python-version` existe
- Asegúrate de que el repo esté actualizado

### No se conecta con el backend
- El `config.js` ya tiene la URL correcta del backend
- Verifica CORS en el backend

## 📞 Soporte

- Documentación: https://docs.railway.app
- Discord: https://discord.gg/railway
- GitHub: https://github.com/railwayapp
