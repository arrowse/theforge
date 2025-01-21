<script lang="ts">
	import type { PageData } from './$types';
	import { fxCheck } from '$lib/stores';

	export let data: PageData;
</script>
<svelte:head>
	<title>Forge Final</title>
	<meta property="og:title" content="Forge Final" />
</svelte:head>
{#if $fxCheck === true}
	<div class="absolute">
		<div class="absolutegrid justify-center">
			<div class="bg-shape4 bg-yellow opacity-20 bg-blur" />
			<div class="bg-shape1 bg-flamingo opacity-20 bg-blur" />
			<div class="bg-shape2 bg-peach opacity-20 bg-blur" />
			<div class="bg-shape6 bg-maroon opacity-20 bg-blur" />
			<div class="bg-shape4 bg-flamingo opacity-20 bg-blur" />
			<div class="bg-shape5 bg-yellow opacity-20 bg-blur" />
		</div>
	</div>
{/if}

<div class="mainContent">
	<div class="page">
		<div class="headertextcontainer">
			<h1 class="">Final Project:</h1>
			<h3><strike>Extremly</strike> Averagely loud incorrect buzzer</h3>

			<p>I'll update this as soon as I can, for now, please keep tabs on the Home page.</p>
		</div>
		<ul>
			<li>
		</ul>
	</div>
</div>

<style>
    .photo-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
        gap: 1em;
    }

    .photo-grid img {
        width: 100%;
        height: auto;
    }

    .mainContent {
        height: 100vh;
        max-width: 60em;
        margin: 8em auto;
    }

    @media (min-width: 720px) {
        .mainContent {
            width: 80%;
        }
    }

    .clickin {
        height: 700px;
    }

    iframe {
        width: 425px;
        height: 239px;
    }

    p {
        color: bisque;
    }

    .offset-left {
        padding-left: 2em;
    }

    .side-by-side {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(450px, 1fr));
        gap: 1em;
    }

    h1 {
        margin: 0;
        color: bisque;
    }

    h2 {
        color: burlywood;
        font-size: 1.8em;
        max-width: 60em;
        margin-top: 3em;
        margin-bottom: 0;
    }

    ul {
        list-style-type: none;
        padding: 0;
    }
</style>