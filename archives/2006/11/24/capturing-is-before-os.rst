author: Marcin
disqus_id: af2ab5ea-e21a-4657-8122-15c14ed2c8cb
disqus_url: http://www.tssci-security.com/archives/2006/11/24/capturing-is-before-os/
mod_date: 2006-11-25 18:10:08
parent: 0
post_id: 80
post_type: post
pub_date: 2006-11-24 18:07:18
public: 'yes'
slug: capturing-is-before-os
tags:
- Security
template: post.html
title: Capturing I's before O's

Capturing I's before O's
########################

You're on the go, at the airport, at a coffee shop, whatever. You need
to check your email or login to your bank account to make sure you have
sufficient funds(I'd recommend against it, but people do it anyways).
You sit down at a public internet terminal or internet café and proceed
to go about your business. Well, you have no idea now what is running on
that computer; you trust the administrator keeps it free of viruses and
any spyware that could be lurking underneath. What you don't know, is
someone could have installed a software or hardware keylogger to record
all your keystrokes and use it to find your passwords and see where
you've gone.

Well, couple boys from Microsoft Research came up with an interesting
study, you can download
`here <http://cups.cs.cmu.edu/soups/2006/posters/herley-poster_abstract.pdf>`_
[pdf]. To sum it up, they suggest switching focus between applications
and text fields and inputting "random" characters so the keylogger
cannot easily see what's the password. A good keylogger will record the
following at a minimum:

#. Keystrokes
#. Mouse clicks
#. Active browser window

Let's assume your password is ``snoopy2``, as in the paper. Employing
the methods suggested, a keylogger would record the following:

``(lclick)s(lclick)quioe(lclick)n(lclick).,jmz(lclick)o (lclick)queis(lclick)o(lclick)lkjd(lclick)p(lclick)hguhjcxf (lclick)y(lclick)mc,m(lclick)2(lclick)(enter)``

You can easily derive what the password is here by looking at the
character typed inbetween (lclick)'s. So, to make it nearly impossible
for the keylogger to see what password you typed, just randomly left
click and right click between typing "random characters" and actual
password characters. To the keylogger, it could then look like this:

``(lclick)s(lclick)qui(rclick)o(lclick)e(lclick)(lclick)n (lclick).,(lclick)jmz(lclick)o(lclick)que(lclick)is(lclick)o (lclick)lk(lclick)jd(lclick)p(lclick)hguh(rclick)jc(lclick)xf (lclick)y(lclick)mc,m(lclick)2(lclick)(enter)``

I'd still recommend against logging into public terminals to check
financial information or important email, as there's other things to
worry about as well.
