<script>
	import '$lib/styles/style.css';
	import '$lib/styles/blobs.css';
	import '$lib/styles/transitions.css';
	import Nav from '$lib/components/Nav.svelte';

</script>

<body>
<div class="app">
	<main>
		<div class="nav">
			<Nav />
		</div>
		<slot />
	</main>
</div>
</body>
<style>
    .nav {
        z-index: 2;
    }
</style>
