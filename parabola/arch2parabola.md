# Why Switching from Arch to Parabola
First I would like to point out that I have no problem with Arch,
I do not dislike it.
But Arch like any other Linux distribution suffers from a few issues.
Mostly free software. By free I don't just mean open source,
but really free as described
[here](https://www.fsf.org/about/what-is-free-software)
Parabola and the Linux-libre Kernel will help you ensure that you have free,
non bloated software.


## What you need to do BEFORE beginning to switch. 

Parabola doesn't tolerate any non free packages, this includes drivers.
For example your GPU might be unusable due to it's drivers being closed.
Sometime it can be worse your Network Card Driver might require a closed driver
and it will be deleted when you switch.
You can install a wifi adaptater that has open source drivers,
but for that you need drivers that need to be downloaded
and you need a connection to do so.
So without a connection you might end up stuck
and forced to reinstall an OS from scratch.
Therefore I would urge you to check what hardware
you are using with the command,inxi -Fxz, F to have the detailed output,
x output up to 3 x's and z for to filter unique information.
And once you have the list check
[here with the list of hardware that have free drivers](https://h-node.org/hardware/catalogue/en)


## Beginning the switch

1. Most of the commands that we will do require to have root access
so first do a little su/

2. Then check if everything is up to do with pacman -Syu

3. Temporarily disable file signature verification in /etc/pacman.conf
to do that change

```
- RemoteFileSigLevel = Required
+ RemoteFileSigLevel = Never
```

4. Add the new mirrors list that parabola uses with:

```
pacman -U https://www.parabola.nu/packages/core/i686/archlinux32-keyring-transition/download/
pacman -U https://www.parabola.nu/packages/libre/x86_64/parabola-keyring/download
pacman -U https://www.parabola.nu/packages/libre/x86_64/pacman-mirrorlist/download
```

5. Restore the verfication of the signature by changing the same line to:

```
- RemoteFileSigLevel = Required 
+ RemoteFileSigLevel = DatabaseOptional
```

6. Rename the new mirrorlist

```
mv /etc/pacman.d/mirrorlist.pacnew /etc/pacman.d/mirrorlist
```

7. Replace your pacman.conf file with the default parabola one.
You can have it by doing

```
mv /etc/pacman.conf /etc/pacman.conf.bk
curl https://git.parabola.nu/abslibre.git/plain/libre/pacman/pacman.conf.$(uname -m) -o /etc/pacman.conf
```

8. In `/etc/pacman.conf`, comment the last line.
uncomment the following line

```
prism: Every program who can catch your data
systemd: no libre. It's will be replace by openrc

[nonprism]
Include = /etc/pacman.d/mirrorlist

[nonsystemd]
Include = /etc/pacman.d/mirrorlist

[libre]
Include = /etc/pacman.d/mirrorlist

[kernels]
Include = /etc/pacman.d/mirrorlist

[nonprism-multilib]
Include = /etc/pacman.d/mirrorlist

[nonsystemd-multilib]
Include = /etc/pacman.d/mirrorlist

[libre-multilib]
Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist
```

be sure that the Libre repo is uncommented.
If you want to move away from systemd uncomment every nonsystemd repo 
also uncomment the nonprism repo to maximize your privacy. 

9. Clear the cache and refresh the DB of pacman with:

```
pacman -Scc
pacman -Syy
```  

btw now add each time we'll dl a package do it with the -Suu to upgrade/downgrade
your packages to the lastest version supported by Parabola.

10. update the keyring and install the packet your-freedom

```
pacman-key --refresh
pacman -S your-freedom
pacman -S your-privacy
```

This package it's a black list of non-free packages.

this packet will remove any non free software and propose if it exist a replacement,
it will change your kernel so if you want a specific one be sure to precise it. 

11. if you want to move to openrc also install

```
pacman -S libelogind udev-init-scripts
pacman -Syu your-initfreedom elogind udev-init-scripts openrc
```
those are needed to still use software that was originally made for systemd.
the your-freedom package will make sure that elogind doesn't come with systemd.

12. Install the your-privacy package to make sure that no package would see your data etc...
it'll behave like the your-freedom packages.

13. now you technically have switched to parabola os as neofetch will tell you. 

13. now to purge any remaining non free package a pacman -Q --foreign will remove them.

14. Regenerate or (if you use switched the bootloader) create their config file.

15. Reboot and it's done your now a fellow Linux-libre user. 
