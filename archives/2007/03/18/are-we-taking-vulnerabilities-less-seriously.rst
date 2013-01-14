author: Marcin
disqus_id: 22c97db8-499f-4b22-b52b-7c67d33e87bd
disqus_url: http://www.tssci-security.com/archives/2007/03/18/are-we-taking-vulnerabilities-less-seriously/
mod_date: 2007-03-18 16:03:42
parent: 0
post_id: 183
post_type: post
pub_date: 2007-03-18 16:03:42
public: 'yes'
slug: are-we-taking-vulnerabilities-less-seriously
tags:
- Security
template: post.html
title: Are we taking vulnerabilities less seriously?

Are we taking vulnerabilities less seriously?
#############################################

The OpenBSD IPv6 Remote DoS vulnerability has striked
`debate <http://www.matasano.com/log/720/openbsds-amusing-handling-of-remote-kernel-overflow/>`_
and `strong
reaction <http://www.matasano.com/log/725/when-did-denial-of-service-attacks-stop-being-vulnerabilities/>`_
on whether denial-of-service is a `security vulnerability or
not <http://blog.ncircle.com/blogs/vert/archives/2007/03/are_denial_of_service_vulnerab.html>`_.
Let's go back to the fundamentals we all learned early on: C-I-A,
Confidentiality, Integrity and Availability. We can have the most secure
systems in the world by disconnecting them from everything and making
them unavailable, both on the internet and physically. What good does
this do for us?

Some may not see a DoS as serious as say remote execution or privilege
escalation, but in many industries, availability is more important than
confidentiality or integrity. What happens when medical systems are
unavailable, or an online store's web site goes down? Availability of
the systems is just as important as the confidentiality and integrity,
and for us to think of availability as some luxury we can do without...
makes having confidentiality and integrity pretty pointless.

Michael Howard posted his thoughts on `judging Windows Vista
security <http://blogs.msdn.com/michael_howard/archive/2007/03/08/how-i-will-judge-windows-vista-security.aspx>`_
which has received criticism from
`Slashdot <http://it.slashdot.org/article.pl?sid=07/03/18/1218223>`_,
`ComputerWorld <http://www.computerworld.com/action/article.do?command=viewArticleBasic&articleId=9013378>`_
and MSRC stated it will not change how it rates vulnerabilities because
of underlying technology. Lowering the criticality of a vulnerability
because of some preventative technique in use, is a bad idea in my
opinion. Richard Bejtlich stresses the fact, and Joanna Rutkowska stated
it in her recent Dark Reading interview, "prevention eventually fails."
These technologies in Vista supposed to prevent such vulnerabilities
from happening, will eventually be exploited. The question then becomes,
what do we do next? Let's not play the semantics game and just stick to
fixing the issues in a timely manner.
