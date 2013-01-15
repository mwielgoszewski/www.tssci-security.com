author: Marcin
disqus_id: 917f2f5a-b339-4013-a771-25d5d63a12c3
disqus_url: http://www.tssci-security.com/archives/2009/01/22/introducing-sslfailcom/
mod_date: 2009-02-03 16:04:09
parent: 0
post_id: 444
post_type: post
pub_date: 2009-01-22 09:11:00
public: 'yes'
slug: introducing-sslfailcom
tags:
- security
template: post.html
title: Introducing SSLFail.com

Introducing SSLFail.com
#######################

Hey all, I'd like to introduce all of you to a new site `Tyler
Reguly <http://www.computerdefense.org/>`_ and I, along with `Romain
Gaucher <http://rgaucher.info/b/>`_ and Jay Graver set up last week,
`SSLFail.com <http://www.sslfail.com/>`_. The site's purpose is to point
out the failures in various sites' SSL implementations. We'll be
publishing tutorials, and informative articles on SSL in addition to
pasting screenshots of high profile sites' failures.

We came up with the idea for the site when Romain came upon an SSL
failure with
`Gmail <http://www.sslfail.com/2009/01/gmail-ssl-fail-image/>`_. Tyler
then blogged about it, and then I was getting errors with
`Facebook <http://www.sslfail.com/2009/01/facebook-ssl-fail-image/>`_.

The interesting things about Gmail, when you go to https://gmail.com,
Firefox was the only browser we tested to follow the 301 Redirect to
another domain (www.google.com) with a proper SSL certificate. IE7 and
Google Chrome on the other hand, asked the user for confirmation before
the redirect. Is this a Firefox SSL failure? I don't know, and several
others I've spoken with aren't sure how a browser should handle it
either.

Anyways, just wanted to point out this new site, which has already
gotten some attention from
`lonervamp <http://www.terminal23.net/2009/01/a_taste_of_ssl_failures_at_ssl.html>`_
at
`terminal23 <http://www.terminal23.net/2009/01/ev_ssl_fail_or_how_to_rebrand.html>`_
and `hype-free <http://hype-free.blogspot.com/2009/01/sslfail.html>`_.
