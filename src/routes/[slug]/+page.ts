import { error } from '@sveltejs/kit';

export async function load({ params, url }) {
	try {
		const post = await import(`../../weeks/${params.slug}.md`);

		return {
			url: url.pathname,
			content: post.default,
			meta: post.metadata
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
