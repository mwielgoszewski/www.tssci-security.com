author: Marcin
disqus_id: 873a41c3-a033-4a8f-a802-a6f74ee9ff48
disqus_url: http://www.tssci-security.com/archives/2007/01/08/foxit-reader-may-be-vulnerable/
mod_date: 2007-01-09 11:30:15
parent: 0
post_id: 117
post_type: post
pub_date: 2007-01-08 11:22:26
public: 'yes'
slug: foxit-reader-may-be-vulnerable
tags:
- Security
template: post.html
title: Foxit Reader (may be) vulnerable

Foxit Reader (may be) vulnerable
################################

I came across this today, a `Multiple Vendor PDF Document Catalog
Handling
Vulnerability <http://projects.info-pull.com/moab/MOAB-06-01-2007.html>`_
over at MOAB. I was curious, so I decided to check it out and download
the `POC exploit
code <http://projects.info-pull.com/moab/bug-files/MOAB-06-01-2007.pdf>`_.
The document failed to open on my Windows XP workstation using Foxit
Reader version 2.0 build 0922. I ran it through Visual C++ Express to
see what I can get from debugging it, (unfortunately not much due to not
having Foxit source code or the symbols) and got this:

``First-chance exception at 0x0042a266 in FoxitReader.exe: 0xC00000FD: Stack overflow. Unhandled exception at 0x0042a266 in FoxitReader.exe: 0xC00000FD: Stack overflow.``

I'll post updates as they become available.
