#!/bin/bash
set -e

echo "🚀 Creando clúster kind..."
kind create cluster --name project2 || echo "Ya existe"

echo "🐳 Construyendo imágenes Docker..."
docker build -t whitelegends13/backend:latest ./backend
docker build -t whitelegends13/frontend:latest ./frontend
docker build -t whitelegends13/db:latest ./db

echo "📦 Cargando imágenes al clúster kind..."
kind load docker-image whitelegends13/backend:latest --name project2
kind load docker-image whitelegends13/frontend:latest --name project2
kind load docker-image whitelegends13/db:latest --name project2

echo "📡 Aplicando manifiestos Kubernetes..."
kubectl apply -f k8s/

echo "✅ Despliegue completo. Verifica con: kubectl get all"
