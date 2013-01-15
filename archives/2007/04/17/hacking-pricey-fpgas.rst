author: Marcin
disqus_id: 1b66231e-69db-48da-aab1-e0b41c48816f
disqus_url: http://www.tssci-security.com/archives/2007/04/17/hacking-pricey-fpgas/
mod_date: 2007-04-17 09:44:45
parent: 0
post_id: 202
post_type: post
pub_date: 2007-04-17 09:44:00
public: 'yes'
slug: hacking-pricey-fpgas
tags:
- tech
- security
template: post.html
title: Hacking pricey FPGAs

Hacking pricey FPGAs
####################

h1kari, not long ago at `ShmooCon 2007,
presented <http://www.shmoocon.org/2007/videos/Hacking%20the%20Airwaves%20with%20FPGAs%20-%20h1kari.mp4>`_
(\*.mp4) his custom `Field-programmable gate
array <http://en.wikipedia.org/wiki/FPGA>`_ optimized for cracking WEP
and WPA encryption. It performed in some cases over 400% faster than a
Pentium 4 or Athlon64. The reason why the chip performs so remarkably
well is because it has been optimized for such calculations and is a
dedicated to cracking crypto. Dedicated hardware will (in most cases)
always perform faster than a computer CPU, which has to share its
resources among many processes concurrently.

Many people at the conference were very enticed about purchasing such
hardware, which came in a PCMCIA card and could be plugged directly into
a laptop. The crowd let out a sigh of disappointment when h1kari
mentioned the cost... The price? $2000. Why? FPGAs are basically
prototyping equipment. They can be reprogrammed numerous (infinite)
times. It is however, much more expensive than a single, bulk
manufactured integrated circuit. Ryan Clarke suggested and asked h1kari
if he had considered moving to an integrated circuit. The thought
probably never crossed his mind. With an integrated circuit, you don't
have as much flexibility (if at all) to re-programming [read: updating]
its functions, but is generally faster and also consumes less power. If
h1kari can secure an initial investment (most expensive phase) for at
least one thousand chips (which he surely could), he can possibly reduce
the cost to ~$200 each, or even less. I'm sure many people (including
myself) would be willing to pay that amount.
