---
title: Week 3 - Magic run
description: How to break an industrial grade laser cutter in 2 easy steps, et al. [pending update]
published: true
---

## How to break an industrial grade laser cutter in 2 easy steps

Last Saturday, I did a study session with Alissa in the loop, things started off going well
as we worked on designs and got ahead on reading. After a few hours, we went downstairs to the IRL
and Alisa began cutting out a few test cubes to measure kerf and optimize the cut. At its lowest,
she got the kerf down to 0.01mm, but we weren't able to reproduce the settings which created it.

[Video 1](https://photos.app.goo.gl/wo7Ns4ZwysUDQaQw7)

It eventually got close enough though, and she started a cut session.

The laser had other plans.

About 3/4ths of the way through Alisa's cut, the laser started flickering, then
cut out completely.

So yeah, we cooked an industrial grade laser cutter today. How are you doing?

## PCB Making!

- For my design, I thought it would be fun to shape my PCB like a nintendo switch with various logos / stickers added,
  so I went ahead and carved it out in KiCad and added a few extra masking layers.
- Unfortunately, I had the export settings wrong, putting the drill holes in random places rather than on the design as
  intended. While I'm not fully sure what caused this, I believe it was the "place at drill file origin" option rather
  than absolute, which would have placed it based on the drill file in isolation. Chanigng this setting resolved the
  issue.

---

# Week 3 Update!

The 90 watt industrial laser cutter is basically just a normal laser sent through a massive tube of
carbon dioxide, which bounces around a few times thanks to some mirrors out of Fire Boy and Water Girl,
before being redirected into a lens which concentrates it such that it can melt acrylic.

Then to move the laser head, a separate computer off to the side drives a few motors.

So, what broke exactly?

Nothing. One of the mirrors just had a loose bolt from the machine moving around and
ended up pointing at the wrong angle.

To reword this in purely academic terms,

## WE ARE SO BACK