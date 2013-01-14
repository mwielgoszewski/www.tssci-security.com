author: dre
disqus_id: 80f2a3f2-3720-42ba-bcc0-17d3ae68f507
disqus_url: http://www.tssci-security.com/archives/2008/06/27/week-of-war-on-wafs-day-5-final-thoughts/
mod_date: 2008-06-27 16:17:40
parent: 0
post_id: 421
post_type: post
pub_date: 2008-06-27 16:17:40
public: 'yes'
slug: week-of-war-on-wafs-day-5-final-thoughts
tags:
- Defense
- Security
template: post.html
title: 'Week of War on WAF''s: Day 5 -- Final thoughts'

Week of War on WAF's: Day 5 -- Final thoughts
#############################################

Did we learn anything about web application firewall technology this
week?

I hope so. However, my gut tells me there is an overriding feeling of
ambiguity around this technology. People want WAFs, but they don't know
why. Organizations everywhere think this is the best or only short-term
answer to the web application security problem.

The PCI SSC, who has set June 30th, 2008 as the deadline for compliance
with Requirement 6.6, also appears to be wishy-washy on the whole deal.
I read the following two articles this morning about PCI-DSS Requirement
6.6 and the use of web application firewalls. While the titles of the
articles may appear many are still leaning on or towards WAFs -- after
reading the information and quotes, I think the titles might be
misleading.

-  Computerworld, `Web firewalls trumping other options as PCI deadline
   nears <http://www.computerworld.com/action/article.do?command=viewArticleBasic&articleId=9104118>`_
   -- Advantage over appsec approach mainly one of convenience
-  CSO Online, `FUD Watch: Vendor Hype Escalates Over PCI
   Deadline <http://www.csoonline.com/article/413963/FUD_Watch_Vendor_Hype_Escalates_Over_PCI_Deadline>`_

Web application security experts Mike Andrews and Robert Auger also have
some interesting things to say. They seem to be very set on the idea
that WAF (with proper blacklists) or VA+WAF (to manage the blacklists)
are fair enough temporary solutions until organizations can implement
secure coding.

-  Mike Andrews, `VA+WAF: that's
   hot! <http://www.mikeandrews.com/2008/06/19/vawaf-thats-hot/>`_
-  cgisecurity.net, `My current stance on Web Application
   Firewalls <http://www.cgisecurity.com/2008/06/10>`_

Some interesting things can go wrong during the WAF implementation
phase. I can identify the following problem areas that may have many
organizations wondering why they went the WAF route:

#. You think that a network engineer or network security expert could
   get up to speed quickly through training or lab-time. However, I
   think the average time to become a web application security expert is
   3-4 years of specialization. Imagine how many developers could have
   been trained or worked on collaborative processes with IT security in
   that time period.
#. Blacklist technology (especially VA+WAF) is going to help with false
   positives. However, what about general performance problems? If
   performance or availability issues occur, the first thing thrown out
   will be the WAF. What good is a device that is constantly removed
   from the architecture and then only put back in to meet compliance
   issues?
#. There is a lot of technology out there to detect specific WAF
   products. It's been written about in books. Attack tools such as w3af
   utilize plugins such as
   `detectWAF <http://w3af.sourceforge.net/pluginDesc.php#detectWAF>`_.
   Vulnerabilities exist in WAF products in the same way that they exist
   in all software. Adversaries are already using this information to
   their advantage. Using a WAF can indeed make you less secure. In
   order to provide a product that will protect modern web applications,
   we must first test the products ourselves. There is more complexity
   in the average WAF than in the average Intranet web application --
   who is going to provide the countless hours of secure code review and
   manual pen-testing needed for these WAF products? Or are we going to
   use them blindly without considering the consequences?

What are some short-term alternatives?

#. Multiple WAF solutions -- one solution that focuses on "outbound" web
   traffic, and another that is tuned to your specific application (e.g.
   language, framework, components in use, et al). If your web
   application uses well-formed, valid XHTML -- the outbound filtering
   requirement is already fulfilled. Refactoring your content to XHTML
   is a snap. Many books and tools exist to help in this process
   (Dreamweaver, xmllint, TagSoup, NekoHTML, and HTML Tidy just to name
   a few).
#. A softer, lighter version of Agile/Test-first development practices
   with basic unit tests that correct input validation issues. This
   would be equivalent or better than WAF in practice. James Shore
   discusses how to implement this sort of idea in an article,
   `Continuous Integration on a Dollar a
   Day <http://jamesshore.com/Blog/Continuous-Integration-on-a-Dollar-a-Day.html>`_.
#. Even Aspect-oriented programming will show immediate value, as the
   cost proposition lowers when you already have the existing talent to
   implement AOP. If you have developers that know AspectJ -- input
   validation routines can be added with point-cuts almost overnight.

The problem with these three short-term solutions is that they involve
talking to your development teams. Do they have a reason to avoid using
valid XHTML? Maybe their waterfall mindset precludes them from being
able to move to a situation where "building code" is more important than
"programming" (although I would argue that it's a developer's job to
write buildable code).

What I think is most sad about the state of WAF technology is that a
single, cheap developer could easily replace all of the normal WAF
functionality in the code using basic unit testing. A talented developer
who knew AOP could do much more than a WAF, and still at a much lower
overall cost. Some organizations that are implementing WAF are having
the developers manage the solutions instead of network engineers or IT
security. We're hoping that this situation will allow the developers to
think up better ideas as well as learn where their applications are
failing.

In fact, a non-developer: such as someone in marketing who uses
Dreamweaver, could also do almost as much as a normal WAF by saving
their content as valid XHTML. This would buy the organization basic
application security functionality, which is what WAF also attempts to
do.

**Summary**

We know that WAF's appear to be the easiest answer to the PCI-DSS
Requirement 6.6. But what if there was an even more simple answer? Talk
with your QSAC, QSA auditor, and an external third-party such as a web
application vulnerability assessor, software risk expert, or strategy
consultant about possible compensating controls, such as:

-  Unit testing and integration unit testing for security properties as
   part of a daily, standard build
-  Aspects for security, written by a internal developer who can front
   the web application in a similar way, but that is closer to the code
-  Transformation of non-standard HTML to valid XHTML by a web designer
   or content manager

If you are going to choose a web application firewall, we suggest:

-  WAF solutions that have been security tested and risk assessed by
   third parties that specialize in security appliance/product
   assessments
-  A product that doesn't affect performance because it only works on
   outbound traffic (not inbound), or only turns itself on when an
   attack is in-progress
-  Instructional capability and training for the solution is cheap/free,
   easy to find, and well-documented everywhere

Rich Mogull also has some very new suggestions that he would like to see
as a future for WAF in his blog post, `The Future of Application and
Database Security: Part 2, Browser to
WAF/Gateway <http://securosis.com/2008/06/27/the-future-of-application-and-database-security-part-2-browser-to-wafgateway/>`_.
It's also worth a read!
