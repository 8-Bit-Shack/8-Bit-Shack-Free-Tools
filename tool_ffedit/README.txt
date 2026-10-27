  ___         ____  _ _       ____  _                _
 ( _ )       | __ )(_) |_    / ___|| |__   __ _  ___| | __
 / _ \  _____|  _ \| | __|   \___ \| '_ \ / _` |/ __| |/ /
| (_) ||_____| |_) | | |_     ___) | | | | (_| | (__|   <
 \___/       |____/|_|\__|   |____/|_| |_|\__,_|\___|_|\_\

==============================================================================
TOOL TITLE : FFedit and FrameAnim (Double Lo-Res frameset tools)
TOOL NAME  : ffedit
FOLDER     : tool_ffedit
==============================================================================

ABOUT
-----
FFedit is a frame editor for building Double Lo-Res animation framesets: draw
with the cursor keys in plot or pen mode, pick colors from a menu, undo, back
up and restore frames, copy and paste areas, preview the animation at six
speeds, and save or load single frames or whole framesets. FrameAnim is the
matching Double Lores frameset animation player with MockingBoard music
support for Applesoft BASIC; its demo plays a five-frame splash animation with
a song. Requires an Apple //e (enhanced or later) with 128K; a MockingBoard is
needed for the music.

FILES
-----
FFedit_1_1.dsk (FFedit 1.1, ProDOS) and FrameAnim_1_00.dsk (FrameAnim 1.00,
ProDOS). Documentation: FFedit Keyboard Commands.pdf (every FFedit key and
menu). source/ has one folder per disk with Applesoft BASIC listings
(.bas.txt) and Merlin 6502 source (.s). disk_contents/ has one folder per disk
with every file from the disk image, named NAME#TTAAAA (CiderPress style: type
and auxiliary address in hex). FFedit (the FRED program), FRAMEANIM, AUXINIT
and the PT3 player AUXPLAY are machine code and are shown as reconstructed
Merlin source with generated labels (AUXPLAY runs in auxiliary memory and is
only partly recovered; the rest is shown as data). The loader and demo
programs are Applesoft BASIC. BURNINGWITCH, SPLASH and DUMMY are frameset
data, and TUNE and SONG are music data, so they have no source.

ATTRIBUTION
-----------
  * FFedit: Dr. Marc A. Golombeck (author of the FFedit keyboard command
    sheet).
  * FrameAnim, the Double Lores Frameset Animation Player with MockingBoard
    support: 8-Bit Shack (credit line in the demo program).

MUSIC
-----
  * TUNE (FFedit disk): ProTracker 3.3 compilation of "LAST WARNING (FOR
    KONEX)" by EA from ANTARES, 28 June 1998.
  * SONG (FrameAnim disk): Vortex Tracker II 1.0 module "Time Wake Up..." by
    MmcM^Sa9e.
  * PT3 music player: AUXPLAY.

THIRD-PARTY SOFTWARE / MATERIAL
-------------------------------
  * Apple ProDOS operating-system files on the disk images belong to Apple
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
