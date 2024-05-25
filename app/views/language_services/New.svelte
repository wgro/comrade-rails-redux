<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  import { router } from '@inertiajs/svelte';
  import LanguageServiceForm from './LanguageServiceForm.svelte';
  export const layout = Layout;
</script>

<script lang="ts">
  let values = {
    name: null,
    description: null,
    homepages: [],
  };

  function handleSubmit() {
    router.post('/language_services', values);
  }
</script>

<section>
  <h1>Create a new language service</h1>
  <LanguageServiceForm {values} {handleSubmit} />
</section>
