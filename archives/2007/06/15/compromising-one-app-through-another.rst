author: Marcin
disqus_id: dcdaf2de-7750-48ec-9248-0bea72a01bca
disqus_url: http://www.tssci-security.com/archives/2007/06/15/compromising-one-app-through-another/
mod_date: 2007-06-15 07:52:02
parent: 0
post_id: 243
post_type: post
pub_date: 2007-06-15 07:48:49
public: 'yes'
slug: compromising-one-app-through-another
tags:
- Security
template: post.html
title: Compromising one app through another

Compromising one app through another
####################################

I was directed through `RSnake's
blog <http://ha.ckers.org/blog/20070614/writeup-on-yahoo-xss/>`_ to a
`XSS defect in Yahoo!
Services <http://netcooties.blogspot.com/2007/06/yahoo-endangers-users-do-web-sites-care.html>`_
and had a couple questions concerning secure design of web
applications...

So here's the scenario,

A user is authenticated by a device between himself and the application
he's accessing. From there, they are able to gain control over the
application they are using and launch an attack against other
applications/servers.

What would the likelihood of such an attack be? What if the
authenticating device checks for malformed urls and limits what urls are
passed to each application? To add to this, consider the security of the
system itself: running a stripped SELinux kernel, custom web server,
clears its cache regularly and performs encryption on data being
transmitted and stored. The system was audited by several independent
partners and is considered to be "extremely reliable and secure."

Unless there's some flaw in the way the server handles urls, I think
finding a vulnerability in the design without performing a full pentest
will be difficult. I'm a newb to web app security, so I might be wrong
entirely...
