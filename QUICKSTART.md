# 🚀 Inicio Rápido

## ✅ El frontend YA está conectado con Railway

**Backend:** `https://backend-despliegue-despliegue.up.railway.app`

## 🏃 Prueba Local (Ahora Mismo)

```bash
./start-dev.sh
```

Luego abre en tu navegador:
- **http://localhost:8000** - Página de inicio
- **http://localhost:8000/test-connection.html** - Test de conectividad
- **http://localhost:8000/herramienta.html** - Aplicación completa

## 🌐 Desplegar en Internet

### Opción 1: GitHub Pages (más fácil)

```bash
# 1. Commit y push
git add .
git commit -m "Frontend conectado con Railway"
git push origin main

# 2. En GitHub:
# Settings → Pages → Source: main branch → Save

# 3. Tu app estará en:
# https://danielberrio0.github.io/frontend-despliegue/
```

### Opción 2: Netlify (recomendado)

1. Ve a https://app.netlify.com/
2. "Add new site" → "Import an existing project"
3. Conecta tu repositorio de GitHub
4. Deploy! ✨

### Opción 3: Vercel

1. Ve a https://vercel.com/
2. "Add New Project"
3. Import tu repositorio
4. Deploy! ✨

## 📋 Archivos Creados

- ✅ `config.js` - Configuración del backend
- ✅ `index.html` - Página de inicio
- ✅ `test-connection.html` - Tests
- ✅ `README.md` - Documentación
- ✅ `DEPLOYMENT.md` - Guía completa de despliegue
- ✅ `CHANGES.md` - Resumen de cambios
- ✅ `start-dev.sh` - Script de desarrollo

## 🔍 Verificar Conexión

```bash
# Test del backend
curl https://backend-despliegue-despliegue.up.railway.app/health

# Debería responder:
# {"status":"OK","message":"API is running",...}
```

## 💡 Cambios en herramienta.html

Todas las URLs de `localhost:3000` fueron reemplazadas por:
```javascript
getApiUrl(API_CONFIG.ENDPOINTS.LOGIN)
getApiUrl(API_CONFIG.ENDPOINTS.REGISTRO_9001)
getApiUrl(API_CONFIG.ENDPOINTS.REGISTRO_27001)
```

## 📚 Más Info

- **Documentación completa:** `README.md`
- **Guía de despliegue:** `DEPLOYMENT.md`
- **Resumen de cambios:** `CHANGES.md`

## 🆘 Ayuda

Si algo no funciona:
1. Revisa `test-connection.html` para diagnosticar
2. Verifica que el backend esté activo (link arriba)
3. Revisa la consola del navegador (F12)

---

**¡Todo listo! 🎉**

Solo elige una opción de despliegue y tu app estará online en minutos.
