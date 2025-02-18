<script lang="ts">
	import { formatDate } from '$lib/utils';
	import { fxCheck } from '$lib/stores';

	export let data;
	$: animationsDisabled = $fxCheck ? 'fade-in-delay' : 'no-animation';
	import aimg from '$lib/images/a.png';
	import { fly, fade } from 'svelte/transition';
	import { onMount } from 'svelte';

	$: show = false;

	onMount(() => {
		show=true;
	})
</script>

<!-- SEO -->
<svelte:head>
	<title>{data.meta.title}</title>
	<meta property="og:type" content="article" />
	<meta property="og:title" content={data.meta.title} />
</svelte:head>

<div class="mainContent">
	<article>
		{#if show}
		<div in:fly={{y: 8, duration:500}}>
				{#key data.url}

			<!-- Title -->
			<hgroup in:fade={{duration:500, delay: 400}} out:fade={{ duration:250, delay:200}}>
				<h1 class="headertext">{data.meta.title}</h1>
			</hgroup>
		<!-- Post -->
				<div style="--delay: {0.3}s;" in:fly={{y: 10, duration:500, delay: 500}}
						 out:fly={{y:10, duration:200, delay: 200}}>
					<svelte:component this={data.content} />
				</div>
				<div class="footer">
					<a href="/"><img src={aimg} alt="Autumn logo" class="footericon"></a>
				</div>
				{/key}
		</div>
		{/if}
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

    .footericon {
        margin: 0;
        height: 85px;
        filter: grayscale(55%);
        -webkit-filter: grayscale(55%);
    }

    .footericon:hover {
        filter: grayscale(0);
        -webkit-filter: grayscale(0);
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
