author: Marcin
disqus_id: c3948e5c-4acf-4221-ad85-dfc5546bd05c
disqus_url: http://www.tssci-security.com/archives/2007/06/09/bust-through-http-proxies/
mod_date: 2007-06-09 11:41:48
parent: 0
post_id: 239
post_type: post
pub_date: 2007-06-09 11:41:48
public: 'yes'
slug: bust-through-http-proxies
tags:
- Security
template: post.html
title: Bust through HTTP Proxies

Bust through HTTP Proxies
#########################

I came across a neat little
`command <http://www.meadowy.org/~gotoh/projects/connect>`_ that will
allow you to SSH through an http-proxy. Useful for when you're at a
library or elsewhere and need to make an outbound SSH connection and the
only thing stopping you is a proxy.

Features of **connect.c** are:

-  Supports SOCKS (version 4/4a/5) and https CONNECT method.
-  Supports NO-AUTH and USERPASS authentication of SOCKS
-  Partially supports telnet proxy (experimental).
-  You can input password from tty, ssh-askpass or environment variable.
-  Run on UNIX or Windows platform.
-  You can compile with various C compiler (cc, gcc, Visual C, Borland
   C. etc.)
-  Simple and general program independent from OpenSSH.
-  You can also relay local socket stream instead of standard I/O.

