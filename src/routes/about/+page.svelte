<script lang="ts">
	import { fxCheck } from '$lib/stores';
</script>
<svelte:head>
	<title>About</title>
	<meta property="og:title" content="About" />
</svelte:head>
{#if $fxCheck === true}
	<div class="absolute">
		<div class="absolutegrid justify-center">
			<div class="bg-shape2 bg-green opacity-20 bg-blur" />
			<div class="bg-shape3 bg-blue opacity-20 bg-blur" />
			<div class="bg-shape6 bg-green opacity-20 bg-blur" />
			<div class="bg-shape1 bg-sapphire opacity-20 bg-blur" />
			<div class="bg-shape4 bg-teal opacity-20 bg-blur" />
			<div class="bg-shape5 bg-green opacity-20 bg-blur" />
		</div>
	</div>
{/if}

<div class="mainContent">
	<div class="page">
		<div class="headertextcontainer">
			<h1 class="">About & Credits</h1>
			<p>
				Computers to me are superpowered books, while for many they’re just tools for getting work
				done or places to use apps, a website to me is much like a sketchbook, an extension of your
				thoughts where you can dream of and create anything. I also think it’s fun to code, both for
				the sake of creating something and potentially sharing it with others. You can see more of
				my work <a href="https://autumn.onl">here!</a>
			</p>
			<p>
				Don't let me within 400 feet of a compiler, or Windows for that matter...
				<br /><br />CSS animations were created using a generator called
				<a href="https://animista.net/">Animista.</a>
				<br /> <br />The color pallet is called Catppuccin, you can
				<a href="https://catppuccin.com/">learn more about it here.</a>
				<br /> <br /> The markdown blog component of this website was built following
				<a href="https://joyofcode.xyz/sveltekit-markdown-blog"> this tutorial</a>
			</p>
		</div>
	</div>
</div>

<style>
    .mainContent {
        height: 100vh;
        max-width: 60em;
        margin: 8em auto;
    }

    a {
        color: var(--ctp-mocha-);
    }

    @media (min-width: 720px) {
        .mainContent {
            width: 80%;
        }
    }

    p {
        color: #96e7cb;
    }

    h1,
    h2 {
        margin: 0;
        color: #96e7cb;
    }
</style>
