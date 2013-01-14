author: Marcin
disqus_id: c05db714-a415-4c4a-9e14-bf2118c1a823
disqus_url: http://www.tssci-security.com/archives/2007/04/12/kismet-ipw2200-and-wireless-injection/
mod_date: 2007-04-12 21:58:51
parent: 0
post_id: 199
post_type: post
pub_date: 2007-04-12 21:58:51
public: 'yes'
slug: kismet-ipw2200-and-wireless-injection
tags:
- Linux
- Security
template: post.html
title: Kismet, ipw2200, and wireless injection

Kismet, ipw2200, and wireless injection
#######################################

To get Kismet to run under the ipw2200 driver, simply edit
/etc/kismet/kismet.conf. Here is the ``diff -u`` output:

``--- kismet.conf.orig    2007-04-03 13:51:29.000000000 -0700 +++ kismet.conf 2007-04-03 13:53:55.000000000 -0700 @@ -7,10 +7,10 @@ version=2005.06.R1``

``# Name of server (Purely for organizational purposes) -servername=Kismet +servername=thinker``

``# User to setid to (should be your normal user) -#suiduser=your_user_here +suiduser=marcin``

``# Sources are defined as: # source=sourcetype,interface,name[,initialchannel] @@ -19,7 +19,7 @@ # The initial channel is optional, if hopping is not enabled it can be used # to set the channel the interface listens on. # YOU MUST CHANGE THIS TO BE THE SOURCE YOU WANT TO USE -source=none,none,addme +source=ipw2200,eth1,addme``

``# Comma-separated list of sources to enable.  This is only needed if you defined # multiple sources and only want to enable some of them.  By default, all defined``

I have not gotten wireless injection to work with aircrack-ng or any of
the other wifi tools. I came across this
`thread <http://tinyshell.be/aircrackng/forum/index.php?topic=400.0>`_
which details how to get injection to work using a modified ipw2200
driver. I am using Ubuntu (kill me?) and this
`post <http://ubuntuforums.org/showthread.php?t=342178>`_ might be
helpful as well.. I started following steps without reading them all
first and ended up deleting some ieee80211 modules I had trouble later
tracking down. **Note to self:** backup any files that may get deleted
before attempting anything new.
