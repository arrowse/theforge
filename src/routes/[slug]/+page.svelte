<script lang="ts">
	import { formatDate } from '$lib/utils';
	import { fxCheck } from '$lib/stores';
	export let data;
	$: animationsDisabled = $fxCheck ? 'fade-in-delay' : 'no-animation';
	import aimg from '$lib/images/a.png';
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
		<div class="prose {animationsDisabled}" style="--delay: {0.3}s;">
			<svelte:component this={data.content} />
		</div>
		<div class="footer">
			<a href="/"><img src={aimg} alt="Autumn logo" class="footericon"></a>
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
