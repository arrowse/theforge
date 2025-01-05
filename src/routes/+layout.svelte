<script>
	import '$lib/styles/style.css';
	import '$lib/styles/blobs.css';
	import '$lib/styles/transitions.css';
	import Nav from '$lib/components/Nav.svelte';

	import { spring } from 'svelte/motion';
	import Cursor from '$lib/components/Cursor.svelte';

	let coords = spring(
		{ x: 50, y: 50 },
		{
			stiffness: 0.075,
			damping: 0.5
		}
	);

	let size = spring(10);
</script>

<body>
<div class="app">
	<main>
			<Nav />
		<slot />
	</main>
</div>
</body>
