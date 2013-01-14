author: dre
disqus_id: 62c083dc-9188-44b6-abd8-62a809d37fdb
disqus_url: http://www.tssci-security.com/archives/2008/09/11/web-application-security-tomorrow/
mod_date: 2008-09-11 19:36:32
parent: 0
post_id: 429
post_type: post
pub_date: 2008-09-11 18:39:11
public: 'yes'
slug: web-application-security-tomorrow
tags:
- Security
template: post.html
title: Web Application Security Tomorrow

Web Application Security Tomorrow
#################################

Jeremiah Grossman wrote in the opinion section for Application security
in CSO Online magazine about `Web Application Security Today -- Are We
All
Insane? <http://www.csoonline.com/article/412163/Industry_View_Web_Application_Security_Today_Are_We_All_Insane_>`_

I have an opinion of my own which I would like to share with my readers.
Jeremiah spreads FUD -- Fear, Uncertainty, and Doubt (mostly fear) in
his message. I wanted to walk through some parts of what he wrote that
were especially messages of fear, particularly ones that are over-blown.

    Seventeen million programmers are churning out an estimated 102
    billion new lines of code per year. [...] Web application exposure
    has reached the crisis stage because criminals have taken notice and
    made Web applications their primary target. There's an old proverb
    that explains how to determine whether or not someone is sane. An
    individual is shown a river flowing into a pond. He is given a
    bucket and asked to drain the pond. If he walks to the stream to dam
    the inflow into the pond he will be considered sane. If he decides
    to empty the pond with his bucket without first stopping the inflow
    then he would be considered insane. This is analogous to today's
    approach to software security, and specifically Web application
    security.

Many of us (including myself) know exactly where Jeremiah is going with
this. However, my addition is that the purity of the water in his
example is what is important -- not the flood of code. We shouldn't slow
down the production of code, or put an end to it.

    The techniques used by the modern cyber-criminal are truly scary.
    They're backed by mafia, supported by nation states, and often even
    carried out by, or in conjunction with, rogue insiders. We are
    dealing with polymorphic malware, 100,000-computer strong botnets,
    drive-by-downloads, rootkits with anti-forensic capabilities
    conducted by adversaries who fear no U.S. law. The bad guys make
    certain their newest tricks are packed, encrypted, and undetectable
    by the most popular security products.

While some of this FUD is certainly true to a point, we don't have any
specific measurements on the reality of our situation. What Jeremiah
purports as fact is merely theory, speculation, and potentially myth.

    Think the payment card industry's new regulations or the breach
    disclosure laws are going to save us? Neither do I, but they
    certainly do make a good excuse to get more budget dollars.

I've been having a lot of interesting conversations about compliance
with my colleagues lately. It's been indicated to me that PCI-DSS is not
the only compliance standard or regualation that has a framework to
enforce application security or application penetration-testing.
Stranger, the "cost of a breach" isn't the only cost of insecurity.

Marcin and I were discussing an article on `Sound compliance polices,
practices reduce legal
costs <http://searchsecurity.techtarget.com/news/article/0,289142,sid14_gci1328871,00.html>`_.
I had other discussions about cyber-insurance in the Security Catalyst
community regarding a presentation at the recent Defcon conference from
Taylor Banks and Carric on `[PDF] The pentest is dead, long live the
pentest! <https://www.defcon.org/images/defcon-16/dc16-presentations/defcon-16-banks-carric.pdf>`_
At the end of their presentation, Taylor and Carric provide a long list
of cyber-insurance providers -- extremely useful for anyone unaware of
such a thing or looking to buy. In David Rice's book, Geekonomics, David
makes mention of AIG's cyber-insurance offerings and how the `ISAlliance
and AIG provide discounts to ISAlliance
members <http://www.isalliance.org/index.php?option=com_content&task=view&id=29&Itemid=71>`_
who implement security-framework controls. In other words, doing
compliance "right" not only buys protection from the regulators, but it
also demonstrates cost-improvements for legal and insurance activity.

Another conversation with colleague Adam Muntner discussed how
"compliance readiness" is both more profitable and more enjoyable than
compliance work itself. Many organziations realize that the time and
effort it takes to pass any given set of criteria for an audit standard,
so they prepare themselves ahead of time using experts in application
risk, network penetration-testing, and application penetration-testing.
What most organizations are looking for is custom-tailored advice in the
form of strategy consulting, not just another fancy report that they can
give to the auditors.

Compliance and breach disclose laws could possibly be the primary
motivators towards spending on application security, but there is
certainly more at work here. If compliance is driving application
security, then what is driving compliance?

    Want to rent a 10,000-computer botnet for the day? No problem.
    Unreported vulnerabilities (zero-days) are being researched, bought,
    and sold on the black market for tens or even hundreds of thousands
    of dollars. At the same time, when software patches are released,
    attackers are immediately (it is rumored, automatically)
    reverse-engineering them to find the flaw. Exploit code is then sent
    back into the wild before patches can be widely deployed by
    legitimate users. Large-scale patch rollouts taking only a few days
    seems like a great advancement until compared against exploit code
    ready to go in hours.

Here's where Jeremiah's FUD really kicks in. I don't know where his
sources are, but the factual nature of this information should
definitely come into question. I have heard of one or two exploits that
have been sold for US 30,000 dollars. However, this is not the norm. The
rumors of automatic reverse-engineering of patches into exploits has
been disproved, so why make mention of it? Even the Asprox botnet that
coordinated the SQL injection attacks is over one year old -- and I'm
certain that a large majority of Enterprises are patched. The clear
target of the malware behind the SQL injection attacks is consumers,
particularly those whose Windows XP operating system has some sort of
automatic update deficiency or mis-configuration.

    In response to the inadequacies of first-generation Web application
    security measures, an entire industry has emerged beating the drum
    for software in the Software Development Lifecycle (SDL) and touting
    secure software as the cure to all our woes.

Actually, application security principles have been around for a lot
longer! I think that security in the SDLC has definitely been talked
about before the invention of the web. The only concepts that I've seen
emerge from the "inadequacies of first-generation Web application
security measures" that have been "beating their drums" and touting
their solutions as the cure to all our woes are:

-  Black-box web application security scanners (WASS)
-  Web application firewalls (WAF)

Secure code review has been a concept that I've been aware of since
OpenBSD opened their doors. Improving software development processes for
both quality and security go back in the literature to the 1970's. Unit
testing, and security unit testing, are relatively new concepts -- but
certainly not as new as WASS or WAF!

Secure code review is a competitive sport that is different than the
sales/marketing approach of security product vendors. When Theo de
Raadt, a renown (some would say notorious) NetBSD core member who had an
appetite for application security branched OpenBSD from NetBSD -- he
didn't have it directly in mind that he and his team would scour their
source code looking for security-related bugs. However, the NetBSD team
provided some extra competitive eyes on the OpenBSD commits -- looking
especially hard on security-related bugs to embarrass Theo and crew.
From this back-and-forth competitive challenge -- the application
security industry was really born.

Certainly, some will claim that fuzz testing was invented earlier.
However, before OpenBSD -- security-related bugs were found mostly by
accident (while looking for something else). If they were found on
purpose, like in the case of the Morris Internet worm, it was a personal
matter -- potentially shared by a group, but not taken on by a group,
rarely even in academia.

One could claim that WASS has its roots in fuzz testing, while WAF has
its roots in packet filtering or the classic network firewall. Unlike
those two: security unit testing, secure code review, and white-box
dynamic analysis have really not changed much over time. When I use
Javascript breakpoints in FireBug, it is strikingly similar to using
gdb.

    In today's world, there is an unimaginable amount of insecure code,
    and therefore websites, already in circulation. Just taking up the
    battle cry of "secure software" alone does not solve this problem.
    As Web 2.0 applications continue to proliferate (blogs, social
    networks, video sharing, mash-up websites, etc.) the problem will
    expand in parallel, but we also must consider the existing large
    financial institutions, credit unions, healthcare operators,
    ecommerce retailers that run mission-critical business applications
    online. Even our 2008 U.S. presidential candidates are having
    trouble securing their campaign websites against amateur attackers.

It's interesting how Jeremiah views "secure software" as a battle cry.
For many security-focused developers, this isn't a war -- it's just a
way of coding properly. Maybe he pictures that the war is "secure
software vs. WASS+WAF", which from his wallet's perspective -- might be
right. I am having some issues separating application
penetration-testing and general application security, but I don't see it
anywhere near as bad as the case that Jeremiah has got.

The one thing about the above paragraph that is potentially very sad is
that he calls XSS bugfinders "attackers" -- "amateur attackers" at that.
There were no real attacks against the presidential candidates' websites
-- there were just some vulnerability findings. No exploits were written
or used. Jeremiah really has a way of twisting words around -- maybe he
should be working for one of the presidential candidates!

**Application security vs. Application penetration-testing**

Some of us choose to focus our efforts on penetration-testing -- finding
bugs in the code that can be used as an exploit. Others focus just on
building the code with security in mind -- to enhance security. This is
an important distinction.

In a recent presentation entitled `[PDF] Code Scanning: Success and
Failure in the
Field <http://www.isecpartners.com/files/CodeScanning.pdf>`_, Alex
Stamos discussed some differences between false-positives and
non-exploitables. Sure, black-box web application scanners, including
SaaS vendors such as WhiteHatSec indeed find exploitable conditions.
This comes at a serious cost.

Problems with black-box web application security scanners, including and
especially WhiteHatSec:

#. The penetration-test runs unencrypted over the Internet, exposing not
   only a MITM condition, but various types of proxy and logging
   problems
#. Anyone in this path -- present or future -- may gain (potentially
   illegal) access to these exploits, pre-built for them, so that almost
   no knowledge or expertise is required on their part to run them
#. Changing an exploit so that it bypasses WASS+WAF is often trivial
#. Use of an encrypted VPN or testing on the local LAN does not settle
   this problem, it only protects some of the path involved

I think Jeremiah said it best himself:

    The techniques used by the modern cyber-criminal are truly scary.
    They're backed by mafia, supported by nation states, and often even
    carried out by, or in conjunction with, rogue insiders.

What I propose is that it is safer and easier to avoid the
exploitability arguments. Who cares if something is exploitable or not?
A better question is: how obviously secure is the code?

Advantages of security unit testing, secure code review, and white-box
dynamic analysis:

#. No exploits means that no rogue insiders can steal them and give them
   to adversaries
#. Source code is full-knowledge. There is nothing "black-box" about it,
   so every software weakness and vulnerability can theoretically be
   found
#. These practices encourage finding security-related bugs
   "accidentally", which includes new classes of vulnerabilities (often
   referred to as software weakness research)

Certainly, I have some ideas and products in mind when I think of true
application security tools: security unit test frameworks (which don't
exist), security code review tools, and white-box dynamic analysis, or
hybrid/composite analysis. However, the primary focus should be on the
expertise needed to perform application security tasks, the process in
place to allow individuals and teams to rise to the occasion, and
guidance/governance from organizational figureheads and leaders.

    It is unreasonable to expect publishers, enterprises and other site
    owners to restart and reprogram every website securely from scratch.
    Nor can we fix the hundreds of thousands (maybe millions) of custom
    Web application vulnerabilities one line at time.

Jeremiah thinks that developers work with source code one line at a
time. They don't. Modern developers utilize techniques such as
metaprogramming, code generation, templating, and model-driven
architecture. They're programmers, why wouldn't they write programs to
help them develop other applications?!

Some web applications are so legacy, that they require re-writing from
scratch -- however we don't have numbers or statistics on this amount.
Also note that if Jeremiah is going to only include SSL web applications
as important -- than he should also include them in these numbers as
well.

Developers have been using unit testing frameworks, IDE features, and
processes such as iterative programming, Extreme programming, and Agile
to help them refactor their applications for quite some time now.
Refactoring does not require re-writing from scratch. With refactoring,
developers can restructure the design of their applications by tweaking
small parts of the code. Dependency injection, Aspect-oriented
programming, and Attribute-oriented programming make this faster -- as
do general development concepts such as Design-by-contract, Test-driven
development, Reflective programming, and many others. Some of these
practices don't even require use of an object-oriented language -- let
alone an Enteprise web application programming language such as Java
Enterprise or ASP.NET.

There are numerous books on refactoring the Web, databases, and specific
programming languages. Some languages have used metaprogramming to build
refactoring, unit testing, TDD, and many other quality/security-control
concepts into the entire framework -- such as Rails for Ruby.

    Our pond is actually an ocean of code in need of security defect
    purification and the dams in the rivers feeding it have holes
    requiring patches. In many ways, the state of Web application
    security is where we started a decade or so ago in network security
    when no one really patched or even had the means to do so.

I dislike how Jeremiah fails to bring this analogy back around in order
to prove any point. If WASS+WAF is supposed to signify blocking the
inflow of water, this neither cleans up the already dirty pond, nor does
it prevent the acidic/polluted water from immediately disintegrating the
wooden plug that is supposed to stop the inflow.

    This approach lets us mitigate the problem now giving us breathing
    room to fix the code when time and budget allow. Of course there is
    still the option of waiting the next 10 years for the Web to be
    rebuilt.

If classic firewalls and virtual-patching didn't work the first time
around -- what makes people think they're going to work now?

The web does not require 10 years to be rebuilt -- especially not the
SSL web. It requires smart developers with metaprogramming, refactoring,
and high-efficiency skills that can be focused towards security. Do not
hire cowboy coders. Hire developers that can utilize and spread TDD,
Design-by-contract, metaprogramming, and code generation concepts and
tools throughout your organization. Hire application security experts
that can work with these super-developers. Train and promote modern,
secure development practices to every developer-newbie, veteran
developer -- and every network, application, or information security
professional.
