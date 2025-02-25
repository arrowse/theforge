---
title: 1.2 - Cable router
description: Intro to FreeCAD and snap fit designs
published: true
---

<script>
import buzzerSound from '$lib/buzzer.mp3';
import buzzericon from '$lib/buzzerimg.png';
let buzzer = new Audio(buzzerSound)
</script>

Cable management, the art of things looking neat and organized... at least from your perspective.

Starting at DePaul, being the battery operated thing enjoyer
that I am, it became painfully clear that having cables out of sight would be quite inconvenient, after unplugging them
gravity would take a toll and I'd need to pick them up off the floor...

Until...

One day a morning class was cancelled, I had three hours burning a hole in my finite time to live, and my motivation was
at a weekly high. Time to learn CAD in three hours and make a solution.

FreeCAD to be specific, we love open source software here.

## Solution

Make them more not unorganized anymore. Er- less unorganized.

![Cable router final result](https://lh3.googleusercontent.com/pw/AP1GczN3QiuHNcOECppk7fyn5zUTJP-YFVfWAlRePXvh5oH2_cJ9zmQyxFplI6y5RSMe_Ud5xtuknEPoJwQNhCmh9obrFuxYG0jFzW-gk-4jCrpC9GMMfIWn5WXSqF0ls6JbI_Ht9ts2M9balI7gaWpV_7wDLg=w1190-h670-s-no)

How does it work? First, its custom fit to the desks _at DePaul_, so no glues or adhesives are needed. Next, to stop
cables from
free-falling, a small constraint (either the top bar in the first version or U bar in the later models) allows for
cables to flow freely while stopping them at the ends. It also snaps into place, so you can change cables with ease.
Lastly, to keep things neat and route cables out of the way, a supporting bar off the back of the router angles the
cables down and applies additional resistance limiting unintended movement. The end result allows you
to move cables as you please, while keeping them neat and orderly.

The design genuinely is simple- it took about an hour to create the first draft, but in my classic era of 'guess the
measurements and fix it later' I ended up with more fixing and less doing. So, here's each iteration of the design.


**First design**
1. Combine the letters J and T in CAD to fit a desk
2. Add holes for cables off the back side of it
5. Add a bar with tabs to hold cables from the top so they don't just fall down

![First design CAD](https://lh3.googleusercontent.com/pw/AP1GczP58lE7lNJPTx4TxB61tXggQ0EBN7QxiDxpHpVaBzUjsqZEBkMK7D3bmGLAHeTbKOr6BUTqeDDDqvP-Bb9YR9kj86fbzSOGU4iA3ot4xqe75XohtIn9cYCMOsOfAxShAtCThXdjG3HInVM-VEMY1eG7gQ=w800-h450-s-no)

**Second Design**

Cables don't fit, and it can't fit on the desk so.. uh.. just make the whole thing bigger?

![First and second router models](https://lh3.googleusercontent.com/pw/AP1GczNGm7tIfaYFIFX8NOJDHiEYISLnknZJvEjfHmYz8D9gZcPRaUyRcgLhBAArJAg1zplOSJfkWyPIpYbUfAorlI7ga1ti9J3U_AqmlmGDxtLhcjmlEjaxTnI_Z9Rr2urAu_8xMRwjg1E-8js8Nr541kRWHQ=w1260-h708-s-no)

*extremely loud incorrect buzzer*

<img class='tiny' src={buzzericon} on:click={() => {buzzer.play()}}/>


that did not in fact work so.. Redesign time!

**Final Design**
1. Combine the letters J and T in CAD to fit a desk
2. Add a routed square hole to run cables through
3. Add two tabs on either side of the router to allow a snap fit cover to hold cables in place
5. Make a very stretched out 'U' bar with two short cylindrical tabs to fit the router base

![Final design CAD](https://lh3.googleusercontent.com/pw/AP1GczMARlN6Txc3bUhOV_L_ZQx7ZeIjNco0CLzD4Px71nYn2eCuxqpXF7JxuBKc-ccyrTBTxWZFgf1B2aePKAEuMZI5rBkgk8b1UACXT1SEYNMHbXw1h-CXTUPtrV15aI1g6wFrVCXwM8EA5WI6yv7BnLXpaw=w800-h450-s-no)

boom.

![CableRouter CAD side profile](https://lh3.googleusercontent.com/pw/AP1GczMR05Tl0jXnG8IOVgCfQVrcHyQhNiB5YWSGRoEiT2x_duoFiVcRaMdhNpveoOWaqKMShnZm8zFzY1oJc5SOqGgJLOAo5nRYGHjmj_TbJjNvVjqc6-yF9g1cOy9jOx95yfSRLF0_hQZrT_lUyV-iIJdlug=w1143-h789-s-no)
![CableRouter CAD top down 45 degree angle profile](https://lh3.googleusercontent.com/pw/AP1GczMbEuBHFIRbYnHOOUMkC8ADMJpHQ3BSfb9YqjtOshee8hhsUQ7Fm6iFhHKqh5eO7DAV1YTxcKAlImNjkb4by3SA00hGWTpSNwrpZFvpA7BAmrrrkbcQNb2u7vD1cNZcaNejPY2xvrE--SQ7h7NcwzZYqg=w1201-h1010-s-no)

And there you have it. A made up solution to a made up problem. For future iterations, I am absolutely adding a screw to
the bottom
so that it works on a greater variety of desks, but for now the design works great and it was a great introduction to CAD.
### It's dangerous to go alone! Take this!

[CAD File for download](https://drive.google.com/file/d/1oHryPArWy3lYoPmf-XtCJmhurPhl9GXL/view?usp=sharing) (don't
forget to scale it up by 5.5% in your slicing software before 3d printing it!)

![Router GIF](https://lh3.googleusercontent.com/pw/AP1GczMUgSOJVqhCY0jSt_LdpcHhachDZwQfjqbzZHFWOU93_Ek4-juQLA5RGwxn-CDXpqKDzE0e2eDLWxwo0tCJU_2un0XbxMS-LcGkX3QQdn7Ty51fsNwnhfMazTJfuUZyQjWKePrVbI_mqCPA8U6z5j9LLA=w1260-h708-s-no)

<style>
.tiny {width: 75px; margin: 10% auto 10% 42.5%;}
</style>