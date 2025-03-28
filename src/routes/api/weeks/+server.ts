import { json } from '@sveltejs/kit';
import type { Week } from '$lib/types';

async function getPosts() {
	let weeks: Week[] = [];

	const paths = import.meta.glob('/src/weeks/*.md', { eager: true });

	for (const path in paths) {
		const file = paths[path];
		const slug = path.split('/').at(-1)?.replace('.md', '');

		if (file && typeof file === 'object' && 'metadata' in file && slug) {
			const metadata = file.metadata as Omit<Week, 'slug'>;
			const post = { ...metadata, slug } satisfies Week;
			post.published && weeks.push(post);
		}
	}

	weeks = weeks.sort(
		(first, second) => new Date(second.date).getTime() - new Date(first.date).getTime()
	);

	return weeks;
}

export async function GET() {
	const posts = await getPosts();
	return json(posts);
}
