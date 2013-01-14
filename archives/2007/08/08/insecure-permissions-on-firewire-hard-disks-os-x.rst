author: Casey
disqus_id: e773ac7b-0567-440e-bbfe-94810ba6729b
disqus_url: http://www.tssci-security.com/archives/2007/08/08/insecure-permissions-on-firewire-hard-disks-os-x/
mod_date: 2007-08-08 09:16:53
parent: 0
post_id: 272
post_type: post
pub_date: 2007-08-08 09:16:53
public: 'yes'
slug: insecure-permissions-on-firewire-hard-disks-os-x
tags:
- Apple
- Security
template: post.html
title: Insecure Permissions on Firewire Hard Disks - OS X

Insecure Permissions on Firewire Hard Disks - OS X
##################################################

When you mount a firewire hard disk under OS X it will mount with the
'Ignore ownership on this volume' option set. What this means is that
owner information and file permissions will be ignored. Apple does this
so that you can share a disk across multiple systems that may not have
the same users on the system; however, from a security standpoint it can
create some major problems.

`|firewire.png| <http://www.tssci-security.com/blog/wp-content/uploads/2007/08/firewire.png>`_

Be sure to set this option to off after you create your volume on the
new firewire disk.

.. |firewire.png| image:: http://www.tssci-security.com/blog/wp-content/uploads/2007/08/firewire.png
