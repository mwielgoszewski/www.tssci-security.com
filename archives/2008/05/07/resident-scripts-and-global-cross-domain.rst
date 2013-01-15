author: dre
disqus_id: e0560c54-2dd8-4f41-85bb-e344e7710238
disqus_url: http://www.tssci-security.com/archives/2008/05/07/resident-scripts-and-global-cross-domain/
mod_date: 2008-05-07 16:33:33
parent: 0
post_id: 404
post_type: post
pub_date: 2008-05-07 01:15:30
public: 'yes'
slug: resident-scripts-and-global-cross-domain
tags:
- privacy
- conferences
- hacking
- security
template: post.html
title: Resident scripts and global cross-domain

Resident scripts and global cross-domain
########################################

In October of 2006, a vulnerability in IE7 known as the `"mhtml:"
Redirection Information
Disclosure <http://secunia.com/advisories/22477/>`_ was discovered.
`RSnake wrote up a
post <http://ha.ckers.org/blog/20061019/ie60-and-ie70-vulnerable-to-complete-cross-domain-leakage/>`_
about how nasty it was. The basics: it took over the entire browser
experience.

Fortunately, the bug was patched quickly, it required access to the web
server/application (or HTTP header injection), and it only affected IE7.
There was also a lot of talk about the vulnerability, making it quite
obvious to monitor, discover, and track if you do those sorts of things.

Nate McFeters wrote about his `trip to BlueHat
v7 <http://blogs.zdnet.com/security/?p=1078>`_ on the ZDNet Zero-Day
Security Blog. There, he links to a more `in-depth writeup on the
BlueHat
blogs <http://blogs.technet.com/bluehat/archive/2008/05/06/can-i-interest-you-in-a-glass-of-berry-blue-kool-aid-a-recap-of-bluehat-v7.aspx>`_
with a full recap of the conference. He spoke about a few things that
interested and surpised him along the way.

One big, glaring highlight of the talks, he spoke about -- and I quote:

    Manuel Caballero discussed something that originally didn't catch my
    attention. It initially sounded like the same research that's been
    put into cross-site scripting attack frameworks, which basically
    involved using XSS to create a bi-directional communication channel
    between victim and attacker for exploitation of XSS. Then I realized
    what Manuel was really talking about. Resident scripts have put the
    fear of God into me. Whereas a normal cross-site scripting attack
    vector is great for the site that was cross-site scripted, it
    stopped there; it couldn't follow you off-domain. Manuel's can.
    Scary.

Manuel's talk, "A Resident in My Domain", discussed using browser
malware activated by what sounds like an iframe and a bit of Javascript
magic. On `Manuel's website <http://www.cracking.com.ar/>`_, a deeper
look into the newly discussed concept speaks as follows:

    Do you believe in ghosts? Imagine an invisible script that silently
    follows you while you surf, even after changing the URL 1000 times
    and you are feeling completely safe. Now imagine that the ghost is
    able to see everything you do, including where (location) you are
    surfing, what you are typing (passwords included) and even guess
    your next move. No downloading required, no user confirmation, no
    ActiveX. In other words: no strings attached. We will examine the
    power of a resident script and the power of a global cross domain.
    Also, we go through a step by step approach on how to find cross
    domains and a resident scripts.

So, there you have it, folks. Manuel has appeared to have discovered a
cross-browser, multi-OS, unstoppable man-in-the-browser that can read
any activity that you do with your browser after it activates, including
crossing any domain boundaries. Unlike the *"mhtml:" Redirection
Information Disclosure*, this appears to be a vulnerability that will go
unpatched in browsers for possibly as long as XSS, CSRF, and other
same-origin policy violations.

I'm going to continue to explain to my mom that she should close her
browser (exit completely), open the browser again, log into and use her
banking web application, and then close her browser cleanly again after
logging out of her bank's website. Barring NoScript, I suggest you do
the same.

*Update (Wed May 7 14:28 MST):* It appears that Michal Zalewski busted
Firefox in a unique way that almost sounds similar to the above attack
vector. The Mozilla bug is called `iframes from other sites can be
changed while pointing at
about:blank <https://bugzilla.mozilla.org/show_bug.cgi?id=382686>`_ and
Zalewski's PoC is available from your browser as
`ifsnatch <http://lcamtuf.coredump.cx/ifsnatch/>`_.
