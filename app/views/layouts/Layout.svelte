<script lang="ts">
  import { page } from '@inertiajs/svelte';

  console.log($page.props);
</script>

<div>
  <nav class="container">
    <ul>
      <li><strong>Comrade</strong></li>
    </ul>
    <ul>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Products</a></li>
    </ul>
  </nav>
  <main class="container">
    <slot />
  </main>
</div>
