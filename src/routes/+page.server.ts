import type { Week } from '$lib/types';

export async function load({ fetch }) {
	const response = await fetch('api/weeks');
	const weeks: Week[] = await response.json();
	return { weeks };
}
