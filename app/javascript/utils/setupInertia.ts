import axios from 'axios';
import { createInertiaApp } from '@inertiajs/svelte';
import { metaContent } from './metaContent';

// @ts-ignore
const pages = import.meta.glob('../../views/**/*.svelte', { eager: true });

axios.defaults.headers.common['X-CSRF-Token'] = metaContent('csrf-token');

createInertiaApp({
    resolve: (name: string) => pages[`../../views/${name}.svelte`],

    setup({ el, App, props }) {
        const _app = new App({ target: el, props });
    },
});

