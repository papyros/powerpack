Powerpack
=========

Powerpack is the tool that takes Arch packages and builds an OSTree repository
and disk images for a specified Papyros channel.

Currently, there are two sample channels: `gnome`, and `papyros`. The GNOME one
is a simple channel with just the GNOME features installed, for testing OSTree.
The Papyros will eventually be the full Papyros operating system, but currently
only has a few framework packages included.

To build the extra packages not included in the Arch repositories, run:

    ./powerpack/powerpack-build gnome

After building the extra packages, create the operating system structure,
install the necessary packages, and commit it to the OSTree repository by running:

    ./powerpack/powerpack-commit gnome

Now, to create a 5GB disk image for testing, run:

    ./powerpack/powerpack-pack gnome

You can take that IMG file and create a virtualbox harddrive image using:

    VBoxManage convertfromraw -format VDI build/gnome/gnome.img build/gnome/gnome.vdi

Boot your shiny new system and enjoy!
