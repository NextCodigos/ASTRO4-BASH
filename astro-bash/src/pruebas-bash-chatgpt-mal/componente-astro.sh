#!/bin/bash

# Contenido para index.astro
INDEX_CONTENT='---
import Post from "../components/Post.astro";
import NuevoComponente from "../components/NuevoComponente.astro";
const response = await fetch("http://localhost:3000/posts");
// Extraemos json de esos post
const posts = await response.json();
---

<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <meta name="viewport" content="width=device-width" />
    <!-- Configuraciones de la página web -->
    <meta name="generator" content={Astro.generator} />
    <title>Astro</title>
  </head>
  <body>
    <h1>Astro</h1>
    <!-- Título principal de la página -->
    <h1 class="text-center text-3xl font-bold mb-6 mt-3">
      <!-- Estilo para centrar el texto -->
      <!-- Estilo para establecer el tamaño del texto -->
      <!-- Estilo para aplicar un peso de fuente en negrita -->
      <!-- Estilo para agregar un margen inferior -->
      <!-- Estilo para agregar un margen superior -->
      Mis posts
    </h1>
    <!-- Título secundario de la página -->
    <div
      class="grid max-w-7xl mx-auto w-full justify-center justify-items-center items-center gap-4 px-2 sm:grid-cols-2 lg:grid-cols-3"
    >
      <!-- Contenedor de posts utilizando grid layout -->
      <!-- Iteramos sobre el array de posts y renderizamos el componente Post -->
      <!-- Le pasamos un prop llamado "post" con el valor de cada post -->
      {posts.map((post) => <Post post={post} />)}
      <NuevoComponente /> <!-- Nuevo componente agregado -->
    </div>
  </body>
</html>
'

# Contenido para Post.astro
POST_CONTENT='---
const {
  post: { title, description },
} = Astro.props;
---

<article
  id="article"
  class="flex max-w-sm flex-col gap-2 rounded bg-[#1F2937] px-5 py-6 text-white"
>
  <!-- Contenedor del artículo con estilos flexibles, ancho máximo, y separación entre elementos -->
  <img
    src="https://images.pexels.com/photos/67112/pexels-photo-67112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    class="rounded"
  />
  <!-- Imagen del artículo con esquinas redondeadas -->

  <h2 class="text-2xl font-bold">{title}</h2>
  <!-- Título del artículo con tamaño de texto grande y negrita -->

  <p>{description}</p>
  <!-- Descripción del artículo -->

  <p class="text-zinc-300">
    <!-- Párrafo de texto con color personalizado -->
    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque eius
    distinctio aspernatur incidunt, tempore expedita architecto est, sint natus,
    nihil quaerat nisi. Saepe pariatur nihil fugit itaque esse doloribus
    corporis!
  </p>

  <p class="text-zinc-300">10/12/2023 - 16 min read</p>
  <!-- Párrafo de texto con color personalizado -->
</article>
'

# Contenido para componente-astro.sh
SCRIPT_CONTENT='#!/bin/bash

# Código para el script componente-astro.sh
# Puedes agregar cualquier lógica adicional aquí

echo "¡Hola! Este es el script de componente-astro.sh."
'

# Crear los archivos con el contenido proporcionado
echo "$INDEX_CONTENT" > index.astro
echo "$POST_CONTENT" > Post.astro
echo "$SCRIPT_CONTENT" > componente-astro.sh

# Cambiar los permisos del script para que sea ejecutable
chmod +x componente-astro.sh

echo "Archivos generados exitosamente: index.astro, Post.astro, componente-astro.sh"

# Este script Bash generará tres archivos: index.astro, Post.astro, y componente-astro.sh, con el contenido proporcionado en cada variable. Además, le dará permisos de ejecución al archivo componente-astro.sh.