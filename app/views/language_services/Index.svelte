<script lang="ts" context="module">
  import Layout from '@/layouts/Layout.svelte';
  export const layout = Layout;
</script>

<script lang="ts">
  import { inertia, Link } from '@inertiajs/svelte';
  export let language_services;
</script>

<div>
  <header>
    <div class="header-text">
      <h1>Language Services</h1>
      <p>These are the language services that are scraped by Comrade.</p>
    </div>
    <button use:inertia={{ href: '/language_services/new' }}>New</button>
  </header>
  {#if language_services.length === 0}
    <article>
      <p>No language services.</p>
      <button use:inertia={{ href: '/language_services/new' }}>Add one!</button>
    </article>
  {:else}
    <table>
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Description</th>
          <th scope="col">Homepages</th>
          <th scope="col">Actions</th>
        </tr>
      </thead>
      <tbody>
        {#each language_services as language_service}
          <tr>
            <td>{language_service.name}</td>
            <td>{language_service.description}</td>
            <td>{language_service.homepages_count}</td>
            <td>
              <a
                use:inertia={{
                  href: `/language_services/${language_service.id}/edit`,
                }}>Edit</a
              >
              <a
                class="delete"
                use:inertia={{
                  href: `/language_services/${language_service.id}`,
                  method: 'delete',
                }}>Delete</a
              >
            </td>
          </tr>
        {/each}
      </tbody>
    </table>
  {/if}
</div>

<style lang="scss">
  article {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  article p {
    color: #999;
  }
</style>
