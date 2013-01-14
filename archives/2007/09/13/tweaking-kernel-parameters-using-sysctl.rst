author: Casey
disqus_id: cf8b6aae-2a69-4aba-8fec-35a80e855970
disqus_url: http://www.tssci-security.com/archives/2007/09/13/tweaking-kernel-parameters-using-sysctl/
mod_date: 2007-09-13 11:03:35
parent: 0
post_id: 302
post_type: post
pub_date: 2007-09-13 11:03:35
public: 'yes'
slug: tweaking-kernel-parameters-using-sysctl
tags:
- Apple
- Security
template: post.html
title: Tweaking kernel parameters using sysctl

Tweaking kernel parameters using sysctl
#######################################

Over the last few years I have been finding ways to tweak my FreeBSD
systems for better security and performance. One of the techniques that
I used most often was `tweaking kernel parameters using
sysctl. <http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/configtuning-sysctl.html>`_
As you may have known from previous posts I am now an OS X fanboy.
Sysctl parameters for the most part, are the same on OS X as on FreeBSD.
This post will detail a few of my favorite sysctl tweaks to make. These
will work on both FreeBSD and OS X (as well as any other system that is
BSD-based since BSD4.4). Note: these settings are not terribly useful
for single-user systems and are generally used for multi-user systems
with high levels of utilization.

This will drop all TCP packets that are received on a CLOSED port and
not reply. Note, that if you enable this you won't be able to traceroute
to or from your system.

``net.inet.tcp.blackhole=2 net.inet.udp.blackhole=1``

Spoofed packets that utilize random source addresses cause the kernel to
generate a temporary cached route in the routing table. These temporary
routes usually timeout in 1600 seconds or less. Setting this to 2
seconds allows the kernel to react quicker to attacks. Never set this
value to 0 however, or you will be presented with a system that does not
work properly.

``net.inet.ip.rtexpire=2 net.inet.ip.rtminexpire=2 net.inet.ip.rtmaxcache=256``

This guarantees that dead TCP connections are recognized and torn down.
Not really a security setting, but very helpful.

``net.inet.tcp.always_keepalive=1``

Randomize process ID numbers:

``kern.randompid=348``

When you start an application such as Apache or MySQL, the command line
arguments that you passed the program will show in *ps* and *top*
output. I personally prefer that these arguments not be viewable by
users in ps output so I disable them.

``kern.ps_argsopen=0``

These are not the only parameters that can be modified using sysctl. For
more information read the sysctl documentation for your operating
system. You will probably find that sysctl parameters are not well
documented and I encourage you to setup a testing system for
experimentation.
