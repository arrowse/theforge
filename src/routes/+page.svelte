<script lang="ts">
	import aimg from '$lib/images/a.png';
	import { fxCheck, firstLoad } from '$lib/stores';

	import { onDestroy, onMount } from 'svelte';
	// import * as config from '$lib/config'

	export let data;
	let show = false;
	let animationsDisabled = '';
	$: animationsDisabled = $fxCheck && $firstLoad ? '' : 'no-animation';

	onDestroy(() => {
		$firstLoad = false;
	})
</script>
<svelte:head>
	<title>Autumns's Forge</title>
	<meta property="og:title" content="Autumn's Forge" />
</svelte:head>
<html lang="en">
<div class={animationsDisabled}>
{#if $fxCheck === true}
	<div class="absolute puff-in-ver">
		<div class="absolutegrid justify-center">
			<div class="bg-shape1 bg-blue opacity-20 bg-blur" />
			<div class="bg-shape2 bg-mauve opacity-20 bg-blur" />
			<div class="bg-shape3 bg-blue opacity-20 bg-blur" />
			<div class="bg-shape4 bg-sapphire opacity-20 bg-blur" />
			<div class="bg-shape5 bg-lavender opacity-20 bg-blur" />
			<div class="bg-shape6 bg-sky opacity-20 bg-blur" />
		</div>
	</div>
{/if}


	<div class="mainContent">
		<div class="page">
			<img src={aimg} alt="a logo" class="alogo" />
			<div class="headertextcontainer">
				<h1 class="tracking-in-contract-bck-bottom nowrap">Autumn's Forge</h1>
				<section>
					<ul class="posts">
						{#each data.weeks as week, i}
							<li class="post fade-in-delay" style="--delay: {i / 10 + 1.5}s;">
								<a href={week.slug} class="title">{week.title}</a>
								<p class="description">{week.description}</p>
							</li>
						{/each}
					</ul>
				</section>
			</div>
			<br/>
			<br/>
			<br/>
		</div>
	</div>
</div>
</html>

<style>

    ul {
        list-style: none inside none;
        padding: 0;
    }

		.nowrap {
				text-wrap: nowrap;
		}

</style>
