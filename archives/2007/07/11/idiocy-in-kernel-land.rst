author: Casey
disqus_id: 94a8e649-c0e1-4390-ba3f-33a648e8c980
disqus_url: http://www.tssci-security.com/archives/2007/07/11/idiocy-in-kernel-land/
mod_date: 2007-07-11 13:57:41
parent: 0
post_id: 259
post_type: post
pub_date: 2007-07-11 13:57:25
public: 'yes'
slug: idiocy-in-kernel-land
tags:
- linux
- security
template: post.html
title: Idiocy in Kernel Land

Idiocy in Kernel Land
#####################

C'mon guys, what in the hell are you releasing a .1 for just to fix four
lines of code. I realize that an exploit in netfilter could be a serious
issue, but netfilter doesn't belong in the kernel to begin with; it
should be userland code. Grrrr. This is exactly why I have been a
FreeBSD zealot for so long. You don't see FreeBSD posting a new release
to fix one small problem like a null pointer dereferencing issue.

Anyway, go patch your kernels.

`patch-2.6.22.1.bz2 <http://kernel.org/pub/linux/kernel/v2.6/patch-2.6.22.1.bz2>`_
