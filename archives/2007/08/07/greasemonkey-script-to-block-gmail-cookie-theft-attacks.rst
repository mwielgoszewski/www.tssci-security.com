author: Marcin
disqus_id: 4566e7c5-d579-45fa-9d78-dcc428eb0106
disqus_url: http://www.tssci-security.com/archives/2007/08/07/greasemonkey-script-to-block-gmail-cookie-theft-attacks/
mod_date: 2007-08-07 10:55:36
parent: 0
post_id: 269
post_type: post
pub_date: 2007-08-07 10:55:36
public: 'yes'
slug: greasemonkey-script-to-block-gmail-cookie-theft-attacks
tags:
- privacy
- security
template: post.html
title: Greasemonkey script to block Gmail cookie-theft attacks

Greasemonkey script to block Gmail cookie-theft attacks
#######################################################

Ryan Naraine of ZDNet points out a `Greasemonkey script that blocks
Gmail cookie-theft attacks <http://blogs.zdnet.com/security/?p=426>`_.
The script can be downloaded
`here <http://userscripts.org/scripts/show/1404>`_, and it redirects
Gmail to use a "secure" HTTPS connection. You can modify the script to
@include redirect any site that has HTTP or HTTPS to use HTTPS by
default.

The `meat <http://userscripts.org/scripts/review/1404>`_ of the script
is just a couple lines:

::

    @include     http://mail.google.com/*
    location.href = location.href.replace(/^http:/, 'https:');

