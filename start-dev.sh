#!/bin/bash

# Script para iniciar el servidor local de desarrollo

echo "🚀 Iniciando servidor local de desarrollo..."
echo ""
echo "Frontend: http://localhost:8000"
echo "Backend: https://backend-despliegue-despliegue.up.railway.app"
echo ""
echo "Páginas disponibles:"
echo "  - http://localhost:8000/index.html (Inicio)"
echo "  - http://localhost:8000/herramienta.html (Aplicación)"
echo "  - http://localhost:8000/test-connection.html (Test)"
echo ""
echo "Presiona Ctrl+C para detener el servidor"
echo ""

# Iniciar servidor Python
python3 -m http.server 8000
