#!/bin/nash

#!/bin/bash

echo "Bienvenido al script de configuración de Astro."

while true; do
    echo "Por favor, selecciona una opción:"
    echo "1. Crear proyecto Astro"
    echo "2. Ver carpetas dentro de src en terminal de Linux"
    echo "3. Crear componente Astro"
    echo "4. Agregar Tailwind a Astro"
    echo "5. Estilos a componente con Tailwind"
    echo "6. Simular base de datos"
    echo "7. Vincular con fetch a Endpoints"
    echo "8. Iniciar aplicación Astro"
    echo "9. Salir"

    read -p "Selecciona una opción: " option

    case $option in
        1)
            echo "Creando proyecto Astro..."
            npm create astro@latest
            ;;
        2)
            echo "Ver carpetas dentro de src en terminal de Linux:"
            tree src
            ;;
        3)
            echo "Creando componente Astro..."
            mkdir src/components
            touch src/components/Post.astro
            # Agregar contenido al archivo Post.astro
            cat <<EOF > src/components/Post.astro
---
const {
  post: { title, description, content, created_at },
} = Astro.props;
---

<article
  id="article"
  class="flex max-w-sm flex-col gap-2 rounded bg-[#1F2937] px-5 py-6 text-white"
>
  <img
    src="https://images.pexels.com/photos/67112/pexels-photo-67112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    class="rounded"
  />

  <h2 class="text-2xl font-bold">{title}</h2>
  <p>{description}</p>

  <p class="text-zinc-300">
    {content.slice(0, 100) + "..."}
  </p>
  <p class="text-zinc-300">{new Date(created_at).toLocaleDateString()} - 16 min read</p>
</article>
EOF
            echo "Componente Astro creado con éxito."
            ;;
        4)
            echo "Agregando Tailwind a Astro..."
            npx astro add tailwind
            ;;
        5)
            echo "Aplicando estilos a componente con Tailwind..."
            # Aquí puedes agregar el contenido del archivo Post.astro con estilos de Tailwind si deseas
            ;;
        6)
            echo "Simulando base de datos..."
            # Iniciar base de datos db.json
            json-server --watch db.json
            ;;
        7)
            echo "Vinculando con fetch a Endpoints..."
            # Aquí puedes agregar el contenido del archivo index.astro con la lógica para obtener datos de los Endpoints
            ;;
        8)
            echo "Iniciando aplicación Astro..."
            npm run dev
            ;;
        9)
            echo "Saliendo del script. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción válida."
            ;;
    esac
done
