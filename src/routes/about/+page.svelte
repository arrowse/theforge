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
				CSS animations were created using the
				<a href="https://animista.net/">Animista</a> tool.
				<br /> <br />The color pallet is called Catppuccin, you can
				<a href="https://catppuccin.com/">learn more about it here.</a>
				<br /> <br /> The markdown blog component of this website was built following
				<a href="https://joyofcode.xyz/sveltekit-markdown-blog"> this tutorial</a> by Joy of Code.
			</p>
			<h2>Tools & Downloads!</h2>
			<p>I ended up creating a few tools for the forge along the way, mostly to make life easier. Hopefully
			they'll make your life easier too!</p>
			<p>Please keep in mind these are built to work for posix based systems (MacOS & Linux), but <b>not Windows.</b> These tools come with no warranty or guarantee of any kind, by using them you assume all responsibility for any issues encountered.</p>
			<p><a href="/compressImages.bash" download>Web media compression tool</a> - A bash script that automatically compresses your media files and converts them from any format to .webp, a highly optimized web format. Make sure your images and videos are in a folder titled /images and let the script do the rest! Just <b>make sure to add /imagesUncompressed to your .gitignore</b>.
			<p><a href="/commitAndSync.bash" download>Dual repository commit tool</a> - A bash script for pushing one repository to multiple remotes, helpful for hosting a dynamic site on cloudflare through a GitHub repository while also keeping your forge GitLab up to date. <b>Don't forget to replace the .ssh/ keyfile with your own and add the name of your GitHub remotes!</b>
			</p>
			<h3>Forge Manifesto</h3>
			<p>We work? Always. Documentation? At least two weeks behind. Our projects work? Sometimes. We sleep? Never. Caffeinate. Reach hour 16 at the IRL and ascend to another dimension. True meaning comes from pursuing the absurd. We will go beyond the 5th dimension of ice cube tray geometry and bring fusion to it's knees rendering 1.1 million polygons of David. This is the best class you'll ever take, days in the lab feel like seconds. Cherish it, love it, and stay creative.</p>

			<div class="center">
		<a href="https://www.autumn.onl" target="_blank"><img src={arosebutton} class="button" alt="arose website 88x31 button"></a>
			<img src={firefox} alt="firefox button" class="button"><img src={linux} class="button" alt="linux button"><img src={vim} class="button" alt="vim button"><img src={network} class="button" alt="network button">
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
