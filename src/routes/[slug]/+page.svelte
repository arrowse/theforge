<script lang="ts">
	import { formatDate } from '$lib/utils';

	export let data;
</script>

<!-- SEO -->
<svelte:head>
	<title>{data.meta.title}</title>
	<meta property="og:type" content="article" />
	<meta property="og:title" content={data.meta.title} />
</svelte:head>

<div class="mainContent">
	<article>
		<!-- Title -->
		<hgroup>
			<h1 class="headertext">{data.meta.title}</h1>
		</hgroup>

		<!-- Post -->
		<div class="prose fade-in-delay" style="--delay: {0.3}s;">
			<svelte:component this={data.content} />
		</div>
	</article>
</div>

<style>
    article {
        max-inline-size: var(--size-content-3);
        margin-inline: auto;
    }

    h1 {
        text-transform: capitalize;
    }

    .headertext {
        color: var(--ctp-mocha-z);
        margin-top: 2em;
    }

    h1 + p {
        margin-top: var(--size-2);
        color: var(--text-2);
    }

    .tags {
        display: flex;
        gap: var(--size-3);
        margin-top: var(--size-7);
    }

    .tags > * {
        padding: var(--size-2) var(--size-3);
        border-radius: var(--radius-round);
    }
</style>
