import { defineConfig } from 'astro/config';
import node from '@astrojs/node';

export default defineConfig({
  output: 'server', // для SSR
  adapter: node({
    mode: 'standalone', // или 'middleware', зависит от твоего деплоя
  }),
    trailingSlash: 'never',
});
