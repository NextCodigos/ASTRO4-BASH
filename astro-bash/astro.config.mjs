import { defineConfig } from 'astro/config';

import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  output:'hybrid',
  // output:'server', // para subir informacion a diario menos rapido
  // output:'static',//mas rapido pero no actualiza informacion base de datos
  integrations: [tailwind()]
});