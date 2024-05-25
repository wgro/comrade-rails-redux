<!-- Edit.svelte -->
<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  import { router } from '@inertiajs/svelte';
  import LanguageServiceForm from './LanguageServiceForm.svelte';
  export const layout = Layout;
</script>

<script lang="ts">
  export let language_service;

  let values = {
    name: language_service.name,
    description: language_service.description,
  };

  function handleSubmit() {
    router.put(`/language_services/${language_service.id}`, values);
  }
</script>

<section>
  <h1>Edit language service</h1>
  <LanguageServiceForm {values} {handleSubmit} />
</section>
