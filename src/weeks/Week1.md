---
title: 1.1 - Arrival
description: SvelteKit markdown blog creation and a brief introduction
published: true
---

<script>
import cobol from '$lib/images/cobol.gif';
</script>

## Hi! I'm a very serious and professional developer...

who broke her bootloader last week.. as they say, you can't understand fire without playing with it!*

*in a safe and controlled environment which will not lead to any real damage

<img src={cobol} alt="wtf is cobol">

## I like Svelte

Svelte is a javascript framework for building reactive websites, while streamlining the developer experience with
features like stores (shared state objects), transition and animation interfaces, and exceptionally condensed reactive
code, which you can use by adding tags inside of HTML for example, instead of needing components as is
the case with React.

I built this website in SvelteKit, Svelte's full stack javascript framework which handles server side rendering and
back-end code execution without the need to build a separate codebase.

Originally built without a backend in March as part of my DPU honors
application, I tweaked the css and added a backend to follow along with The Forge without taking study time
away from my other classes before officially joining the class in Winter quarter.

The CSS itself has a few bells and whistles, namely reactive layouts for different viewport sizes, animated
background lights, page transitions, and most importantly the ability to disable said animations on less performant
devices.

Originally the site had three static pages, no dynamic routing, the CSS was scattered, and VFX toggle hard coded.

Adapting the site for the forge, I followed a tutorial from Joy Of Code to implement a markdown based blog, which
compiles
markdown files to html at build time and then accesses them through dynamic routing, ie, slugs.

In a nutshell, when you
type a page URL, such as forge.autumn.onl/week1, the server checks if that page exists as a normal route, and
if not, checks if it exists as a compiled markdown article. Instead of needing to create new routes every week, I can
add a new .md file to my weeks folder and my backend handles the rest at compile time and whenever a
page is loaded.

Lastly, I've been building out a standard design system including colors and fonts for my web projects, and decided to
apply it here! I hope you like it :)

I'm really excited to be part the Forge, and look forward to spending time with everyone through winter quarter now that
I'm properly enrolled.

Until next time, I'll catch ya on the flipside.