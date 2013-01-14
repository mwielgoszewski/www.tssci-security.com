author: dre
disqus_id: d07c2049-2945-4e05-9543-7fc755563210
disqus_url: http://www.tssci-security.com/archives/2008/06/15/what-web-application-security-really-is/
mod_date: 2008-06-15 18:54:45
parent: 0
post_id: 412
post_type: post
pub_date: 2008-06-15 08:02:00
public: 'yes'
slug: what-web-application-security-really-is
tags:
- Defense
- Hacking
- Security
template: post.html
title: What web application security really is

What web application security really is
#######################################

I wanted to do a post about "what web application security really is"
because plenty of people out there don't get it. They understand that
"security attacks are moving from hosts to the Web", but they have no
idea what that means. To most people, web application security is the
same thing as website security. I see people trying to approach web
application security in the same way that they have tried host security
in the past: penetrate (web application security scanner) and patch (web
application firewall) -- which won't work.

**Web application vulnerabilities are different from regular
vulnerabilities in more ways than you would think**

Web application vulnerabilities are not a one-time thing. In a similar
way, buffer overflows are also not a one-time thing, however we've been
lying to ourselves for 20 years about it. The nice thing about buffer
overflows is that they have been historically found with random input
testing (e.g. fuzz testing) or code review as "one-off scenarios". A
security researcher will find one, but that doesn't mean it's
exploitable -- better yet it doesn't mean that the entire codebase is
riddled with them (however, some repeat offenders obviously suffer from
this problem).

**With web application vulnerabilities, the more complex the app -- the
more likely an adversary can make his or her dreams into an exploit
reality**

In the case of web application vulnerabilities -- one vulnerability
means that there are often thousands of others -- hence the claimed high
rate of false positives in automated security review tools -- with
specific regard to SQL injection and XSS. What's even more clever about
web application vulnerabilities is that they often work together -- they
string together to form a bigger attack. A few little bugs equals one
giant nasty bug. This also isn't the situation with fat applications --
a stack-based buffer overflow is usually one mean bug, but once it is
patched properly the nightmare is [usually] over.

**Web application profiling and Google Hacking read the developer's
minds like Jedi magic tricks**

Another problem with web application vulnerabilities is Google. Yes,
Google. Before Google's code search, it was difficult to use Google to
find a new buffer overflow. But such is not the case with web
application vulnerabilities. All the blame isn't on just Google's search
engine, but also MSN Live Search, Yahoo, and many others. It's so easy
to just find a login form and start playing with specific, exploratory
characters. Buffer overflows require buffers of a certain length with
enough room for shellcode to overwrite EIP (or execute via cute pointer
tricks) in order to establish a reliable exploit. Web application
vulnerabilities don't worry about such restrictions. Once a web
application is profiled (which could be as simple as an inurl:login.asp
Google search), an intelligent adversary should already know numerous
amounts of input techniques which will work against that specific type
of application.

**Web application vulnerabilities are like Legos for crimeware**

Finally, adversaries aren't moving away from client-side
vulnerabilities. They're just implementing the attacks differently. Web
application vulnerabilities work well along with older host-based
vulnerabilities. This isn't only because web application vulnerabilities
can get inside the firewall. They open up many different doors for
attack. Using `Inter-protocol
exploitation <http://www.tssci-security.com/archives/2007/12/17/ajax-security-opens-up-a-whole-new-can-of-worms/>`_,
it is possible to send shellcode through an XSS/CSRF/XHR worm. But it's
also possible to send XSS worms through XSS worms or SQLi worms through
XSS worms. Or XSS worms through SQLi worms. An adversary can put these
types of attacks together however he or she wants.

**Web app security today -- The 2008 SQL Injection Attacks (January -
present)**

The 2008 SQL Injection Attacks have spawned a lot of talk and
controversy about web application vulnerabilties. It appears that if web
application vulnerabilities were not mainstream in crimeware -- they now
are.

The Microsoft Security Vulnerability Research and Defense blog had an
excellent post regarding these `SQL Injection
Attacks <http://blogs.technet.com/swi/archive/2008/05/29/sql-injection-attack.aspx>`_.
I think it dispells a lot of the myths about this attack, and it provide
a lot of information on what to do about it. Of course, if you're not
used to the developer terminology (as an IT security professional or
manager), it's probably now as good as time as ever to read up, hire
some experts, and get the word out.

There's a lot of links, but the most important one is `how to identify
and fix the
problem <http://msdn.microsoft.com/en-us/library/ms161953.aspx>`_.
What's interesting is that a lot of the links talk about ASP.NET, but
the attacks from Asprox's fake "Microsoft Security Center Extension" SQL
injection attack tool only seem to currently target Classic ASP.

If you have access to IIS logs, you can also run the
`SQLInjectionFinder.exe <http://www.codeplex.com/Release/ProjectReleases.aspx?ProjectName=WSUS&ReleaseId=13436>`_
tool. Of course, if you run a web application security scanner, you may
or may not find SQL injections in your Classic ASP web application --
but this doesn't necessarily mean that you are or aren't hosting the
Javascript malware. If you have a web application firewall, this doesn't
mean that your web application can't be attacked via internal networks
(assuming your web servers are listening on different interfaces) -- and
it certainly doesn't mean that you aren't hosting the Javascript
malware.

-  **Web application security scanners cannot help in this scenario**
-  **Web application firewalls also cannot help in this scenario**

A better tool to test if you are hosting the Javascript malware would be
to use a tool such as `SpyBye.org <http://www.spybye.org>`_. You can
just set up your web browser to proxy through Spybye.org, or you can run
it locally (e.g. to check your Intranet web applications) -- and it can
also integrate with ClamAV. TS/SCI Security (well, Marcin and I)
discussed this strategy when we did the `Network Security Podcast with
Rich Mogull and Martin
McKeay <http://www.tssci-security.com/archives/2008/01/30/guests-on-network-security-podcast/>`_.

**Many faces of the same SQL injection attack**

Also mentioned in the Microsoft Security Vulnerability Research and
Defense blog post on the `SQL Injection
Attack <http://blogs.technet.com/swi/archive/2008/05/29/sql-injection-attack.aspx>`_
is that it's not just one attack tool -- it's a bunch of tools and
tactics. For those of you not familiar with `Joe Stewart's SecureWorks
article on
Danmec/Asprox <http://www.secureworks.com/research/threats/danmecasprox/>`_,
be sure to give it a full read. Additionally, check out the `SANS
article from Bojan Zdrnja on the 10,000 web site infection mystery
solved <http://isc.sans.org/diary.html?storyid=4294>`_. My favorite is a
quote from `eWeek's article on Botnet Installs SQL Injection
Tool <http://www.eweek.com/c/a/Security/Botnet-Installs-SQL-Injection-Tool/>`_:

    Researchers are still investigating exactly what vulnerability on
    the Web sites is being exploited, Stewart said. The Web sites are
    English-language and their owners include law firms and midsize
    businesses.
    A similar attack technique is currently being seen spreading
    game-password-stealing Trojans from China. Whether the tool is
    related or only the attack syntax is shared, it is clear that SQL
    injection attack activity is on the rise from multiple sources,
    Stewart wrote in his blog.

**Why WAF's are the wrong answer if you didn't get it the first or
second time**

When I see WAF support from organizations like `SANS supporting Jeremiah
Grossman <http://jeremiahgrossman.blogspot.com/2008/06/summary-sans-whatworks-in-web.html>`_
-- as well as big companies like
`Imperva <http://blog.imperva.com/2008/06/we-can-write-secure-code-not.html>`_
-- I immediately question their reliabilty as sources for expertise. If
the web applications serving malware are largely owned by law firms and
midsize businesses, then these are likely outside of the scope of SOX,
PCI-DSS, GLBA, HIPAA, and BITS Shared Assessments. Many of these
organizations don't even have the money or administrative staff to
support WAF's as an option.

**What works in web application security: Take 2**

What these companies need is an IT decision to remove, replace, or
recode any web applications which clearly demonstrate an affinity for
SQL injection vulnerabilities (especially ones written in Classic ASP).
If replacement or recoding are used, then it would be a good idea to
establish some software risk guidelines such as how web application
software is acquired and tested before loaded by a web server. It's not
a matter of production or not -- all applications,
internal/Intranet/lab/test/etc -- all of these applications need to be
asset tagged and approved as tested. It's now considered important
enough to know what web applications your organization is running
because of the risk involved by a SQL injection (or other web
application vulnerability) "drive-by".

**Why we need action now**

If we just let this malware sit dormant in web applications, we're in
for a lot of trouble. All that is required for adversaries is to flip a
switch -- and now they can deliver any new zero-day threat they desire.
These could be websites you visit everyday. This could be web
application code executed by your browser when you start it. It could
even be your Intranet server, or a partner site you use. It could be
your favorite online shopping site.

Don't hesitate to make a decision. The next wave of these attacks may
not work through an antiquated botnet or a standalone tool. They will
probably target PHP MySQL applications, ASP.NET applications, both, or
even more. There may not be simple tools such as SQLInjectionFinder.exe
or SpyBye to help locate these vulnerabilities -- and some could even
stand the scrutiny of incident research for some time. How long did it
take us to understand these SQL Injection attacks? Longer than 6 or 7
months?

If you think that implementing a WAF will save you (even in the
short-term), please let us know why you believe this is the case. TS/SCI
Security sees the WAF answer as FUD, lies, and/or short-sightedness. The
best answer is to recode or replace while we still have the chance.
