<!-- Edit.svelte -->
<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  import { useForm } from '@inertiajs/svelte';
  import LanguageServiceForm from './LanguageServiceForm.svelte';
  export const layout = Layout;
</script>

<script lang="ts">
  export let language_service;

  let form = useForm({
    name: language_service.name,
    description: language_service.description,
    homepages_attributes: language_service.homepages || [], // Ensure homepages is an array
  });

  function handleSubmit() {
    console.log($form); // Log the form state before submission
    $form
      .transform((data) => ({
        language_service: {
          name: data.name,
          description: data.description,
          homepages_attributes: data.homepages_attributes,
        },
      }))
      .put(`/language_services/${language_service.id}`, {
        preserveState: true,
        onSuccess: () => {
          console.log('Form submitted successfully');
        },
        onError: (errors) => {
          console.log('Form submission failed', errors);
        },
      });
  }
</script>

<section>
  <h1>Edit language service</h1>
  <LanguageServiceForm values={$form} {handleSubmit} />
</section>
