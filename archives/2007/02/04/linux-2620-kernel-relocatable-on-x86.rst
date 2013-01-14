author: Marcin
disqus_id: 1840e266-7d5a-4707-a5d3-d019b5e7beef
disqus_url: http://www.tssci-security.com/archives/2007/02/04/linux-2620-kernel-relocatable-on-x86/
mod_date: 2007-02-04 21:38:42
parent: 0
post_id: 154
post_type: post
pub_date: 2007-02-04 21:38:42
public: 'yes'
slug: linux-2620-kernel-relocatable-on-x86
tags:
- Tech
- Security
- News
template: post.html
title: Linux 2.6.20 kernel relocatable on x86

Linux 2.6.20 kernel relocatable on x86
######################################

Linus `released <http://lkml.org/lkml/2007/2/4/119>`_ kernel
`v2.6.20 <http://www.kernel.org/pub/linux/kernel/v2.6/linux-2.6.20.tar.bz2>`_
(tar.bz2) to the public today, adding virtualization support through KVM
and relocatable kernel support for x86, among other
`changes <http://www.kernel.org/pub/linux/kernel/v2.6/ChangeLog-2.6.20>`_.
The latter feature is an interesting one from a security perspective and
for kdump users. From the changelog:

    Relocatable kernel support for x86
    This feature (enabled with CONFIG\_RELOCATABLE) isn't very
    noticeable for end-users but it's quite interesting from a kernel
    POV. Until now, it was a requeriment that a i386 kernel was loaded
    at a fixed memory address in order to work, loading it in a
    different place wouldn't work. This feature allows to compile a
    kernel that can be loaded at different 4K-aligned addresses, but
    always below 1 GB, with no runtime overhead. Kdump users (a feature
    introduced in 2.6.13 that it triggers kexec in a kernel crash in
    order to boot a kernel that has been previously loaded at a 'empty'
    address, then runs that kernel, saves the memory where the crashed
    kernel was placed, dumps it in a file and continues booting the
    system) will benefit from this because until now the "rescue kernel"
    need to be compiled with different configuration options in order to
    make it bootable at a different address. With a relocatable kernel,
    the same kernel can be boot at different addresses. (commit 1, 2, 3,
    4)

Basically, kdump users can now use the same kernel to do standard boot
and kexec boot without an additional kernel image. From the security
side of things, you can move the kernel around in memory. Since most
rootkits and exploits rely on static memory addresses, this makes it
more difficult.
