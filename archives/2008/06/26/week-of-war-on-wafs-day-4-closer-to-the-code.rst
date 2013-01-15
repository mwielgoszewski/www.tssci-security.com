author: Rohit
disqus_id: 58f77aa6-0f2c-43e0-949b-4c33e665dafd
disqus_url: http://www.tssci-security.com/archives/2008/06/26/week-of-war-on-wafs-day-4-closer-to-the-code/
mod_date: 2008-06-26 10:59:57
parent: 0
post_id: 420
post_type: post
pub_date: 2008-06-26 10:59:57
public: 'yes'
slug: week-of-war-on-wafs-day-4-closer-to-the-code
tags:
- defense
- people
- security
template: post.html
title: 'Week of War on WAF''s: Day 4 -- Closer to the code'

Week of War on WAF's: Day 4 -- Closer to the code
#################################################

[*Andre and Marcin*\ ]: For today's post, we have a guest blogger, Rohit
Sethi. We asked Rohit to do this guest post because we feel that his
research, along with co-worker, Nish Bhalla, has been influential at
solving some unique application security problems. We met Rohit and Nish
at Shmoocon 2008 as fellow
`speakers <http://shmoocon.org/speakers.html>`_ -- their talk was our
undisputed favorite as they did an outstanding job at presenting and
conveying their message.

Their talk, `Using Aspect Oriented Programming to Prevent Application
Attacks [PDF] <http://shmoocon.org/2008/presentations/AOP%20Talk.pdf>`_
discussed how to take an existing application and add input validation
(XSS, SQL Injection, etc), strong error handling, and access controls
without ever changing the existing source code. We strongly encourage
you to check out their work. Rohit also has a fabulous post for us today
on WAF vs. Aspect Oriented Programming -- a warm welcome and big thank
you to the great work he's done here! [ *Cheers, TS/SCI Security blog* ]

**Web Application Firewalls vs. Aspect Oriented Programming**

As a concept, the WAF (Web Application Firewall) is brilliant. It
extends an application's trust boundary to include input from otherwise
dubious sources. Fundamentally, it externalizes many security concerns
away from the application's core logic. What makes the concept of WAF so
appealing is that the technology addresses security as a "cross-cutting
concern"; a part of the application that is pervasive across the code
base yet rarely relates directly to the business logic. Other
cross-cutting concerns, such as transactional management, coarse-grained
error handling, and logging also end up diluting the code within an
application away from core business logic (also known as "code
scattering"). On a more practical level, WAFs can implement the security
cross-cutting concern without changing existing source code -- meaning
we can implement WAFs quickly and avoid destabilizing the application
through code modification.

In practice, WAFs often suffer from a few drawbacks. In many
organizations, WAFs are handled by an infrastructure or security team
who are not intimately familiar with the applications that they're
protecting. This often (though not always) ends up becoming an elaborate
blacklist filter for malicious characters. Blacklisting is never ideal,
but in the case of WAFs the danger is exasperated. The WAF and the
application it's protecting are two different technologies. That means
canonicalization attacks, such as sending malicious characters in
`illegal multi-byte or malformed UTF8 character
sequences <http://www.owasp.org/index.php/Canonicalization,_locale_and_Unicode>`_,
may pass through the WAF interpreted one way and attack the application
interpreted another way. This interpretation delta with disparate
technologies is the same sort of problem that worsens attacks such as
`HTTP Response
Splitting <http://www.owasp.org/index.php/HTTP_Response_Splitting>`_ and
`HTTP Request
Smuggling <http://www.owasp.org/index.php/HTTP_Request_Smuggling>`_.

Is there a way for developers to protect their own applications without
having to modify source code? Can you modularize the security
cross-cutting concern without relying on an external
application/appliance? Yes -- with Aspect Oriented Programming (AOP). At
a very high-level, AOP is like applying Servlet Filters anywhere in your
code (for more details, please see the article I `wrote for
SecurityFocus <http://www.securityfocus.com/infocus/1895>`_). Using the
flexibility of languages like AspectJ, developers can choose the most
appropriate layer (i.e. application design layer, not OSI stack) to
protect their applications. A critical feature is that you are working
with data as the rest of the application server sees it -- in its most
canonical form. Unlike Servlet filters, AOP can be used to protect other
interfaces like SOAP interfaces, RMI connections, etc. Developers can
also to choose to delve much deeper in the code and protect, say, the
basic Value Objects representing the application's data types by
intercepting calls to the setter methods.

With a WAF, you can protect against SQL injection by stripping out
malicious characters; with AOP, you can strip out those characters and
additionally throw an exception/error anytime a dynamic SQL method is
invoked. Perhaps more importantly, WAFs are almost useless at protecting
against whole classes of vulnerabilities (e.g. missing server-side
authorization on some critical functions) whereas AOP is extremely
useful (e.g. transparently adding authorization checks to the actual
business methods, independent of which interface they are called from).
What's amazing about AOP is that you can implement these changes without
actually modifying the source code -- one of the primary advantages of
WAFs.

Is AOP always more appropriate than WAFs? Well, not quite. Similarly,
WAF and AOP can protect applications when raw source files are
unavailable. Both also require at least some application-level
knowledge. However, AOP typically requires a deeper understanding than
WAF. Without prior AOP experience, the off-chance of an implementation
mistake is more likely to occurr with AOP than with a WAF.

WAFs are probably a better fit to protect those apps that are developed
externally and/or for which you may not have the code/skillset to
understand its internal workings. AOP is not an easy sell because it's
poorly understood by most of the IT community. Don't expect the PCI data
security standard to say "perform code reviews, use an application
firewall, or implement security through aspect oriented programming"
anytime soon. Another roadblock is that while AspectJ has been around
for 11 years, few of the other aspect-oriented languages enjoy quite the
same maturity and support.

All that being said, I'm sure Andre has made you aware of many of the
shortcomings of WAFs (at least, compared to how they are being
marketed). AOP is gaining traction in the developer community, as well
as for security specific toolkits (check out `Spring
Security <http://www.acegisecurity.org/>`_ and see how they use AOP to
implement method-level authorization). Later this year, we'll be hosting
an open source project on useful security AOP aspects at `Security
Compass <http://www.securitycompass.com>`_. For the time being, make
sure to at least consider AOP as an alternative when modifying existing
source isn't an option.
