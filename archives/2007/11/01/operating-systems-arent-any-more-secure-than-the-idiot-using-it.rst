author: Marcin
disqus_id: dcc53dc5-f8f9-4d06-ac97-d12f68966e14
disqus_url: http://www.tssci-security.com/archives/2007/11/01/operating-systems-arent-any-more-secure-than-the-idiot-using-it/
mod_date: 2007-11-01 13:39:35
parent: 0
post_id: 326
post_type: post
pub_date: 2007-11-01 13:37:52
public: 'yes'
slug: operating-systems-arent-any-more-secure-than-the-idiot-using-it
tags:
- windows
- apple
- linux
- security
template: post.html
title: Operating systems aren't any more secure than the idiot using it

Operating systems aren't any more secure than the idiot using it
################################################################

So this week, we've had a roundup of posts on Apple's latest OS X
release, Leopard, and the security "features" that went into it, where
they fall short, and what's missing. Thomas Ptacek has a `great
post <http://www.matasano.com/log/981/a-roundup-of-leopard-security-features/>`_
over at Matasano with even more insightful comments on the security of
Apple's latest OS. (To those less technically inclined, the techiness
increases exponentially. I love it!) Daniel Meissler also
`posted <http://dmiessler.com/blogarchive/new-os-x-trojan-in-the-wild>`_
about the latest trojan to hit Mac, which in my opinion... isn't a
trojan at all. To summarize his post, this is what's required for the
"trojan" to pwn you:

    1. Go to a malicious site. 2. Get prompted to install software. 3.
    Choose to install it. 4. Put in your admin password when it asks for
    it. 5. Get pwned.

So this brings me to, "an operating system is only as secure as the
idiot using it." I'm tired of arguing about the security of Windows
versus Linux versus OS X. They're pretty much all the same, and they're
all insecure. A competent user or sysadmin managing it will limit the
number of services running and ports open, install only signed/verified
applications, and practice safe browsing. This won't protect you or them
from an 0day.

Whether your grandma is more secure using one OS over another, again...
it'll only be as secure as she can be. With more and more
vulnerabilities exploiting the browser and targeting the user, no OS is
secure.
