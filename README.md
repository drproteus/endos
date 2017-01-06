# EndOS

For when you need a comfortable Linux system to develop on, when all else fails.

I've always wanted to put together a live Linux distro since trying out Knoppix back in 2009. Thanks to Arch linux and archiso, it is now a reality.

A few things it comes bundled with:

* XFCE desktop environment, preconfigured with a dark Adwaita theme and ACID window borders.
* Terminology terminal emulator from the enlightenment project. Comes with cool utilities like `tyls` and `tycat` for images in your terminal.
* Zsh with Oh My Zsh.
* Python 2 and 3, virtualenv, and virtualenvwrapper.
* Vim with Powerline, Nerdtree, and a few other plugins (managed with Vundle).
* Chromium with uBlock Origin
* Frozen Bubble, LTris, and SuperTux
* Fortune and Zen koans fortune file. Run `koan` for a Zen koan.

Still working on adding some more things and smoothing out the kinks.

__TODO__

* Reduce startup time.
* Install scripts
* Tor browser bundle
* Firefox with uBlock Origin

### Installation

Grab the iso from [here](http://addlink)

Make sure you have `dd` installed (you probably do).

You can either burn it to a DVD or follow these steps to write it to a bootable USB drive.

* Find the device path using `lsblk`. Use root block device address, ie /dev/sda rather than /dev/sda1
* `dd bs=4M if=/path/to/iso/image.iso of=/device/path status=progress && sync`

Reboot and boot from USB drive. On Mac, hold down Option+O to get the boot menu.


### Building

You can build this image yourself if you're on Arch Linux x86\_64.

Get the archiso utility: `sudo pacman -Sy archiso`

It's recommended to do this as root. `su -`, and clone the repository. 

`cd endos` or wherever you cloned it, `mkdir out`, and `./build.sh -v`. The image will be in `out/` after the build finishes.

For further details, refer to the [archiso wiki](https://wiki.archlinux.org/index.php/archiso)


### Screenshots

![screenshot](https://res.cloudinary.com/dad2230wc/image/upload/csagnqgjpvau2h8sadb2)
![screenshot](https://res.cloudinary.com/dad2230wc/image/upload/agfhe47kgzoauaofd67x)
![screenshot](https://res.cloudinary.com/dad2230wc/image/upload/livlldzmzob1ebyucyyo)
