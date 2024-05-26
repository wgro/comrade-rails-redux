<!-- Edit.svelte -->
<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  import { router, useForm } from '@inertiajs/svelte';
  import LanguageServiceForm from './LanguageServiceForm.svelte';
  export const layout = Layout;
</script>

<script lang="ts">
  export let language_service;

  let form = useForm({
    name: language_service.name,
    description: language_service.description,
    homepages: language_service.homepages || [],
  });

  function handleSubmit() {
    console.log($form);
    $form.put(`/language_services/${language_service.id}`);
  }
</script>

<section>
  <h1>Edit language service</h1>
  <LanguageServiceForm values={$form} {handleSubmit} />
</section>
