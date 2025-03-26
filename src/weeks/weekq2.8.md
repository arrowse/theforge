---
title: 2.8 - Jellyfish pt. 1
description: We do a little arts and crafts
published: true
---

Throughout the brainstorming process, I noticed that most of my ideas were overly software-centric.
To break out of this shell I decided to start from a physical project and add electronics in later, focusing more on the artistic aspects and mechanical execution and less on what I'm already fammiliar with.

Given my love for sea life, what better than jellyfish?

## The first fish to fry

To avoid starting too big, I decided to make a mini-jellyfish implementing the most important mechanics,
namely the motor and dimmable lights. To start, I made a small tower out of cut acrylic and took a motor model we worked
with
for our pinwall project from Leah to handle the up-down mechanic.

<img src="https://lh3.googleusercontent.com/pw/AP1GczOq4kWGRR_a5XbZyX8k2tZMcGKdSr2mSWJ6WesSRUMLiqyC2rK0EQcQ1porbjSAR16fqrZoM21WChwH7HfxLnuTiqP-VWW_kOZ8_rVT0kPm831au1wIuwtllg8dnzQoPZ5d6yYnEjEIQfrqFGsxJ7I2mQ=w478-h850-s-no" alt="acrylic tower" class="tall"/>

With the help of a few friends, we painted and cut coffee filters to create the body of a jellyfish!

![Jellyfish beginnings](https://lh3.googleusercontent.com/pw/AP1GczOYRpGCRW-aEXaMcSCmjq-Xi5EZKnG3H1O_U0B8IaKcc7_KbnEZeCnQZ_c3fN8jU1cpO39xoDJvZ1eNkYXTs6N_ideNiP7aI8UeYYAGFAzV9S2mwKcqJGonX2VSqXCfq-gOzmFt_UdehwCDbffngtoUfg=w1512-h850-s-no)

![Jellyfish painted](https://lh3.googleusercontent.com/pw/AP1GczNoSkmlX3Xgab30CtiYNIlKloKylvm-G01LxGkASlPGF06ckobLZxA__STbaxavRMeb2p0Y-UdWpYtmOQe6yzH5TzYR93U0-1aEURpRlbUE_KwY_XmOTIvyoJRZ_ub7b8J19mhN_fyahAi-nojlZ25AMw=w1512-h850-s-no)
<img src="https://lh3.googleusercontent.com/pw/AP1GczOReYyqgpanDU4RQ8JjxhfMYU5SARe-02jg5JPjIlXHseaaI3uCQEnxpWsT01zofG3DuUQaZujU8OeV_tIw-krYEUaij-WQD32Bbp9RkuaPPog5JzVRoQuzLVCzLNtU4f6TiSPzTdc8Xt6U5VWADtOlnw=w478-h850-s-no" alt="acrylic tower" class="tall"/>

With everything wired up, the servo works, and I have an LED turning on and off in sync with it!

![Led working w/ motor](https://lh3.googleusercontent.com/pw/AP1GczM274Ov4IfHSICMkc9VPIxWSu53eV45qe5PtHX8VBwZLFW-yrf8UtnGH86VBhx25AXQOK0E6lG52aKaMSpmAv0cqAsh8coyMLON0GMlYOwQTChdKlUhi8om9fr3y5p9123ni9y1dKcNBxWwV5MwPmm-cA=w800-h450-s-no)

To add easy remote control and streamline things, I decided to mount it to an ESP8266 on a stock PCB, and also added in
an LED with connections up to the board!

Tadaaaaa-

<div style="display: grid; grid-auto-flow: column;">
    <div><img src="https://lh3.googleusercontent.com/pw/AP1GczM0gnk5V4BVXnN__c5iecA0p3sg0_ZbMswIbSK6zPda-NYT9RkWTrRiCdcNnTTevktBsr52VuEK3z7dkoc8tmxKAW_crIEXxKshsUmsIpbKqPnbcPqDsWh6v817TBX_VGErYLFpDBrJ6Xy-Iy2YVY4pOA=w452-h804-s-no" class="tall" alt="Jellyfish final design">
    </div><div><img src="https://lh3.googleusercontent.com/pw/AP1GczO5Pan4EwHjwSe2-S2eF_-s0t2JaFamAJUM0D4Y8x9CY7PrKVc6Jaieledsc7u9yMALHaKVrk4vqW2GnVWxNbNZLLKUWN4GwGI_iP49_FD3gZNqkCT-9yJl-QyrX9Fz4U67OSF1IS-PjGApW38iE18IHw=w452-h804-s-no" class='tall' alt='Jellyfish controller'/>
</div></div>

### Up next:

Moving forward, I might look into a different motor gear layout, or look into switching to stepper motors, but for now
this works well! I just need to scale things up a bit and make a larger frame
