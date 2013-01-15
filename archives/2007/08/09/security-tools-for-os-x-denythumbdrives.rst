author: Casey
disqus_id: 80ddc682-f786-4b75-87d1-e56f3ba6db00
disqus_url: http://www.tssci-security.com/archives/2007/08/09/security-tools-for-os-x-denythumbdrives/
mod_date: 2007-08-09 09:21:49
parent: 0
post_id: 275
post_type: post
pub_date: 2007-08-09 09:21:49
public: 'yes'
slug: security-tools-for-os-x-denythumbdrives
tags:
- apple
- security
template: post.html
title: Security Tools for OS X -- DenyThumbDrives

Security Tools for OS X -- DenyThumbDrives
##########################################

The other day I posted about a problem regarding the default behavior
under OS X, which `ignores permissions for mounted firewire
drives <http://www.tssci-security.com/archives/2007/08/08/insecure-permissions-on-firewire-hard-disks-os-x/>`_.
I decided to look for a solution to this rather than relying on
administrators to set the proper option. What I uncovered is a nifty
tool called DenyThumbDrives that allows you to prevent the mounting of
local volumes based on their size and media type.

This tool allows me to solve the issue with insecure default settings
for firewire disks while also allowing me to prevent data theft via USB
thumbdrives and external disks. I understand data can still be stolen
via other means such as network connections; however, it's a step in the
right direction. DenyThumbDrives is also a free utility.

You can get DenyThumbDrives
`here <http://www.macupdate.com/info.php/id/18537/denythumbdrives>`_.
