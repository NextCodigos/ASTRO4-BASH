#!/bin/bash

# Iniciar la base de datos JSON Server
json-server --watch db.json &

# Esperar unos segundos para asegurarse de que el servidor esté listo
sleep 2

# Iniciar la aplicación Astro
npm run dev
