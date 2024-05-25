import { defineConfig } from 'vite';
import RubyPlugin from 'vite-plugin-ruby';
import { svelte } from '@sveltejs/vite-plugin-svelte';
import path from 'path';
import FullReload from 'vite-plugin-full-reload';
import preprocess from 'svelte-preprocess';

export default defineConfig({
  resolve: {
    dedupe: ['axios'],
    alias: {
      '@': path.resolve(__dirname, './app/views'),
      '@helpers': path.resolve(__dirname, './app/javascript/api'),
    },
  },
  build: {
    assetsInlineLimit: 0,
  },
  plugins: [
    RubyPlugin(),
    FullReload(['config/routes.rb']),
    svelte({
      prebundleSvelteLibraries: true,
      preprocess: preprocess(),
    }),
  ],
});
