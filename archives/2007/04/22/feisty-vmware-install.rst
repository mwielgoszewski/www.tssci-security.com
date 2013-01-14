author: Marcin
disqus_id: b19f3598-5712-4fbe-93d9-a95308a42601
disqus_url: http://www.tssci-security.com/archives/2007/04/22/feisty-vmware-install/
mod_date: 2007-05-25 12:52:09
parent: 0
post_id: 211
post_type: post
pub_date: 2007-04-22 19:18:52
public: 'yes'
slug: feisty-vmware-install
tags:
- Linux
template: post.html
title: Feisty VMware install

Feisty VMware install
#####################

Installing VMware Server is pretty straight-forward on Ubuntu 7.04
(Feisty Fawn). Make sure you have the ``build-essential`` package and
the correct linux-headers for your kernel.

``$ sudo apt-get install build-essential linux-headers-`uname -r```

Download VMware and extract the contents to vmware-server-distrib. Run
the installation script and read through it all. I ended up just saying
'yes' throughout the entire script

``$ sudo ./vmware-server-distrib/vmware-install.pl``

I encountered a little problem compiling the vmmon module while
installing VMware Server on Ubuntu Feisty Fawn (7.04). At some point,
the install script will ask you if you'd like to run
``/usr/bin/vmware-config.pl`` automatically. I did and I ran into a
problem while compiling the vmmon modules:

``What is the location of the directory of C header files that match your running kernel? [/lib/modules/2.6.20-14-386/build/include]``

``Extracting the sources of the vmmon module.``

``Building the vmmon module.``

``Using 2.6.x kernel build system. make: Entering directory `/tmp/vmware-config0/vmmon-only' make -C /lib/modules/2.6.20-14-386/build/include/.. SUBDIRS=$PWD SRCROOT=$PWD/. modules make[1]: Entering directory `/usr/src/linux-headers-2.6.20-14-386' CC [M]  /tmp/vmware-config0/vmmon-only/linux/driver.o In file included from /tmp/vmware-config0/vmmon-only/linux/driver.c:80: /tmp/vmware-config0/vmmon-only/./include/compat_kernel.h:21: error: expected declaration specifiers or �€˜...�€™ before �€˜compat_exit�€™ /tmp/vmware-config0/vmmon-only/./include/compat_kernel.h:21: error: expected declaration specifiers or �€˜...�€™ before �€˜exit_code�€™ /tmp/vmware-config0/vmmon-only/./include/compat_kernel.h:21: warning: type defaults to �€˜int�€™ in declaration of �€˜_syscall1�€™ make[2]: *** [/tmp/vmware-config0/vmmon-only/linux/driver.o] Error 1 make[1]: *** [_module_/tmp/vmware-config0/vmmon-only] Error 2 make[1]: Leaving directory `/usr/src/linux-headers-2.6.20-14-386' make: *** [vmmon.ko] Error 2 make: Leaving directory `/tmp/vmware-config0/vmmon-only' Unable to build the vmmon module.``

If you experience this exact problem, download
`vmnet.tar <http://www.tssci-security.com/blog/wp-content/uploads/2007/04/vmnet.tar>`_
and
`vmmon.tar <http://www.tssci-security.com/blog/wp-content/uploads/2007/04/vmmon.tar>`_
and place them (do not extract their contents!) in
``/usr/lib/vmware/modules/source/``.

After doing so, re-run the config script and you should not have any
more problems.

``$ sudo /usr/bin/vmware-config.pl``

``What is the location of the directory of C header files that match your running kernel? [/lib/modules/2.6.20-14-386/build/include]``

``Extracting the sources of the vmmon module.``

``Building the vmmon module.``

``Using 2.6.x kernel build system. make: Entering directory `/tmp/vmware-config2/vmmon-only' make -C /lib/modules/2.6.20-14-386/build/include/.. SUBDIRS=$PWD SRCROOT=$PWD/. modules make[1]: Entering directory `/usr/src/linux-headers-2.6.20-14-386' CC [M]  /tmp/vmware-config2/vmmon-only/linux/driver.o CC [M]  /tmp/vmware-config2/vmmon-only/linux/hostif.o CC [M]  /tmp/vmware-config2/vmmon-only/common/cpuid.o CC [M]  /tmp/vmware-config2/vmmon-only/common/hash.o CC [M]  /tmp/vmware-config2/vmmon-only/common/memtrack.o CC [M]  /tmp/vmware-config2/vmmon-only/common/phystrack.o CC [M]  /tmp/vmware-config2/vmmon-only/common/task.o CC [M]  /tmp/vmware-config2/vmmon-only/common/vmx86.o CC [M]  /tmp/vmware-config2/vmmon-only/vmcore/moduleloop.o LD [M]  /tmp/vmware-config2/vmmon-only/vmmon.o Building modules, stage 2. MODPOST 1 modules CC      /tmp/vmware-config2/vmmon-only/vmmon.mod.o LD [M]  /tmp/vmware-config2/vmmon-only/vmmon.ko make[1]: Leaving directory `/usr/src/linux-headers-2.6.20-14-386' cp -f vmmon.ko ./../vmmon.o make: Leaving directory `/tmp/vmware-config2/vmmon-only' The module loads perfectly in the running kernel.``

Finish up configuration and you're good to go. To start VMware, simply
run ``vmware`` from the command line or from Applications > System Tools
> VMware Server Console.
