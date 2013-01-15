author: Marcin
disqus_id: de8cc85c-27ec-425a-8d6b-1d58840b6bd9
disqus_url: http://www.tssci-security.com/archives/2007/03/25/disable-wireless-on-bootup/
mod_date: 2007-03-25 23:51:39
parent: 0
post_id: 188
post_type: post
pub_date: 2007-03-25 23:51:39
public: 'yes'
slug: disable-wireless-on-bootup
tags:
- linux
- security
template: post.html
title: Disable wireless on bootup

Disable wireless on bootup
##########################

While at ShmooCon, I saw a fair share of rogue ap's pretending to be
*shmoocon* ap's. We worked to pull down these access points, but you can
never be sure. To help keep yourself from getting pwned, disable
wireless upon startup by commenting out your wireless interface. This
will prevent anybody from hacking your laptop (via wireless) before you
even see the login screen (if you boot to desktop) and also allow you
time to scan the wireless access points and decide which to connect to.

#begin /etc/network/interfaces

auto lo iface lo inet loopback

iface eth0 inet static address 172.16.2.123 netmask 255.255.255.0
gateway 172.16.2.1 network 172.16.2.0 broadcast 172.16.2.255
nameservers="172.16.4.5 172.16.4.6"

iface eth1 inet dhcp wireless-essid shmoocon

auto eth0 #auto eth1

#end /etc/network/interfaces
