<!-- LanguageServiceForm.svelte -->
<script lang="ts">
  import { IconBrowserPlus } from '@tabler/icons-svelte';

  export let values;
  export let handleSubmit;

  function onSubmit(event) {
    event.preventDefault();
    handleSubmit();
  }
</script>

<form on:submit={onSubmit}>
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
  <h3>Homepages</h3>
  <p>Homepages are the pages that house Pangea feeds.</p>
  <button type="button" class="secondary"
    ><IconBrowserPlus stroke={1.5} /> Add Homepage</button
  >
  <hr />
  <button type="submit">Submit</button>
</form>

<style lang="scss">
  .grid {
    display: grid;
    gap: 1rem;
  }
</style>
