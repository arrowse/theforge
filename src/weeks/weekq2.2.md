---
title: 2.2 - Professor Cube
description: Turning the professor's head into an ice cube (with wax molding and casting)
published: true
---

You've seen the david discord emote. It's great. We love it.

How can it get any better?

By turning it into chocolate of course. But Ice is easier to clean, so we'll start with that for now.

### Step 1. Trick the professor into 3d scanning his face

I asked him politely if I could scan his face for a random and unrelated project, not at all connected to the
molding assignment. Little did he know... I used an advanced technique called lying.. IT WAS FOR MOLDING AND CASTING
ASSIGNMENT! AH HA HA HA HA

He actually volunteered to do so himself when he had some time free, which was very kind and helpful.

### Step 2. Make a positive wax mold

After importing the file into FreeCad it crashed, even with a few more attempts it didn't appear to load properly, so I
asked
Alisa if I could borrow her laptop to try running it through Fusion, which ran quite slowly. The model appeared to have
over 1.1 million polygons, which is a few more than most laptops can handle...

Alisa let me try reducing the model on her laptop, after which it still took about 10 minutes per operation in Fusion
360, so I worked on assignments for other classes while it did
its thing following [this tutorial on creating molds in Fusion](https://www.youtube.com/watch?v=vKZx9eHEL6o). Eventually
I had to go, progress was slow, so I decided to ask for help.

Matthew suggested using the decimate modifier in Blender _before_ importing the model into CAD, which worked like a
charm!

I worked a bit more in FreeCAD, but eventually decided to finish the project in Blender due to poor performance with the
geometry.

![David in a box in CAD](https://lh3.googleusercontent.com/pw/AP1GczMif8nrkyEbjetMpSKPJraR8SpLd8xlYZIvN68vpp3QL0DcXJUm9M8dNclFN5X73bYvb7YrJ8ZDBvE0DYWpJaLbhTW7r6IidnRo9ITmZUFwDR8nNO4zAL_e13bzqijyn6R0-YWvajd3ADK4nmt5dfKsrQ=w1210-h938-s-no)

### Step 3. VCarve CAM files!

Nice model you got there. What exactly _is that_? Says the machine, blissfully ignorant the existence of my 1.1 million
polygon .3mf file.

For the machine to do anything with the work we put in so far, we need to create a path for it to follow, kind of like 
connect the dots. **VCarve**, loaded on the shop PC at the back of the IRL, has all the bits and data needed to do just that.

First I measured the wax block to get an idea of how much space I have to work with, then imported the 3D model and set
the dimensions accordingly. **Always remember to measure your bit length and never drill deeper than your bit!**

![Vcarve settings 1](https://lh3.googleusercontent.com/pw/AP1GczM378qf9smQuUy46_8EfkFIzbPkygIhXsxM6doD-3mcYscMk640O7sV2TO5sVT3Q4OCeq0llo_O4ohCrHFRmYmmLylaNBz4LiTEJo5rv7mF_NsUn_7bNXNVl1HTrWcyM4jRSP3ESAlys74s3ckLzF0j_A=w1384-h757-s-no)
![Vcarve settings 2](https://lh3.googleusercontent.com/pw/AP1GczNGEulKWPQVrnLa9KZGwS9CTf43MccIPe22Ga_cx4JdJF-SfAv7UqG_gK6jpDtj4qMh6ooWAqYp5S4NMBQ3PhV0FZ_QbUDZTSsrsAw-q-FcvdMksEOoJi46hGb0Ei4BHu-WfuOW3wsOX5vGsKALwEzhNA=w1382-h746-s-no)
<img src="https://lh3.googleusercontent.com/pw/AP1GczPB0ZCl3wgkABkvfVKyFR63IBobj62S6aYjuYQFMGpVZzRduiWaOTOGarcGQxZ5uB2f3oM0W2ZYn7K2QvWQZe7PfSxEZoC9dBl_9ZX08XY9aig8wMzhPuOZM4QplN8Pr0kADYFe02FOSkQgluCKkksexw=w588-h595-s-no" class="tall" alt="Vcarve settings 3" />
<img src="https://lh3.googleusercontent.com/pw/AP1GczMhHnIWtP0ABavxvVHts9-RqzxiW59qbtv7tgbZ80P0Xbn9NFYNO5FlPtSZJAhe6wT7ywnT65Z38UjtvURSCEvG7dJpU6epMTPdn79Jyvr9rWmwTI7lmFpPDLs4JAP0HggJ1GwP7FNm8Cn-rfp2LnqU0g=w264-h543-s-no" class="tall" alt="Vcarve settings 4" />

After getting everything exported from VCarve, I uploaded it to Easel and homed the machine over my wax block
by setting the X and Y coordinates and using the Z-Probe tool, then it was just a matter of switching the vacuum on and letting it run for a bit!

![Vcarve running](https://lh3.googleusercontent.com/pw/AP1GczOcFJ3wknZiI-mXLTPKg_y3kFnVdKdPz1ME3hoqNxo1Aq1nygqPj8vbv0j9gpF-dKn1MWCuBL-qQn6hxbvlXobzpwDyVA2lzkZm9wQJntoU48J5C7EY8BylQ0hvV3pnBsndsewFXPL4JP4yv3d9YgXIWA=w800-h450-s-no)

<div style="display: grid; grid-auto-flow: column;">
    <div><img src="https://lh3.googleusercontent.com/pw/AP1GczMLDkEEN9v4ETJUeX-qnHZS_gOGbDXGs50NJIHV4gUv4aRZTYnq9t3HVv6pTkjyoIzNhlIJPl4G1AAxvIDBemp2WpBxhBZX7Us4cvs0y-O2Y_r4NSOWO-u6tTvb6Ep6bAfTAi5gGMqIgznVaAJOnVs14w=w1074-h1908-s-no" class='tall' alt='Final result wax block'/>
    </div><div><img src="https://lh3.googleusercontent.com/pw/AP1GczPAlYaT0wpRsqu3NZGcQ0u8n1cfM3ng6x8qwlOaWkuUP0F0-nH_b2zHruN6vpcmESTe4CA1gMBA15tOjsnix5Mi3lHeE9gHQs5joaqnQ5VzK1LaqR3Rg5x_vVTAlB4pyK7pPvE8N39nYzasvcKUAGTV7Q=w1074-h1908-s-no" class="tall" alt="David holding a david wax mold of himself">
</div></div>

### Step 4. Mix the mold and cast it!

Now that the tray tray is ready, we just need to cast it with food safe resin in the fume room to have our final result!
I used the sorta clear 18 for this case.

<img src="https://lh3.googleusercontent.com/pw/AP1GczPlvOXpFdnjYErbyUQPfVJcZGqIYCgsHgixAUX9vgZYbzvSI2mR5I2YuHTVLySTVc755GRIh2K5gCOFvxfN-0FF-fWamvaZRn6Jk-R6xZl6MLTy2UAqsZ1sTSnAJscC4-aWwEDTX9oOlswE_rO1LCYJ7g=w1432-h1908-s-no" class="tall" alt="Mold casting" />
<img src="https://lh3.googleusercontent.com/pw/AP1GczMX1arl164sSW_8uTJnQTzsVdQsRd3aCKZ2ZUmzIn37aqUUpzD10-EjRs7kn-TRy35gTwncvSSuE5jCRTbv9zSL_uRK8airxS8QGMz_iKiaVvfNBS7Ts9-PSa4wkEeXvGnZQaX0t1TK2ZHePSvsQmn2MQ=w1824-h1368-s-no" class="tall" alt="Mold final result" />

After filling the tray with water and leaving it overnight in the fridge, we had our final david ice cube!
Trolling completed successfully.

<div style="display: grid; grid-auto-flow: column;">
    <div><img src="https://lh3.googleusercontent.com/pw/AP1GczM_kBWbg8yifcDsW0zEswSbZ8_8T45bwX22R1mhAR2iyEcEjB7NK67zPP_jWRPpIOb9c7L0BZOzkLW1wKeug8SV6S-Nj0w_bSFxpjN6od3rb9ZUiXWjKLGTSxELI4kbDRHu9BUkDYSOtWtJab03J0EOpA=w1074-h1908-s-no" class='tall' alt='David with his ice cube'/>
    </div><div><img src="https://lh3.googleusercontent.com/pw/AP1GczPHxBJGmTnfezpR7xEuU2KblDR2PhwNbUztWx3gGQ5OvTZNWpe978dvJBqV-ADbRZ81l-ocM9htE3XKyWu_c3uh3KV8tiQ-SLREjOrfPH_TseOi2YeQSSvkfO6LQe3cuyJI40NOvfRkk0UoQZgVHq2pnA=w1074-h1908-s-no" class="tall" alt="David ice cube">
</div></div>

