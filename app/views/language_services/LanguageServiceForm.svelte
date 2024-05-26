<!-- LanguageServiceForm.svelte -->
<script lang="ts">
  import { IconBrowserPlus } from '@tabler/icons-svelte';

  export let values;
  export let handleSubmit;

  function onSubmit(event) {
    handleSubmit();
  }

  function addHomepage() {
    values.homepages_attributes = [...values.homepages_attributes, { url: '' }];
  }

  function removeHomepage(index) {
    values.homepages_attributes = values.homepages_attributes.filter(
      (_, i) => i !== index,
    );
  }
</script>

<form on:submit|preventDefault={onSubmit}>
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
    {#if !values.homepages_attributes.length}
      <p>No homepages yet.</p>
    {:else}
      {#each values.homepages_attributes as homepage, index}
        <div>
          <label>
            Homepage URL
            <input
              type="text"
              bind:value={homepage.url}
              placeholder="e.g. https://example.com"
              on:input={() =>
                (values.homepages_attributes = [
                  ...values.homepages_attributes,
                ])}
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
