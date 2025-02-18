---
title: 1.5 - Step Response PCB
description: Touchpads with pressure sensitivity... sort of- KiCad, MakeraCAM, and Soldering
published: true
---

Credits & disclosure: This board was made following
the <a style="font-size: 1em;" target="_blank" href='https://academy.cba.mit.edu/classes/input_devices/'>
hello.steptime</a> board as a guide and firmware base, documented in an MIT class by Neil Garshenfield.

## Step response!

If you flood your circuit with energy, at what rate does it drain? How long does it take to become neutral again?

One round of flooding is known as a step, and the circuit response over time following the flood is the step response.

By creating large padded areas, you can treat circuit board segments like mini-capacitors and use them as
touch-sensors; by default the pads drain slowly through 10M ohm resistors, however if touched through a sheet of paper
the stored energy has an easier time flowing both between pads and out of the circuit. By measuring how much energy
has drained and repeating this flood / drain / measure process rapidly, you can check if a pad is being touched, and how
much energy is draining out of it!

## Hardware

First I configured the board schematic in Ki-Cad, copying the RP240 from a previous board; because it has a
microprocessor for each pin handling data in parallel down the road will be much easier.

After that was ready, I exported the gerber files and ran them through MakeraCAM to create gcode for the Carvera
machine, then soldered the final result.

If you'd like to learn more about this process, I have an article documenting it in depth [here!](/week4)

<img src="https://lh3.googleusercontent.com/pw/AP1GczNgcLrDmT3221pgK9q6sxVddoEwlrm78jdC3dV0aVrFXEC4_UoNBFn2tN8mkLtO4O4bGIa3nE5MCm2Mv43XjUsxAj3oI3upH3hFoNLQ4V_yAsATRfI8U3qtl4M0ALCOLV8lGL6Qy0vpmVe69H5DntKoCw=w306-h558-s-no" class='tall' alt='Step response KiCad board'/>
<br/>
<img src="https://lh3.googleusercontent.com/pw/AP1GczOZwknlfX7jlOA0erNZjpc9wu2u54rRwNZYKwY7MyeJSBykiZ_j19vKRyJJPIzi3CSDvEiVx4MsKMQcV0TwTKmch9gZixMBMaSzdhdIYrsUxTF8lvf76fq2KEV1njfx1Bkrq7PeLanCk2BfMJJgZLO9Mw=w1080-h1920-s-no" class='tall' alt='Final circuit board'/>

## Firmware

Since I was focused on getting a minimal viable product out, I installed [MicroPython](https://micropython.org/) and pulled [firmware](https://academy.cba.mit.edu/classes/input_devices/step/RP2040/hello.steptime1.RP2040) from the original hello.steptime board
 to give it a test. A few of the pins were unresponsive, so I tweaked the settings until I got a working instance.

After that, all I needed was a piece of paper and to open up a serial monitor on my laptop.

## Tada!

<img src="https://lh3.googleusercontent.com/pw/AP1GczOOfbz291LlhCdliMXPtA26WN7DcEGUvHZFb0cAyhfs-58PBQszJ5w_7R0acErDGZBk85Rp2pDkejD_D8bWM2--PUqhBJirDE7bopFL1JAk_BeFlVO_t7rUqALIY4KYN3KVQS9N4hNTGsdCKo2B4wWxQA=w230-h410-s-no" class="tall" alt="Final result being demonstrated on a laptop" />