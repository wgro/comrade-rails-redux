<!-- LanguageServiceForm.svelte -->
<script lang="ts">
  import { IconBrowserPlus } from '@tabler/icons-svelte';

  export let values;
  export let handleSubmit;

  console.log(values);

  function onSubmit(event) {
    event.preventDefault();
    handleSubmit();
  }

  function addHomepage() {
    console.log('add homepage');
    values = {
      ...values,
      homepages: [...values.homepages, { url: '', id: '' }],
    };
  }

  function removeHomepage(index) {
    values = {
      ...values,
      homepages: values.homepages.filter((_, i) => i !== index),
    };
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
  <fieldset>
    {#if !values.homepages}
      <p>No homepages yet.</p>
    {:else}
      {#each values.homepages as homepage, index}
        <div>
          <label>
            Homepage URL
            <input
              type="text"
              bind:value={homepage.url}
              placeholder="e.g. https://example.com"
            />
            <input
              type="hidden"
              name="homepages[][id]"
              bind:value={homepage.id}
            />
          </label>
          <button type="button" on:click={() => removeHomepage(index)}
            >Remove</button
          >
        </div>
      {/each}
    {/if}
    <button type="button" class="secondary" on:click={addHomepage}>
      <IconBrowserPlus stroke={1.5} /> Add Homepage
    </button>
  </fieldset>
  <hr />
  <button type="submit">Submit</button>
</form>

<style lang="scss">
  .grid {
    display: grid;
    gap: 1rem;
  }
</style>
