  ___         ____  _ _       ____  _                _
 ( _ )       | __ )(_) |_    / ___|| |__   __ _  ___| | __
 / _ \  _____|  _ \| | __|   \___ \| '_ \ / _` |/ __| |/ /
| (_) ||_____| |_) | | |_     ___) | | | | (_| | (__|   <
 \___/       |____/|_|\__|   |____/|_| |_|\__,_|\___|_|\_\

==============================================================================
TOOL TITLE : DOLORES (Double Lo-Res Library)
TOOL NAME  : dolores
FOLDER     : tool_dolores
==============================================================================

ABOUT
-----
Library that gives Applesoft BASIC programs easy access to the Apple //e
Double Lo-Res graphics mode (80 x 48 pixels, 16 colors) through the &
(ampersand) command. It provides graphics modes on/off, plot, horizontal and
vertical lines, oblique lines, rectangles, circles and discs, flood fill, fast
page copy, mixed mode with four lines of 80-column text, double buffering and,
from version 1.2, sprites. Requires an Apple //e (enhanced or later) with 128K
and an 80-column card. Three versions are included, each with a set of demo
programs.

FILES
-----
DLAMPCORE10c.dsk (version 1.0c), DLAMPCORE11.dsk (version 1.1) and
DOLORES12_2.dsk (version 1.2); all DOS 3.3. Documentation: DOLORES.pdf (the
library manual), demo programs.pdf, Move-Demo.pdf and VLIN-Test.pdf (program
listings and screens), lineplot.mov (video of the line-plotting demo),
kaleidoscope.ASoft (text listing of the Kaleidoscope demo). source/ has one
folder per disk with Applesoft BASIC listings (.bas.txt) and Merlin 6502
source (.s). disk_contents/ has one folder per disk with every file from the
disk image, named NAME#TTAAAA (CiderPress style: type and auxiliary address in
hex). The library itself (DLCOREAMP) is hand-written 6502/65C02 assembly and
is shown as reconstructed Merlin source with generated labels; the demo
programs are Applesoft BASIC. Version 1.2 also contains DLCOREAMP6502, the
library variant for machines without 65C02 opcodes.

ATTRIBUTION
-----------
  * DOLORES library, manual and demo programs: Dr. Marc A. Golombeck.
  * Acknowledged in the manual: Roby Sherman (Crow Cousins) for feedback that
    led to significant improvements, and Daniel Henderson for beta-testing and
    bug fixing.
  * SPRITE.MAKER sprite editor and the Star Wars sprite test programs on the
    version 1.2 disk: Dan Henderson, 2021.
  * BEAGLE BROS TRIBUTE (version 1.2): the listing credits its BEAGLE PRINT
    routine to Roby Sherman.

THIRD-PARTY SOFTWARE / MATERIAL
-------------------------------
  * The sprite files YODA, R2D2 and C3PO on the version 1.2 disk depict
    characters owned by their respective rights holders (Lucasfilm).
  * BEAGLE BROS TRIBUTE is a tribute demo; the Beagle Bros name and style
    belong to their respective owners.
  * Apple DOS 3.3 operating-system files on the disk images belong to Apple
    Computer, Inc.

SOURCE OWNER AND USAGE (RECAP OF THE REPOSITORY README)
-------------------------------------------------------
This tool is part of the 8-Bit Shack "Free Tools" repository
(https://github.com/8-Bit-Shack/8-Bit-Shack-Free-Tools). Source owner: 8-Bit
Shack and its contributors. Copyright (C) 8-Bit Shack and respective
contributors. All rights reserved except as expressly licensed.

Usage (from the repository README): free of charge for personal, educational
and other noncommercial use. You may download and use the tools, study the
techniques and source, experiment with and modify them for personal use, and
share the original tools for noncommercial purposes subject to the license.

If you distribute a modified version you must: (1) keep the original 8-Bit
Shack copyright and attribution notices and individual contributor credits;
(2) clearly mark your modifications; (3) make the complete corresponding
source available; (4) use the same noncommercial license; (5) never present a
modified version as an official 8-Bit Shack release. Private modifications
need not be published.

Commercial use, resale or incorporation into commercial products is prohibited
without prior written authorization from the copyright holders.

License: 8-Bit Shack Noncommercial Source License, Version 1.0 (see LICENSE.md
at the repo root). It applies only to materials identified as covered by it;
third-party components, artwork, music and other materials may carry separate
licensing, and the third-party items listed above are not relicensed by 8-Bit
Shack.

More: https://www.8bitshack.net
