author: dre
disqus_id: bd52f9c5-52d0-4afb-89b0-66932470a18c
disqus_url: http://www.tssci-security.com/archives/2009/02/12/post-to-webappsec-mailing-list-on-waf-and-pen-test-dead-again/
mod_date: 2009-02-12 21:51:24
parent: 0
post_id: 447
post_type: post
pub_date: 2009-02-12 21:51:24
public: 'yes'
slug: post-to-webappsec-mailing-list-on-waf-and-pen-test-dead-again
tags:
- defense
- politics
- security
template: post.html
title: 'Post to webappsec mailing-list on WAF and pen-test: dead again'

Post to webappsec mailing-list on WAF and pen-test: dead again
##############################################################

There is no doubt in my mind that some very strong experts out there
have put WAF or WAF-like technology to good use. However, WAF is dead
and dying regardless.

I think that very large-installation, Internet-facing web applications
require Anti-DDoS technology in the form of an appliance, preferably one
that does rate-based behavior detection. I often feel that those same
organizations also require SLB appliances, although I prefer to see
these integrated with a switch fabric in a chassis-based, large
backplane network switch. In a year's time, SLB Layer-2 technology could
be replaced by VMware DRS clustering and/or an equivalent like Microsoft
PRO. I was always a fan of Anycast to replace SLB at Layer-3. I continue
to suggest these models/architectures today.

Can whitelist WAF technology be used by those same devices in the
short-term (Anti-DDoS or SLB appliance)? Absolutely, as long as it's
done by an expert and tuned to the applications. Should these devices
sometimes be separated out of a traditional operational role, due to
auditability and for compliance scoping purposes? Probably not. Should
they perform monitoring, debugging capability, or solving hard
production problems? Probably not.

The reason that the first question is a yes, and the others are a no is
because Anti-DDoS and SLB devices are already performance-ready-capable
of providing WAF whitelisting functionality (note: not in all cases, but
this works especially well for devices that provide rate-based behavior
detection before mitigation). Monitoring does NOT require an inline
device. All it requires is network taps (or potentially port-mirroring,
but most professionals recommend taps over SPAN ports). Also,
infrastructure is changing rapidly, so it's not wise to invest in a
dying model.

Additionally, I know that companies like Sourcefire and Reflex Systems
are integrating at the VMsafe API layer, which is a hypervisor
introspection layer much like XenAccess. This is really where much of
the AV/IDS/IPS/HIMS/DLP/WAF/blacklisting-whitelisting technology
belongs. VNET will also change the introspection layer (in addition to
almost completely eliminating the physical network layer and
SIM/SEM/SIEM/NMS/EMS moves & changes), as it simply adds to
introspection functionality. I have already alluded to Cisco AXG
becoming a VNET "module", but what if Reflex Systems or StoneSoft start
integrating WAF not only as a VNSS (Virtual Network Security System),
but also at the hypervisor introspection layer?

Fortunately, for application security, server virtualization and the
evolutions it's bringing with it e.g VNET and VMsafe, are going to
dominate traditional networks and cut their existing budgets.
Unfortunately for application security, the new virtualization evolution
also brings with it tons of object reuse (there are at least two new
controls channels available to adversaries), and new ways of
establishing covert channels.

This means a few things. First of all, the word "firewall" is dead, and
therefore, the word "web application firewall" and the associated
acronym, WAF, are also dead. Imagine today if there existed a control
channel that, when taken over by adversaries, it became a covert channel
that had unlimited object reuse control of every physical RAM on every
computer in existence all at once. This is cloud computing, but
virtualized.

Not only that, but we are saying that adversaries have already bypassed
traditional firewalls by using the application layer i.e. Hacking
Intranets from Jeremiah Grossman. Thus, this master, covert control
channel is already on its way to being built (at least as
man-in-the-browser). Imagine for a second that you don't use NoScript
with Firefox and additionally implement the features of Chrome by using
multiple Firefox profiles. Imagine for a second that you are a regular
user, with all of those Clickjacking and modern application attacks
available to anyone who wants to get to you.

Like many of us used the words "brick-and-mortar" to describe
backwards-companies during the dotCom bubble, I think "fire-and-wall"
well-describes organizations that continue to cling to traditional
networks and network security as answers to Internet, Enterprise IT, and
any operational risk.

Do I intend to sell you on the idea that we should all instead jump to
Fortify RTA or Microsoft SRE? No. There are potential consequences to
any of this. This is only the functionality required to reduce risk to
applications, not the assurance that risks have been removed.

TCSEC says that we need to balance functionality and assurance. But
nobody ever bothered to do any assurance. Assurance is the Microsoft
SDL, SDL Pro, and SDL-IT. @Stake and Foundstone are gone and have split
into tons of fractured security evaluation and risk assessment boutiques
that have 1-300 developer-security-tester guru's that mix SAST and DAST
with expert review.

But the SAST+DAST market is less than $100M, while WAF is at least 20%
more than that (although probably inflated).

I hate to be the bearer of bad news, but you don't just say "DO BOTH"
because nobody will do the SAST+DAST work. We tried that last time, when
tcp\_wrappers and the DEC firewall came about The underground that
wanted to keep their covert control channels alive started dumping
rootkits on pre-pwned Unix machines. Then Dildog and others made it
possible to easily access Windows machines, and after that - botnets and
the like have reigned. There are already backdoors in our web
applications. OWASP Scrubbr is not going to save us all by itself.

Who did the work back then? OpenBSD? Certainly not Microsoft, and even
today their SDL appears to be failing by some, but imagine if it did not
exist at all. We obviously have to do better with assurance practices.

Can functionality-based controls work easier, better, and faster than
assurance ones? Are they that less complex and easier to train? Or is
there just more written about them because it's easier to SELL them by
baking them into products rather than customizing them to an ISV
organization or an Enterprise development team?

If you are part of the group that is spending $120M on WAF technology,
then you are hurting the SAST+DAST market because you're taking away
that spending. Clearly, risk analysis is not taking place and people are
spending based on familiarity in addition to PCI-DSS requirement 6.6,
which all but forces the inequality to happen.

Look at the best in exploitation-countermeasure functionality-based
controls that work on object reuse problems e.g. DEP, ASLR, SafeSEH,
SafeInt, et al. Are adversaries still bypassing these? Security
researchers in the offensive-research space are. These countermeasures
are closer to the code (even HIPS is closer than network-based IPS),
like many WAF suggestions. Is is true that we still require assurance
even after 15 years of exploitation-countermeasure optimization? I
remember when stack-guard protections were first coming out - they were
seen as a huge joke (i.e. toy/researcher technology), much like Fortify
RTA, CORE GRASP, Microsoft AntiXSS-SRE/AntiCSRF, GDS Security GPF, and
HDIV are seen now.

I know to many of you out there, this looks like a rant, and I really
could go on forever about this topic. So, go to the datacenter, give
your WAFs a hug, and continue to buy into the "functionality is better
than assurance" argument. You'll feel better in the morning, right after
you forget that you just opened up your database to any talented people
who want to make money from the data in it.

Also, pen-testing is dead. We no longer need to prove that applications
are insecure. We know they're insecure - no matter how many
functionality controls you layer on top of them. Unless YOU prove that
the applications that YOU are responsible for ARE secure, you are
working against the rights of users, consumers, cardholder data,
personally identifiable information tied to healthcare and financial
records, trade secrets, and the ability to control our critical
infrastructure. Enjoy.
