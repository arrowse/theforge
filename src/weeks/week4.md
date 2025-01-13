---
title: Week 4 - Switch PCB
description: A complete guide to the Makera Carvera, MakeraCAM, and Carvera Controller.
published: true
---

We are NOT getting out of the lab with this one...

Over the last week from Friday, September 27th, to today, Friday, October 4th,
I have been milling PCBs day in and out, with ~~seven~~ eight total attempts as of writing
this article. All have failed in unique ways, leading me to read the documentation
and run various unit tests on the failed boards. This article will cover full preparation
and operation of the Carvera CNC machine, and ways to avoid common errors.

After detailing the process of using the machine, I'll go into my attempts and why they failed.

As a brief overview, there are five main steps to making a PCB.

1. Cut the traces and pads, the skeleton of your PCB
2. Apply a layer of solder mask (protective layer) and cure the entire board
3. Apply a second layer of solder mask to make a silkscreen (decorative layer) by selectively curing it using the UV
   laser on the Carvera.
4. Wipe off excess uncured silkscreen solder mask, then use the pad scrapper to clear off pads
5. Drill vias (holes) and cut the board's outline to free it.

You will first want to create a board model, then create GCode instructions for the Carvera to follow. You can complete
these steps in KiCad and MakeraCAM.

### Ki-Cad tips

* From the main menu, you can click "image to bitmap converter" to create custom paths you can add to your PCBs. The
  parts you want to keep should be **black,** whitespace will be ignored / removed.
* Use the "properties" tab, represented with the wrench and screwdriver from within the PCB editor to precisely align
  shapes
* When exporting, make sure drilling is set to "absolute" (not Drill origin) and "millimeters" (not inches).
* Export gerber (.gbr) files to use in MakeraCAM.

## Preparing G-Code files

For the Carvera machine to understand or work with your schematics, you'll need to create paths for it to trace in the
form of G-Code. Thankfully, MakeraCAM handles that quickly and easily.

Traces are the main conductors of your circuit and pads are the end points of your traces to which you can connect
parts.
You'll handle these first, so here's how you start!

1. Open MakeraCAM and import _all_ of your gerber files. To start, you'll want to select the F.Cu (front copper) layer,
   then click "vector contour" from the dropdown, which cuts out everything _around_ a shape.
2. Your maximum depth **must** disconnect your traces from other copper segments to stop it from shorting. For this
   project, I used an end depth of 0.6mm with the 0.2mm 30° engraving tool, and enabled ramping.
3. (optional but highly recommended if you're planning on adding a silkscreen) Calculate offsets - Use the create
   graphic menu (which looks like a 3D cube) to add a circle or rectangle away from your work area set to be cut with
   the same vector settings. Usually after re-focusing the UV laser, the laser beam will be misaligned from where the
   Carvera thinks it is, thus we will later use this extra marking by curing a silkscreen around it to figure out the
   gap between the drill and laser.

![Vector cut dropdown](https://lh3.googleusercontent.com/pw/AP1GczOIHkpVCmRKSH_fwlSwv_VF6FZ7DZB_Y3FFpSnSfPa3dkgZa1B9ME9j5Fz_ciwEAEml5wk54FNfpe-KTscDb76M12ZOs5QvizyuRaC15-hQhnD8dkvx-hHZin6ahWS5r83vkm9xO55HMsEFtRh7pcOnOQ=w1370-h778-s-no)

4. To set up pads, select the F_cu.gbr_pad layer and add a vector pocket operation from the same menu, then set the end
   depth to 0.2mm with the same 30° engraving tool to ensure only the top layer of copper is removed.

**If you want to keep your board simple, follow steps 5-7 to finish preparing files! To add a soldermask and silkscreen,
skip step 6 and follow steps 5 & 7 to export your first of three jobs.**

If you **don't** plan on adding a soldermask or silkscreen, you can drill vias (holes) and cut your board out here.

5. Select your drill files and add in drilling operations for each one with the 0.8 corn bit, set the end
   depths to 1.8 (the thickness of your board plus a tad bit extra) and enable ramping. Set a return / pull-back distance to about 0.2 mm to ensure a smooth drilling operation.

6. Select the Edge_Cuts layer and add a new contour operation with the 0.8 corn bit, set to 1.8mm, or a value
   greater than the thickness of the
   copper plate you're using should you use a non-standard plate.

7. Select your operations and export them as a g-code file for the carvera machine to follow, import them through the
   Carvera Controller app by connecting to the machine via WiFi or USB, then select the machine from the dropdown
   labeled 'disconnected.' Select your machine, then click the file icon at the bottom left, upload, and navigate to
   your file. Once uploaded, go back to leave the upload menu, and select your job from the machine. Set your work
   origin to (0,0), enable auto-leveling with a 4x4 plane of points, and you're done setting up the software!

## Preparing materials

1. Place a piece of spoiler board (scrap wood) on the work area, if you drill through anything it's better to NOT hit
   the machine
2. **Add double-sided tape** to the board to hold your PCB down as it's cut, later in the process it can move around
   **leading to misaligned cuts.**
3. Place a piece of copper on top, press it down to secure it, ensure it's lined up with the bottom left corner of the
   machine, and then screw it down
   with the Carvera kit, which includes screwdriver ahd various screws. Inside the Carvera kit, the largest screws are
   on the bottom, while the smallest are on the top.

![Carvera Equipment Shelf](https://lh3.googleusercontent.com/pw/AP1GczNiV7_dEaGWINQ6cJJ78ZEY5dsuYicUwQeOBv3SjYHKpCB6zMsQuubJ_49WnxeBOqaJ5mZEkaGiNlf9_aUe_XwnlP4C1l1NkzClWnfVMd4Vook2GwY9PqDk_9fw47qI7aPOxDOi0UgkFqtZVkaKVdbLUg=w1882-h1058-s-no)
![Equipment Box layout w/ screws shown](https://lh3.googleusercontent.com/pw/AP1GczO8ojtUYDDNTPFKPGuJzR0K_eF9i0DY4XNNtrgQhRgyrQjMMe0lUdaUxHsOC71TTgRya-vzsS1aUSJMxh_IMllZ4OhMgTsST1gIiOGML2mi2XCq5z8wkXmDrfVCH5yVJuLL4JTh-ESylfhoQlwDgt_ATA=w1882-h1058-s-no)
![Spoiler board location](https://lh3.googleusercontent.com/pw/AP1GczOaoMSXczQgow4x8XkhnpvZCPKqAgr96s-cxVxK3-t7WedQ4VcjASTkMOZh11K1N7UVlK1LdsKqu71djMz-sibah1KvVVrfLqa7l8GIjkG0Wy2dSubxR2yVR44Pzu8kWrk4VEVmCgc6QMAFnh55UOtf5A=w1882-h1058-s-no)
![Spoiler board in Carvera](https://lh3.googleusercontent.com/pw/AP1GczNZu0auOhpkz6qHhS8SjheiQrlkXA0NTxf0ADZUjHbbyo9tZXx_JodEdQKH1LvIVmnDK_vIxJXTrUOkUhwHp9RIuz3FPA-G11JCiztFjTA9SCvAXd9yONqhDXPnNSi2nJqqNbh6jQ5J7S4M_VeJaNm5sg=w1882-h1058-s-no)
![Board with copper in carvera secured](https://lh3.googleusercontent.com/pw/AP1GczMb0ZKaSKKYS4LdzxjpC4nK14-PNoMkhyp5TW2nGN0KETxU1k3sy4Kf2UyxjErwssUCGxzD0cLzfQwZ3JaZ2Hmdh4YbV2hfTeX__z5QP4rEdc_0odeyEMnTSmGDqiF2pT0GQX3XB2U6Qinc9nEWssgHTQ=w1882-h1058-s-no)

4. Add mounting brackets and tighten them, along with the two insert screw slots in an L bracket to secure your board.
   You're ready to start cutting!

**If you are not adding a silkscreen or soldermask, once the machine finishes running you'll be all done with milling
your PCB! For everyone else, continue following this guide.**

## Soldermask

A soldermask paint layer is non-conductive and helps protect your board from the elements, while adding ✨ style ✨.
Adding one is easy and comes with quite a few benefits, all you'll need
is a soldermask paint syringe, which are in the Carvera tool kit provided in blue, green, red, and white with a UV
curing lamp.
Grab some paper towels, isopropyl alcohol, and the paint roller in the Carvera kit. You're ready to go!

1. Roll on a layer of your preferred color, keep in mind it is recommended to use a darker color as a few people had
   issues in the past curing an all white soldermask.
2. Place the UV Lamp on top of it and cure it for 15 minutes, you can plug the lamp's USB cable into the port on the
   right side of the Carvera.

## Silkscreen

The silkscreen on its own is mostly straightforward, after your solder mask is done, add another layer of PCB masking
paint
and cover your board. Add a UV Vector job in MakeraCAM and set the power between 7 and 12 for white (depending on how
strong / thin
your lines need to be, I recommend 10 as a baseline) and set closed items, e.g. circles with two rings to fill. By
default, Ki Cad assumes you will want to fill the outer perimeters of your shapes and exports them with two outlines.
Sections in white-ish light gray will be filled, while slightly darker gray will not. It can be hard to see at first, so
I recommend zooming in. If you encounter an overlapping shape error, change that shape (or everything if you aren't
feeling like debugging) to line.

### Focusing the UV laser

**Before you start your laser job** on the Carvera, you'll need to put on the Red UV goggles located by the larger laser
cutter in a tool box labeled "Laser safety goggles." Then, open the Carvera, take off the lens cap on the machine head,
and using the controller app move it over to a darker surface where you will be able to see the laser easier. You can
open the manual controls by clicking the arrow button on the far right edge of the app. Lower the machine head, then set
laser to "on" and test to "on". With the UV laser on at 1% power, you can turn the lens ring to focus the laser, which
should appear as a single point when properly calibrated.

Lastly, the laser will usually be at an angle and thus be slightly offset. I have calculated the offsets for both
machines at the time I used them. **Please note this is subject to change over time.**

- For the Carvera machine ending in 41 (right): Workspace offset of -0.6 on the X axis and +1.8 on the Y axis.
- For the Carvera machine ending in 39 (left): Workspace offset of -0.5 on the X axis and +1.0 on the Y axis.

### Calculate your own silkscreen offset for the laser

1. Add new contour and UV cure outline jobs to a shape outside the perimeter of your board.
2. Export, upload, and run the contour operation (if you didn't add in a spare shape earlier), then wipe the area clean.
2. Apply solder mask of your preferred silkscreen color around and over your test mark.
2. Export the file, import it, and upload it to the Carvera. Make sure you have the same work origin as what you started
   with.
3. After running your test, wipe away the excess silkscreen using isopropyl alcohol and use your preferred measuring
   tool to determine the X and Y difference between where the silkscreen _should be_ and where it _is._

**Note:** You do NOT need to redo any of your files! Just change the work origin on the machine when starting your UV
curing job by setting the X and Y accordingly, and the Carvera will offset the path for you. Make sure you undo your
offset adjustments after to avoid misalignment carving your pads and edge cut!

### Last thing!

Now that your soldermask and silkscreen are cured, wipe your board clean once again with isopropyl, and pull up
MakeraCam.
Create a new vector pocket operation with the pad scrape tool and set the end depth to 0.3mm with ramping enabled to ensure just the
paint
is removed keeping the pads in-tact.
You should now be all set and ready to solder your parts on! Congrats!

![Final board](https://lh3.googleusercontent.com/pw/AP1GczMUcjPiwhthprKA-EIosKDbTtnB9YTmdy14jGqinduMzPcNTtIBTFQHD9NMKToMZpULdSbA3W7A96ik9rq8pqekcD19mKHQpKHm0-h3RiuQHwhQxVhCEiFcFgrOQHwmF7D66122UF6QmMHMXfEO70tEjw=w1512-h850-s-no)
![All boards](https://lh3.googleusercontent.com/pw/AP1GczOWSFJZUKM4u4x2gVDK0SH_g9dJiA55KUoV0kVzrvjDB_xvwFqG5Wmw_58UXvZY87jrYVZu9Ucky-VqfeSPdvy_QAFNZmiaWTJ6It2vi5SXzg214c0liEPvUowDcR9GUoEvsvjkvNQlAzYj9gCFtyssHw=w1512-h850-s-no)
![Final Board with soldering displaying three LEDs powered on.](https://lh3.googleusercontent.com/pw/AP1GczOl50h5MJ8EY1vIYXCs-hGBxFFMz5CxpWmCKdDzCEXbk-gBjUGCOw-YTzRmTwdiWekjn5CLbsFpv77gelKBvTjV5tPTRkJOvoA_sKDneWo48SNMnumsmv5IrUY-H-aVSe3NTPo7F536EbmZ_4QQ5ayG6g=w1080-h1920-s-no)
But one thing remains... At the beginning I promised to show all the ways things went wrong, so here they are.

## Random things to know about
If you run into an error trying to drop a bit, it's because someone moved a bit into the slot it picked the last one up from. 
Imagine your friend has a cup of coffee on a table, asks you to hold it for a second, and then makes the table vanish. Where do you put it?

To fix this error, take the extra bit out of the slot it's trying to drop the original bit into, and then use the carvera controller to drop it.

## whoops (the series)

1. Silkscreen was misaligned, pads were only half scraped, and the drill holes were randomly out of place
2. I forgot to remove the UV laser lens cap causing it to paint thick blotches rather than thin lines
3. I remembered to take the cap off this time, but the silkscreen lines were still a bit thick. At this point, I didn't
   want to use too many resources, so I was content to solder it until Alisa decided to check our boards for shorts. It
   was
   at this time that I learned _every board_ I had made up to this point was shorted to ground due to the drill not
   cutting
   deep enough to disconnect the copper.
4. I decided to use the right Carvera machine (--41). It ate my pads and drilled through the board. Whoops.
5. I decided to use the same Carvera machine again but adjust the pad scrape settings. This did not fix the problem.
6. I changed my approach to the silkscreen and read the documentation on focusing the laser and running pad scrape
   operations,
   resulting in clean, perfectly legible lines. I worked to align everything, and at first it was looking like it was
   going to
   come out well... until the machine started drilling through all the way on the later pads (I was too late to save
   them)
7. To save copper I used the same sheet I milled my first board on, but the silkscreen was barely misaligned... I was so
   close...
8. I used another board I had already cut once and then ran tests on, focused the laser, double and triple checked my
   settings,
   and used the left Carvera machine (--39)... The UV curing job finished, I jumped for joy when I wiped the excess
   paste off
   the board to reveal perfectly legible, aligned lines on my board, which was properly isolated, not shorted, and ready
   to solder

This has been a long two and a half week journey with friends, triumphs and loses, I'm so glad to have learned about
this class and been given the opportunity to participate; I'm looking forward to sharing this journey with others and
discovering new
facets of engineering!

### Post Script

I botched the soldering job smh