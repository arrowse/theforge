<script lang="ts">
	import { fxCheck } from '$lib/stores';
	import arosebutton from '$lib/images/arose.png'
	import firefox from '$lib/images/firefox.gif'
	import vim from '$lib/images/vim.gif'
	import linux from '$lib/images/linux.gif'
	import network from '$lib/images/network.gif'
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
		<div class="footer">
			<div class="center">
		<a href="https://www.autumn.onl" target="_blank"><img src={arosebutton} class="button" alt="arose website 88x31 button"></a>
			<img src={firefox} alt="firefox button" class="button"><img src={linux} class="button" alt="linux button"><img src={vim} class="button" alt="vim button"><img src={network} class="button" alt="network button">
			</div>
		</div>
		</div>
	</div>
</div>

<style>
    .mainContent {
        max-width: 60em;
        margin: 8em auto 0 auto;
    }
		.center {
				display:flex;
				justify-content: center;
		}
		.footer {
				margin-top: 2.5em;
		}

		.button {
				width: 100px;
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
