<script>
	import { fxCheck } from '$lib/stores';

	let toggleButtonState = '';
	$: toggleButtonState = $fxCheck ? 'vfx-on' : 'vfx-off';
</script>

<div class="headerContainer">
	<ul>
		<li>
			<a href="/">[Home]</a>
		</li>
		<li>
			<a href="/final">[Final]</a>
		</li>
		<li>
			<a href="/about">[About]</a>
		</li>
	</ul>

	<div class="buttons">
		<!--        <a href="https://autumn.onl">[main site]</a>-->
		<button class={toggleButtonState} on:click={() => fxCheck.toggle()}
		>VFX: {$fxCheck ? 'ON' : 'OFF'}</button
		>
	</div>
</div>

<style>
    ul {
        display: flex;
        list-style-type: none;
        padding: 0;
    }

    li {
        margin-right: 1rem;
    }

    a {
        font-size: 1.3em;
        text-decoration: none;
        color: var(--ctp-frappe-Mauve);
    }

    a:hover {
        text-decoration: underline;
    }

    .headerContainer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem;
        background-color: var(--ctp-frappe-White);
        max-width: 60em;
        width: 80%;
        margin: 0 auto;
    }

    button {
        background: none;
        font-size: 1.1rem;
        padding: 0.5rem 1rem;
        /*    animate padding change */
        transition: padding 0.1s;
    }

    button:hover {
        cursor: pointer;
        padding: 0.5rem 1.6rem;
    }

    @media (max-width: 720px) {
        .headerContainer {
            flex-direction: column;
        }

        button {
            margin-top: 1rem;
        }
    }

    .save {
        color: var(--ctp-frappe-blue);
        border: 1px solid var(--ctp-frappe-blue);
    }

    .vfx-on {
        color: var(--ctp-frappe-teal);
        border: 1px solid var(--ctp-frappe-teal);
    }

    .vfx-off {
        color: var(--ctp-frappe-text);
        border: 1px solid var(--ctp-frappe-text);
    }
</style>
