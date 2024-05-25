import { defineConfig } from 'vite';
import RubyPlugin from 'vite-plugin-ruby';
import { svelte } from '@sveltejs/vite-plugin-svelte';
import path from 'path';

export default defineConfig({
  resolve: {
    dedupe: ['axios'],
    alias: {
      '@': path.resolve(__dirname, './app/views'),
    },
  },
  plugins: [
    RubyPlugin(),
    svelte()
  ]
})
