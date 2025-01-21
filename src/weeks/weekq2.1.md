---
title: 2.1 - Record Rack
description: What goes around... CAD, Wood carving, and exporting 3D models to 2D vectors for laser cutting or CNC
published: true
---

You spin me right round baby right round...

My roommate substantially expanded her record collection this quarter, so I decided to build a new record shelf and shoe
rack
to organize our shoes and records in one go. Here's how that went!

[//]: # (Cropped sketch)

Starting off I was a bit too confident with estimated dimensions which resulted in the shelf being a little too large...
A lesson learned the hard way is a lesson never forgotten

![Extra large record shelf](https://lh3.googleusercontent.com/pw/AP1GczMXioodO-DNXSwntlGfGLMO8wATz8oduRPssjyM6ckyAnFybdeZq2aSHYdX_3bQxaoVy0UCEiTYt5IxnKIL_DXnohDnn8EEf9qkEoZevPku49H8WUTGsBx8Rx3T40mlSk4oveazLdVzYVob3w0j6pg60g=w1330-h748-s-no)

Starting a second try, I texted my roommate asking her to exactly measure the space we had available, and then worked in
CAD to create sketches from there.

[//]: # (Cad gif)

The only new / notable components of the project are the angled gaps for the upper shelves, and the dog bones (corner
holes) added to compensate for drill bits leaving rounded edges, preventing 90 degree pieces from fitting together by
default.

Creating the angles wasn't particularly difficult, but did require deleting default constraints to add in 45 and 90
degree constraints, creating a rotated rectangular cut.
After that, things worked as normal, adding in position and side length constraints.

After finishing the model in FreeCAD, I swapped over to the drafting workspace and used the shape 2d view feature
to convert the 3d shapes into orthographic 2D shapes and then exported them as Autodesk .drf files, which can then be
converted to GCode using an application on the wood shop computer located next to the ShopBot.

**Things to remember**

1. Add tabs! At least three, if not four or five per piece to stop it from coming loose during the cutting process
2. Set the cutting direction to conventional, the result might be less smooth than climb milling, but you're less likely
   to run into machining issues and backlash.
3. Make sure the board is flat and properly secured before cutting.
3. **ALWAYS TURN ON THE SHOP AIR FILTRATION, AND MACHINE DUST COLLECTION SYSTEMS!** The remote is located on the left shelf setup facing the wood shop, with a holder for the filter remote located closest to the IRL entrance. The sensor for the remote is located on the side of the machine facing away from the wood shop, so you might need to walk around or bend to aim the remote.
4. PPE! Hearing protection, goggles, and gloves to protect you against splinters. 

![ShopBot operating](https://lh3.googleusercontent.com/pw/AP1GczNoL9I-9JiPMwhRaI87FzbZg0ZvDaEvdc0Jz997apLC2ZYtDflaYGGgmU0ZGU1hUMDUdNG5PZHd5sJ5F_rjP7Ib74NXbtleR_jA4PheVtQafzka5HgKoPiwE8mNnlqkiDSENySlfFEfyxL44LgfpqBt1Q=w1404-h790-s-no)
![ShopBot finished](https://lh3.googleusercontent.com/pw/AP1GczP5RCB19KZBrkzXTCPJNDhEWIOzySu7A2lT--xQa7CThRglvpBXMESyubS2sd5bqb-4l7MLwLq4s_s-8kgAY1cJj-bZ9WJIOIzVCnHppbbG10QKAGoUYfvyfQBtr1mVar2BLB89LPhL4BBpUJY4lRZHhQ=w1404-h790-s-no)

With the model cut and ready to assemble, I sanded it down before putting it together to ensure the pieces fit- which they did!

Last step, getting them back to the dorm. So at 11:15pm on a Tuesday, Alisa and Emmy helped me cary the pieces back to Lincoln Park on the Red Line, and with that the project was finally done.

[//]: # (final image)

Minus paint. It needs paint so badly. We'll worry about that another time.