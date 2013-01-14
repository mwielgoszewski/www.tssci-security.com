author: dre
disqus_id: 3fa51ea6-bbdb-4aba-bcdf-a4d00133218e
disqus_url: http://www.tssci-security.com/archives/2008/06/23/week-of-war-on-wafs-day-1-top-ten-reasons-to-wait-on-wafs/
mod_date: 2008-06-23 21:37:24
parent: 0
post_id: 417
post_type: post
pub_date: 2008-06-23 21:13:01
public: 'yes'
slug: week-of-war-on-wafs-day-1-top-ten-reasons-to-wait-on-wafs
tags:
- Defense
- Security
template: post.html
title: 'Week of War on WAF''s: Day 1 -- Top ten reasons to wait on WAF''s'

Week of War on WAF's: Day 1 -- Top ten reasons to wait on WAF's
###############################################################

Hello, and welcome to the Week of War on WAF's, the same week that ends
whereby PCI-DSS Requirement 6.6 goes into effect as a deadline for many
merchants. Today is the first day. So far, Marcin has identified `some
of the problems with web application
firewalls <http://www.tssci-security.com/archives/2008/06/23/web-application-firewalls-a-slight-change-of-heart/>`_.
We were able to identify what we would like to see in WAF's, both
commercial and open-source in the future (since they do not work
properly today). In this post, I want to start off the week by listing
the Top ten reasons to wait on WAF's.

**Top tens reasons to wait on WAF's**

#. WAF vendors won't tell us what they don't block
#. Requires a web application security expert with code knowledge, HTTP
   knowledge, and a lot of time / careful planning to configure
#. Gartner leaves WAF's off their Magic Quadrant for web application
   security on purpose
#. No truth in advertising leads to a false sense of security
#. Vendors show signs of desparation, claiming imperatives and
   illegality in addition to just the standard FUD
#. Attacks that are claimed to be blocked are coincidentally also found
   in WAF solutions themselves (e.g. XSS in the security reports or web
   configuration panels)
#. Every organization that has installed a blocking WAF has also been in
   the media for known, active XSS and/or SQL injection
#. Second-order (i.e. non-HTTP or unprotected path) injections cannot be
   blocked or even detected
#. Real-world web application attacks are more often strings of attacks,
   or at the business logic layer -- WAF's cannot detect or prevent
   these kinds of attacks
#. PCI-DSS Requirement 6.6 can be met with compensating controls, web
   application security scanners, automated security review tools,
   and/or manual review of the pen-test or code varieties

We understand and realize that the ideas of a blocking WAF are very
popular right now. There are many supporters behind the WAF and VA+WAF
movements. While we'd also like to support what the rest of the
community sees as the future -- we also want to make sure that it is the
right thing to do.

One of the best ways to move forward with any given technology is to
look at its faults. We learn best in IT when things fall apart -- when
they break. TS/SCI Security has put a lot of thought, practice, and
research into WAF technology. Marcin's most recent post demonstrates our
list of requirements (e.g. block outbound) and nice-to-have's (e.g. good
documentation). Some vendors might already have this sort of outbound
blocking functionality, and we're not even aware of it! Other vendors
could have clearly defined "VA+WAF blocking" documentation, which could
even be internal engineering or strategy documents that should be out in
the open (or at least available to paying customers).

Also -- if we do end up demonstrating that WAF, VA+WAF, APIDS, ADMP, or
other solution is less viable than a new, better idea -- let's move this
research into the forefront.
