author: dre
disqus_id: fb82f22d-b238-49ed-923b-d04d6d705d51
disqus_url: http://www.tssci-security.com/archives/2008/03/11/short-term-defenses-for-web-applications/
mod_date: 2008-03-11 18:14:37
parent: 0
post_id: 383
post_type: post
pub_date: 2008-03-11 18:14:37
public: 'yes'
slug: short-term-defenses-for-web-applications
tags:
- Defense
- Security
template: post.html
title: Short-term defenses for web applications

Short-term defenses for web applications
########################################

Before Mike Rothman `posted something about the WhiteHatSec and F5
announcement <http://securityincite.com/blog/mike-rothman/the-daily-incite-march-11-2008>`_,
I really wasn't going to say anything negative or positive. Integrating
web application security scanners with web application firewalls at
first seems like a good idea. However, it appears that most people
forgot about the issues with WAF's: they only prevent very few kinds of
software weaknesses.

**Enough with the WAF's already**

My analysis is the following:

-  Web application security scanners, including vulnerability assessment
   management platforms, portals, and single-panes-of-glass all suffer
   from the same problem: they don't find most of the critical
   security-related bugs in any given web application
-  Web application firewalls do not protect against the most critical of
   security-related bugs
-  Combining web application security scanner technology with WAF
   technology does not equate to a short-term defense solution for any
   business

How do I define a critical security-related bug? How about ones based on
time and state, which could allow checkout of items before paying for
them? This is one of many examples.

**Web application security scanners are awareness tools ; Web
application firewalls are door stops**

Web application security scanners are tools to be used for raising
awareness. Not too many people are aware of or convinced of the need to
secure web applications to any degree of managed risk. Web application
security scanners can help get funding to necessary projects that should
have happened years ago.

Also note that any consulting or software-as-a-service solutions for web
application security that utilize web application security scanner
technology (or worse, perform testing manually) also fit into this
category.

Web application firewalls are a different story. These are purely door
stops because they make awful paper weights. I classify all of this
technology in the category of **epic fail**.

Want some examples of epic failure? How about two recent XSS
vulnerabilities found in F5's management interfaces for their Big/IP
product? Here's one in `their search
functionality <http://securityvulns.ru/Sdocument858.html>`_. Oh look,
another in their `security
reports <http://securityvulns.ru/Sdocument959.html>`_.

However, my favorite (and I've been saving this one for a long time)
comes with `a huge debate on the F5
blog <http://devcentral.f5.com/weblogs/macvittie/archive/2007/11/06/2981.aspx>`_
about whether or not you have to rewrite the code when security-related
bug fixes are in order.

When Lori MacVittie of F5 attacks Mike Sutton of HP SPI Dynamics, Jeff
Forristal of SPI's response is friendly and compromising. My comments
got a little out of control because I honestly couldn't believe what F5
was saying to be true. I was really upset by this blog post, which
clearly had zero understanding of either networks, systems, or
applications.

**Is F5 a security company?**

The best part of `this F5 blog
post <http://devcentral.f5.com/weblogs/macvittie/archive/2007/11/06/2981.aspx>`_
comes before F5 even gets an opportunity to respond to me. It's been
several months (add to this fact that I'm sure that F5 "forgot" to
install blog software that enables nofollow by default), and the blog
spam that covers the page is still there. How could F5 possibly take web
application security seriously if they can't block/deal-with something
as simple as blog spam?

**Secure SDLC solutions can be both short-term and long-term**

I've been told that Secure SDLC solutions are only focused on the
long-term, or they're "too idealistic" or "running to developers to put
out the fire is the wrong approach". This is all untrue. There are
plenty of solutions that every development shop can move towards, which
will give immediate results for both quality and security. Yes, every
development shop is different and has different goals than
operations/security -- but this organizational change must happen.

Using `Subversion <http://subversion.tigris.org>`_ for source-code
revision control? Is your development environment tracking issues such
as defects, but with the ability to add wiki notes as seen in
`Trac <http://trac.edgewall.org>`_? Is there an automatic nightly build
using continuous integration server software such as
`CruiseControl <http://cruisecontrol.sourceforge.net>`_ (or might you
want a push-button approach as seen in
`Luntbuild <http://luntbuild.javaforge.com>`_)? Are your developers
using logins (AKA Identity Management for you security people out there)
that make them personally accountable to each piece of checked-in code,
defect tracking issue, and failed build?

**Some immediate SDLC wins**

Developers have a solution that is bootable from a CDROM today. It's
called `Buildix <http://buildix.thoughtworks.com>`_. Buildix contains
Subversion, Trac, CruiseControl, and an identity management solution to
tie all of these together.

How does this help with security? Well, if your development team isn't
doing the basics (and doing them well), then you can forget about other
SDLC process improvements. The trick here isn't to push this as a
security issue. Make it a quality issue. Say it has something to do with
Sarbanes-Oxley. Oh - you're a private company? Consider looking at the
BITS Shared Assessments Program (which has all but replaced SAS 70 Type
II). There are many companies that don't need to meet S-OX 404 that
still follow COBIT, ITIL, or ISO27K as much as possible, including using
internal auditing aggressively.

Requirements gathering is the most important phase of any
quality/security software development lifecycle. For those of you who
aren't familiar with the
`V-Model <http://en.wikipedia.org/wiki/V-Model>`_ and `Fagan
inspection <http://en.wikipedia.org/wiki/Fagan_inspection>`_ -- it's
important to note that these start in the requirements phase. Testing
software shouldn't happen only by a QA team as acceptance testing. Peer
review shouldn't be an after-thought that only applies to the code
post-build.

Fagan inspection (complete as possible) and test cases (at least a few)
should be handled before any design or decisions about the application
are made. If the moderator is told that unit testing that looks for
strict whitelist input validation on all HTML, CSS, XML, and Javascript
is required -- he/she may be confused at first. Showing this person some
simple XSS, CSRF, and XXE attacks with an awareness test (see web
application security scanners, above) might help encourage this lead
software engineer to understand some backstory.

My favorite short-term win for any Secure SDLC program is to integrate
the concept of `continuous-prevention
development <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_.
Continuous-prevention development is Regression Testing 2.0.

**Your IDE grew up but your development shop is stuck in 1999**

Unit testing can take place in the IDE (as well as during integration
testing at build time, which can be automated by a build server). Often
this `can also be done continuously <http://ct-eclipse.tigris.org>`_. It
can be combined with `static checking <http://pmd.sourceforge.net>`_ and
`code coverage <http://www.eclemma.org>`_. Need runtime testing? Just
add `Canoo
WebTest <http://webtest.canoo.com/webtest/manual/WebTestHome.html>`_ or
`Selenium <http://selenium.openqa.org>`_ during integration.

Additional security properties can also be tested in the IDE with some
simple changes. Many developers don't know how to install their own web
server, but any developer-tester should know how to run an embedded web
server such as `Jetty <http://www.mortbay.org>`_ along with an embedded
database such as `H2 <http://www.h2database.com>`_ (or full solutions
such as `PicoContainer <http://www.picocontainer.org>`_). It's almost to
the point where not only are in-IDE continuous unit tests reality, but
also component tests or full system tests.

In summary, continuous in-IDE system testing means that anything a web
application security scanner can test -- a developer can perform more
accurate tests while actually writing the code in real time. Of course,
this will have less false positives, less false negatives, and allow for
easier tuning and customization at much cheaper pricepoints (note: all
of the software linked above is open-source). By adding
"continuous-prevention" regression + fix checks, in-IDE unit testing
prevents pilot error before costly peer review is even necessary.

**The "A[OP]-Team"**

There is no doubt that security testing, secure coding standards, secure
code review, and other Secure SDLC improvements provide better
alternatives to the classic "scan and patch" hamster-wheels-of-pain that
web application security vulnerability assessment management solutions
provide.

However, what about solutions such as Aspect-oriented programming (AOP)?
Or `integration of AOP and dependency
injection <http://www.csg.is.titech.ac.jp/projects/gluonj/>`_? It looks
to be possible to hire a team of coders to write code on top of your
already existing codebase. This code will secure your code from all
types of web application security risks. It won't just protect the OWASP
T10-2007 A1-A2 critical software weaknesses (one of the limitations of a
WAF), but also the other 640-some listed in the MITRE CWE node
structure.

Would you consider hiring such a crack team of hotshot security
developers?

***AOP and Dependency Injection are not long-term solutions. Any
development shop with the proper expertise can implement these
immediately. Consulting groups will start to make AOP/DI solutions
available at a much lower overall cost than a $25K/year SaaS scanning
solution combined with a $70K WAF appliance pair.***
