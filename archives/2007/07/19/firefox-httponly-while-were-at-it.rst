author: Marcin
disqus_id: 695a81d7-24b6-483b-bdcf-5d47c98e2d66
disqus_url: http://www.tssci-security.com/archives/2007/07/19/firefox-httponly-while-were-at-it/
mod_date: 2007-07-19 08:12:38
parent: 0
post_id: 261
post_type: post
pub_date: 2007-07-19 08:12:38
public: 'yes'
slug: firefox-httponly-while-were-at-it
tags:
- Privacy
- Tech
- Security
template: post.html
title: Firefox + httpOnly? While we're at it...

Firefox + httpOnly? While we're at it...
########################################

`kuza55
noted <http://kuza55.blogspot.com/2007/07/firefox-gets-httponly.html>`_
this morning that Firefox 2.0.0.5 has
`implemented <http://forums.mozillazine.org/viewtopic.php?p=2965188>`_
support for `httpOnly
cookies <http://en.wikipedia.org/wiki/HTTP_cookie>`_. It's not perfect,
as ma1 pointed out in the
`comments <http://kuza55.blogspot.com/2007/07/firefox-gets-httponly.html#comment-7925172079553550367>`_,
but it's better than nothing.

The Firefox browser could be made even more secure by building
`NoScript <http://noscript.net/>`_,
`LocalRodeo <http://databasement.net/labs/localrodeo/>`_,
`CookieSafe <https://addons.mozilla.org/en-US/firefox/addon/2497>`_,
`SafeHistory <http://www.safehistory.com/>`_, and
`SafeCache <http://www.safecache.com/>`_ into the Firefox codebase. In
addition an option to run only `signed
Java(Script) <http://www.mozilla.org/projects/security/components/signed-scripts.html>`_
should be developed.

For more on httpOnly cookies, check out `Mitigating Cross-Site Scripting
With HTTP-only
Cookies <http://msdn2.microsoft.com/en-us/library/ms533046.aspx>`_ and
also `Why HttpOnly won't protect
you <http://www.gnucitizen.org/blog/why-httponly-wont-protect-you>`_.
