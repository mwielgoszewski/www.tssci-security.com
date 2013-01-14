author: dre
disqus_id: cfd3772a-6d9a-48ad-a211-d249a91a372b
disqus_url: http://www.tssci-security.com/archives/2008/09/23/fun-with-wifu-and-bluesniffing/
mod_date: 2008-09-24 15:26:24
parent: 0
post_id: 431
post_type: post
pub_date: 2008-09-23 21:52:34
public: 'yes'
slug: fun-with-wifu-and-bluesniffing
tags:
- Tech
- Hacking
- Security
template: post.html
title: Fun with WiFu and Bluesniffing

Fun with WiFu and Bluesniffing
##############################

This is just going to be a long list of links with rants. I have taken
up the duty of disseminating information on the latest in WiFi and
Bluetooth penetration-testing for no real reason other than it's on the
tip of my tongue.

First, we have the BackTrack 3 project, which is basically mandatory if
you want to be doing any wireless pen-testing. See if your laptop is
supported:

-  `BackTrack Laptop Compatibility
   List <http://backtrack.offensive-security.com/index.php?title=HCL:Laptops>`_

People like ErrataSec suggest Asus Eee PC, others say Acers, others say
Apple. I have a Thinkpad. Whatever. You have what you have, and you will
probably need to buy additional hardware. I'll get to that in a second.

The only real software that is missing from BackTrack is this new python
code called Pyrit. It's not for pen-testing yet, but it certainly looks
to build on the `Church of WiFi WPA-PSK Rainbow
Tables <http://www.renderlab.net/projects/WPA-tables/>`_ work.

-  `pyrit - *Advancing in attacking
   WPA-PSK* <http://pyrit.googlecode.com>`_

Pyrit uses either the CUDA FPU acceleration and use of NVIDIA GPU's on
their video cards instead of the old standby
`OpenCiphers.org <http://openciphers.org>`_ method of using FPGAs.
Pretty neat stuff. If you can get a `CUDA-enabled mobile
product <http://www.nvidia.com/object/cuda_learn_products.html>`_ in any
future laptop that you buy (minimum 256MB video RAM), then I highly
suggest doing so based on this information.

The aircrack-ng wiki is really coming along. Check out `How to Crack
WPA/WPA2 <http://www.aircrack-ng.org/doku.php?id=cracking_wpa>`_ if you
are confused about the hows and whys of cracking WPA-PSK.

Pyrit also supports acceleration through the VIA Padlock hardware crypto
accelerator found on the VIA C7-M CPUs. There's a lot of motherboards
that support VIA C7-M these days, many which you can find on
`iDotPC.com <http://idotpc.com>`_. I found this cute little laptop
called the `One Mini A110 <http://a110wiki.de/wiki/Main_Page>`_, which
has lots of information dedicated to the VIA Padlock and Linux.

Of course, small is "in" with pen-testing. The ErrataSec guys had the
FedEx iPhone trick at Defcon this year, and now it appears that others
are trying to get into this business with $700-1000 phones. Yes, the
`NeoPwn <http://www.thestandard.com/news/2008/09/22/new-linux-phone-can-pwn-wi-fi>`_
is probably now available and soon to be sold-out, just like those
iPhones.

The `NeoPwn`_ would probably be great for running
aircrack-ng, but it would leave a bit to be desired for running
Karmetasploit with a `Caffe
Latte <http://www.wi-fiplanet.com/tutorials/article.php/10724_3716241_2>`_
twist.

Speaking of Caffe Latte, both the
`airbase-ng <http://www.aircrack-ng.org/doku.php?id=airbase-ng>`_ and
`aireplay-ng <http://www.aircrack-ng.org/doku.php?id=aireplay-ng>`_
tools now support Caffe Latte as well as plenty of other attacks. Many
other commercial tools, such as CommView for WiFi don't even support
half as much as the aircrack-ng tools. Aircrack-ng is quickly becoming
the standard in WiFi and WEP attacks. Offensive-Security (from the
makers of BackTrack) now has a certification and an online course
available called `BackTrack
WiFu <http://www.offensive-security.com/training.php#tab2>`_ that
features the aircrack-ng suite.

-  `[PDF] BackTrack WiFu information and course
   syllabus <http://www.offensive-security.com/documentation/wifu-syllabus.pdf>`_

While I prefer CommView for WiFi for Arp reinjection with Aircrack-ng
GUI for the PTW attack because using them together is stable, easy, and
extremely fast -- I think that
`Wesside-ng <http://www.aircrack-ng.org/doku.php?id=wesside-ng>`_ looks
very promising to automate the same. The problem is that there are so
many one-off scenarios (just check out the PDF above for a short list!).
The great thing about CommView for WiFi is that it's easy for me to
identify what is going on quickly so that I can adjust the attack.
Saving packets 20,000 at a time is annoying, but Wireshark's mergecap
settles the issue for me before cracking with Aircrack-ng GUI with PTW.

The Backtrack WiFu PDF syllabus also mentions Easside-ng, which
implements a very quick fragmentation attack against WEP. The wiki page
compares `Easside-ng to
Wesside-ng <http://www.aircrack-ng.org/doku.php?id=easside-ng#easside-ng_compared_to_wesside-ng>`_,
and you can see that they are very different. It also explains how they
can work well together. I think attacking the AP is less exciting than
attacking the clients (ala Karmetasploit or Caffe Latte), but it's
amazing how far this work has come along.

`Tom
Nicholson <http://nicholsonsecurity.com/2008/09/13/what-security-programs-would-be-on-your-dream-live-cd/#comment-22>`_
of `NicholsonSecurity <http://nicholsonsecurity.com>`_ turned me onto
`Jasager <http://www.digininja.org/jasager/>`_, which is Karma on AP
firmware (and a nice GUI interface to Karma!). It's so hard to find good
access points these days. A few sources are reporting success with the
Asus WL-520GU, but I'll believe it when I see it. I'd rather just go
with a Soekris board or iDotPC running Pyramid Linux or similar.

If you're really going to go out and buy something though, I suggest
investing in CSR-BC4-EXT Bluetooth USB adapters. The Neopwn happens to
come with a CSR-BC4 Bluetooth device (not sure if it is EXT or ROM), but
I don't think this is an accident. `CSR <http://www.csr.com/home.php>`_,
or Cambridge Silicon Radio, has a Bluetooth chipset that happens to be
used by one of the only USB-based HCI sniffer vendors,
`Frontline <http://www.fte.com>`_. `Some reverse
engineers <http://darkircop.org/mailman/listinfo/bt>`_ are apparently
working an open-source implementation for firmware that can perform HCI
sniffing. Until this time, many are `copying the Frontline/FTE Comprobe
firmware <http://www.evilgenius.de/2008/09/04/counter-measurement-of-fte-against-copying-their-bluetooth-sniffer/>`_
onto their `CSR-compatible
Bluetooth <http://bluetoothsecurity.wordpress.com/list-of-bluetooth-hardware-for-hacking-purposes/>`_
USB adapters. It is really difficult to find information about HCI
sniffing! However, Remote-Exploit's Forums have an awesome thread going
on about it (if you have an hour or so to read it -- it's long).

-  BT3 Tutorial: `One bluetooth post to rule them
   all! <http://forums.remote-exploit.org/showthread.php?t=10103>`_

All of the information is contained in this tutorial, but many readers
are frustrated by the disjointed information, further frustrated by
rumors of bricking the hardware. I disagree -- the information is there
in entirety, you just have to read it. There are a few links that I'd
like to post, as it summarizes some (but not ALL) of the information
you'd need to get started. Yes, you really have to read the whole
thread.

-  `Bluetooth sniffing for
   less <http://bluetoothsecurity.wordpress.com/2007/05/12/bluetooth-sniffing-for-less/>`_
   (incomplete article, but some of the comments are quality)
-  `Bluetooth Dongle with CSR chipset and flash or external memory using
   Flash <http://www.evilgenius.de/2007/04/10/bluetooth-dongle-with-csr-chipset-and-flash-or-external-memory-using-flash/>`_
   (also has quality comments)
-  `D-Link DBT-120 C1 USB Bluetooth
   adapter <http://www.newegg.com/Product/Product.aspx?Item=N82E16833127117&Tpk=DBT-120>`_
   -- do not blame me if this doesn't work, but apparently this adapter
   has the CSR chipset with BlueCore 4 and is capable of External/RAM
   (not ROM). It may also be available at Fry's Electronics (in the US).
   See this `D-Link tech
   article <http://www.dlink.com/products/support.asp?pid=34>`_ for more
   details on how to identify the correct revision. It's $16 anyways, so
   no big loss if it doesn't work, right?

The point here is that if you read everything and take it all in, then
Bluetooth penetration-testing is in your future. There are no shortcuts
to the bleeding-edge. However, it is likely to be extremely rewarding. I
somewhat believe the rumors that the pairing exchange could possibly be
reinjected in order to sniff and crack any Bluetooth PIN. This would
mean access to make phone calls, listen in to audio, and have full or
partial access to a Bluetooth-connected device's filesystem with the
speed of access and ease of WEP attacks. If you look at what happened to
WiFi and WEP, there are probably plenty of radio-based as well as
client-side exploits to consider.

After sniffing the Bluetooth pairing exchange, you'll still need to
crack the BT PIN. n.runs provides the `BTcrack
tool <http://www.nruns.com/_en/security_tools_btcrack.php>`_ for this
purpose. `Thierry Zoller's
research <http://secdev.zoller.lu/research/>`_ seems to run in line with
Frontline, Codenomicon, and others -- apparently he's `working on USB
fuzzing <http://blog.zoller.lu/2008/09/usb-fuzzing-and-more-new-project.html>`_
according to his new blog.
