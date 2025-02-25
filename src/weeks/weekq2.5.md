---
title: 2.5 - Lumi.ink
description: Your URLs shortened! Or.. Lengthened? SvelteKit -> ESP32
published: true
---

Bit.ly, it works great until you get hooked and run out of free uses. For this project I decided
to take inspiration from prior link shortening tools, while adding a little of my UX spice, and spinning things off a
bit.

## Firebase & SvelteKit

To store links, I decided it would be easiest to set up a reverse database mapping URLs
to short slugs (value based URLs). To make a new slug, a five-digit code is randomly picked using the JS cryptography
module, checked to ensure it's unique, then submitted to the database as a key with the following URLs as a value.

```ts
export const actions: Actions = {
	default: async ({ request }) => {
		const data = await request.formData();
		const submitted_urls = data.get('links');

		let existingLink = await getDocs(query(collection(db, 'links'),
			where('urls', '==', submitted_urls)));
		if (!existingLink.empty) {
			let firstEntry = existingLink.docs[0];
			return { success: true, created_link: `/${firstEntry.id}` };
		}

		// LID = Link ID, great name ik ik
		async function makeLID(): Promise<string> {
			let goodLID = false;
			let link_id = '';
			while (!goodLID) {
				link_id = (Math.random() + 1).toString(36).substring(7);
				const linkServer = await getDocFromServer(doc(db,
					'links', link_id));
				if (!linkServer.data()) {
					goodLID = true;
				}
			}
			return link_id;
		}

		let link_id = await makeLID();

		await setDoc(doc(db, 'links', link_id), {
			urls: submitted_urls
		});
		return { success: true, created_link: `/${link_id}` }
	},
};
```

Only a key value store is needed, so rather than configuring a full SQL database
I opted to use a firestore, which is an FFT (flat file method) key-value based system.

To simplify links as much as possible, if the default route is loaded without a code specified
the server will automatically redirect you to /links/new, which is a static page built with a form to create
new links. However, if a link is specified within the first section of the URL path, the server will look it up
in the firestore and render the found links as an interactive list.

```ts
const link_query = doc(db, 'links', params.url.pathname)
try {
	const link = await getDocFromCache(link_query)
	return {
		storedURL: {
			contents: link.data()
		},
		currentPath: {
			contents: params.url.pathname
		}
	}
} catch {
	const linkServer = await getDocFromServer(link_query)
	return {
		storedURL: {
			contents: linkServer.data()
		},
		currentPath: {
			contents: params.url.pathname
		}
	}
}
```

## Software to Firmware

ESP32s are a popular choice for IOT hosting, well, too bad for Arduino, we're using an ESP8266. That's right. Bigger
number. It must be the superior device.

Thankfully, I'm not the first Svelte fan to come along,
and [Csaba Balázs](https://github.com/BCsabaEngine) launched a [tool](https://github.com/BCsabaEngine/svelteesp32) for
compiling NodeJS projects to C to run on an ESP32!

After throwing together a nice UX with my design system we were good to go! I compiled it and uploaded it only to learn
the site is too large to host on the ESP8266. It was worth a shot, as a fallback I ended up just dropping it on
Cloudflare.

### The silly

Having a link shortener is nice, but it's a little too generic. So, to really distinguish my resume, I embarked
on a journey to make something truly great. Balls.bio. A link lengthened. Why? Why not? The domain isn't being used
for anything and the aura of sending someone a 1400+ character link starting with "balls.bio" has an unmatched aura.

So, I forked Lumi, removed the ability to pick a link manually so it instead throws a redirect at random to one of the
links you've specified, and set it to generate comically long links using UUID generation.

Yes, both of them use the same Firestore backend. Why work smarter when you can work smarter? Wait a minute.

I hope you enjoy both my [link shortener](https://lumi.ink) and [link extender](https://balls.bio) :)

<div style="display: grid; grid-auto-flow: column;">
    <div><img src="https://lh3.googleusercontent.com/pw/AP1GczMkP734PmdHW4D57WFm42r3W0MBeOzv6OAsztH1G55T1vyA3n7n1aDZ6vTu5LgJufI1qR4u5jI32jO_S1CZ3mU0-QlhT-HYuwFLLAGgimG3ylOaMFjf9qGn4u9t1UNpp0mpgI9Zq9EaRQuCkR54zEyQOw=w294-h414-s-no" class="tall" alt="Lumi.ink demo">
    </div><div><img src="https://lh3.googleusercontent.com/pw/AP1GczOP2wvSec04T_7QavbnEwKKYc6E7Qh6J0Ke5S0ia7fd9p0CfG9wDLqGMe4EaxYk_G9IfjCwwaMcv7t8XoRaEuTIZU6K4w25yLXxw_qayfLNWeSIZGKs2enYpn4NezvtUFJ9AKySVoam-S9rVW2FS4kuVw=w288-h416-s-no" class='tall' alt='Balls.bio demo'/>
</div></div>

