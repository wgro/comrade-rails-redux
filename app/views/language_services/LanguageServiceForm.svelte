<!-- LanguageServiceForm.svelte -->
<script lang="ts">
  export let values;
  export let handleSubmit;

  function onSubmit(event) {
    event.preventDefault();
    handleSubmit();
  }
</script>

<section>
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
    <button type="submit">Submit</button>
  </form>
</section>

<style lang="scss">
  .grid {
    display: grid;
    gap: 1rem;
  }
</style>
