# Frontend - Herramienta de Despliegue ISO

Frontend para la gestión de certificaciones ISO 9001 y ISO 27001.

## 🚀 Backend en Railway

El frontend está conectado con el backend desplegado en Railway:
- **URL**: `https://backend-despliegue-despliegue.up.railway.app`

## 📁 Estructura del proyecto

```
frontend-despliegue/
├── herramienta.html    # Interfaz principal de la aplicación
├── config.js           # Configuración de la URL del backend
└── README.md           # Este archivo
```

## 🔧 Configuración

La URL del backend se centraliza en `config.js`. Si necesitas cambiar la URL del backend, edita ese archivo:

```javascript
const API_CONFIG = {
  BASE_URL: 'https://backend-despliegue-despliegue.up.railway.app',
  // ...
};
```

## 📡 Endpoints disponibles

- `POST /api/login` - Autenticación de usuarios
- `POST /api/9001/registro` - Registro ISO 9001
- `POST /api/27001/registro27001` - Registro ISO 27001

## 🌐 Uso

1. Abre `herramienta.html` en tu navegador
2. Inicia sesión con tus credenciales
3. Selecciona la norma ISO que deseas gestionar (9001 o 27001)
4. Navega por los diferentes módulos:
   - **Implementador**: Checklist, incidencias, documentos
   - **Capacitador**: Material de capacitación y evidencias
   - **Auditor**: Checklist de auditoría y registro

## 🔐 Autenticación

El sistema requiere autenticación para acceder a las funcionalidades. Las credenciales son gestionadas por el backend.

## 📊 Módulos

### ISO 9001
- Registro de empresas
- Checklist de auditoría (cap. 4-10)
- Gestión documental
- Dashboard de seguimiento

### ISO 27001
- Registro de SGSI
- Checklist completo (Anexo A: 93 controles)
- Gestión de evidencias
- Dashboard de cumplimiento

## 🛠️ Desarrollo local

Para probar localmente:

1. Abre `herramienta.html` directamente en tu navegador
2. O utiliza un servidor local:
   ```bash
   python -m http.server 8000
   # Luego abre http://localhost:8000/herramienta.html
   ```

## 📝 Notas

- Todos los datos se guardan en MySQL a través del backend
- El frontend utiliza localStorage para datos temporales (checklists, filtros)
- Compatible con navegadores modernos (Chrome, Firefox, Safari, Edge)

## 👤 Autor

Diseñado por RPM (DanielBerrio0)