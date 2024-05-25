<script lang="ts" context="module">
    import Layout from '@/layouts/Layout.svelte';
    export const layout = Layout;
</script>

<script lang="ts">

    export let language_services;

    console.log(language_services)
</script>


<div>
    <h1>Language Services</h1>
    <p>These are the language services that are scraped by Comrade.</p>
    {#if language_services.length === 0}
        <article><p>No language services.</p><button>Add one!</button></article>

    {/if}
    {#each language_services as language_service}
        <div>
            {language_service}
        </div>
    {/each}
</div>

<style lang="scss">
    article p {
      color: $grey-300;
    }
</style>