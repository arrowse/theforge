import { writable } from 'svelte/store';

function createFxCheck(initialToggle: boolean) {
	let toggle = initialToggle;
	const { subscribe, update } = writable(toggle);

	subscribe((value) => {
		toggle = value;
	});

	return {
		subscribe,
		toggle: () => update((value) => !value)
	};
}

export const fxCheck = createFxCheck(true);

export let firstLoad = writable(true);