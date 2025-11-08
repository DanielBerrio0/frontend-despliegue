# 🚀 Guía de Despliegue - Frontend ISO

## ✅ Conexión con Railway

El frontend ya está configurado y conectado con el backend desplegado en Railway:

**URL del Backend:** `https://backend-despliegue-despliegue.up.railway.app`

## 📂 Archivos del Proyecto

```
frontend-despliegue/
├── index.html              # Página de inicio
├── herramienta.html        # Aplicación principal
├── test-connection.html    # Página de pruebas de conectividad
├── config.js               # Configuración centralizada del backend
├── README.md               # Documentación del proyecto
└── DEPLOYMENT.md           # Este archivo
```

## 🔧 Cambios Realizados

### 1. Archivo `config.js` (NUEVO)
- Centraliza la URL del backend de Railway
- Proporciona funciones helper para construir URLs
- Facilita cambios de configuración en un solo lugar

### 2. Archivo `herramienta.html` (ACTUALIZADO)
- ✅ Incluye referencia a `config.js`
- ✅ Función `verificarLogin()` ahora usa `getApiUrl()`
- ✅ Función de registro ISO 27001 actualizada
- ✅ Función de registro ISO 9001 actualizada

### 3. Archivos Nuevos
- ✅ `index.html` - Página de bienvenida moderna
- ✅ `test-connection.html` - Herramienta de diagnóstico
- ✅ `README.md` - Documentación completa
- ✅ `DEPLOYMENT.md` - Guía de despliegue

## 🌐 Opciones de Despliegue

### Opción 1: GitHub Pages (RECOMENDADO - Gratis)

1. **Configurar el repositorio:**
   ```bash
   git add .
   git commit -m "Conectar frontend con Railway backend"
   git push origin main
   ```

2. **Activar GitHub Pages:**
   - Ve a tu repositorio en GitHub
   - Settings → Pages
   - Source: Deploy from branch
   - Branch: `main` / root
   - Save

3. **Tu sitio estará en:**
   ```
   https://danielberrio0.github.io/frontend-despliegue/
   ```

### Opción 2: Netlify (RECOMENDADO - Gratis)

1. **Crear cuenta en [Netlify](https://www.netlify.com/)**

2. **Deploy con Git:**
   - New site from Git
   - Conecta tu repositorio
   - Build settings:
     - Build command: (dejar vacío)
     - Publish directory: `/`
   - Deploy site

3. **Tu sitio estará en:**
   ```
   https://tu-app.netlify.app
   ```

### Opción 3: Vercel (Gratis)

1. **Crear cuenta en [Vercel](https://vercel.com/)**

2. **Import Project:**
   - Add New Project
   - Import Git Repository
   - Selecciona tu repo
   - Deploy

3. **Tu sitio estará en:**
   ```
   https://tu-app.vercel.app
   ```

### Opción 4: Railway (Mismo servicio del backend)

1. **Nuevo proyecto en Railway:**
   ```bash
   # Instalar Railway CLI
   npm i -g @railway/cli
   
   # Login
   railway login
   
   # Iniciar proyecto
   railway init
   
   # Deploy
   railway up
   ```

2. **Configurar como sitio estático:**
   - Railway detectará automáticamente los archivos HTML

### Opción 5: Servidor propio (VPS, Apache, Nginx)

**Para Apache:**
```bash
# Copiar archivos
cp -r /workspaces/frontend-despliegue/* /var/www/html/iso-tool/

# Configurar virtual host
<VirtualHost *:80>
    ServerName tu-dominio.com
    DocumentRoot /var/www/html/iso-tool
    <Directory /var/www/html/iso-tool>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

**Para Nginx:**
```nginx
server {
    listen 80;
    server_name tu-dominio.com;
    root /var/www/html/iso-tool;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

## 🧪 Verificar el Despliegue

### 1. Test local (antes de desplegar)
```bash
cd /workspaces/frontend-despliegue
python3 -m http.server 8000
# Abrir http://localhost:8000
```

### 2. Test de conectividad
Una vez desplegado, visita:
```
https://tu-sitio.com/test-connection.html
```

Deberías ver:
- ✅ Health Check: OK
- ✅ API Info: OK
- ✅ Login Endpoint: 401 (esperado sin credenciales válidas)

### 3. Verificar la aplicación principal
```
https://tu-sitio.com/herramienta.html
```

## 🔐 CORS y Seguridad

El backend en Railway ya tiene CORS habilitado para aceptar peticiones desde cualquier origen:

```javascript
// Backend ya configurado
app.use(cors({
  origin: '*',
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));
```

Si necesitas restringir los orígenes, actualiza el backend para incluir solo tu dominio:

```javascript
app.use(cors({
  origin: ['https://tu-sitio.com', 'https://www.tu-sitio.com']
}));
```

## 📊 Monitoreo

### Backend (Railway)
- Dashboard: https://railway.app/dashboard
- Logs: Railway Dashboard → tu proyecto → Deployments → View Logs
- Métricas: CPU, Memoria, Requests

### Frontend
- Google Analytics (opcional)
- Sentry para errores (opcional)
- Uptime Robot para disponibilidad (opcional)

## 🔄 Actualizar el Frontend

```bash
# Hacer cambios
git add .
git commit -m "Descripción de cambios"
git push origin main

# Si usas Netlify/Vercel: Deploy automático
# Si usas GitHub Pages: Espera ~1 minuto
# Si usas Railway: railway up
```

## 🐛 Troubleshooting

### Error: "No se puede conectar con el servidor"
1. Verifica que el backend está activo:
   ```bash
   curl https://backend-despliegue-despliegue.up.railway.app/health
   ```
2. Revisa la consola del navegador (F12)
3. Verifica que `config.js` se está cargando correctamente

### Error: CORS
- El backend ya tiene CORS habilitado
- Verifica que estás usando HTTPS (no HTTP mezclado)

### Error: 401 Unauthorized en login
- Es normal si las credenciales son incorrectas
- Verifica con el administrador del backend las credenciales correctas

## 📞 Soporte

- **Backend:** https://backend-despliegue-despliegue.up.railway.app
- **Repository:** https://github.com/DanielBerrio0/frontend-despliegue
- **Autor:** DanielBerrio0

## 🎉 ¡Listo!

Tu frontend está configurado y listo para desplegarse. Solo necesitas elegir una de las opciones de despliegue y seguir los pasos correspondientes.

**Recomendación:** Usa GitHub Pages o Netlify para comenzar (son gratuitos y muy fáciles de configurar).
