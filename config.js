// Configuración del backend
const API_CONFIG = {
  // URL del backend desplegado en Railway
  BASE_URL: 'https://backend-despliegue-despliegue.up.railway.app',
  
  // Endpoints disponibles
  ENDPOINTS: {
    LOGIN: '/api/login',
    REGISTRO_9001: '/api/9001/registro',
    REGISTRO_27001: '/api/27001/registro27001',
    HEALTH: '/health'
  }
};

// Función helper para construir URLs completas
function getApiUrl(endpoint) {
  return `${API_CONFIG.BASE_URL}${endpoint}`;
}
