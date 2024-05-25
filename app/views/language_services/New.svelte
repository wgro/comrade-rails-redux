<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  import { Button } from "bits-ui";
  export const layout = Layout;
</script>

<script lang="ts">
  import { router } from '@inertiajs/svelte';

  let values = {
    name: null,
    description: null
  }

  function handleSubmit() {
    router.post('/language_services', values)
  }
</script>

<section>
  <h1>Create a new language service</h1>
  <form on:submit|preventDefault={handleSubmit}>
    <fieldset>

  <div class="grid">
    <div>
      <label>
        Name
        <input
          name="name"
          placeholder="e.g. Klingon service"
          bind:value={values.name}
        />
      </label>
    </div>
    <div>
      <label>
        Description
        <input
          type="text"
          name="description"
          placeholder="e.g. The Klingon-language service"
          bind:value={values.description}
        />
      </label>
    </div>
  </div>
    </fieldset>
    <button type="submit">Submit</button>
  </form>
</section>