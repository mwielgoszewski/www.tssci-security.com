author: dre
disqus_id: 11d5b584-10ad-4e69-938c-c5641fb82d07
disqus_url: http://www.tssci-security.com/archives/2008/04/28/new-blog-over-at-neohapsis-labs/
mod_date: 2008-04-29 08:21:31
parent: 0
post_id: 398
post_type: post
pub_date: 2008-04-28 23:24:45
public: 'yes'
slug: new-blog-over-at-neohapsis-labs
tags:
- privacy
- security
- news
template: post.html
title: New blog over at Neohapsis Labs

New blog over at Neohapsis Labs
###############################

The fine folks over at `Neohapsis Labs <http://labs.neohapsis.com>`_
appear to have a new blog focused on security related information.
Technically, I guess they've had it up since January, but the posts are
more frequent now. I just added them to my RSS feeds.

Both Mike Murray and Cris Neckar have posted some interested tidbits
ranging from technical topics such as `Connect-back
shells <http://labs.neohapsis.com/2008/04/17/connect-back-shell-literally/>`_
as well as the `non-compliance issues for Web application
security <http://labs.neohapsis.com/2008/04/25/weak-application-security-non-compliance/>`_.

I also recently noticed that Neohapsis is now a PCI-approved QIRA
(Qualified Incident Response Assessor). One of the drawbacks of this
program is that it appears that Visa can play the trump card and decide
to respond to any incidents without indepdenent third-party review.
Imagine if they had the same rules applied to QSA or ASV assessments!

*Update (Tue Apr 29 06:15):* Craig Smith just posted a new blog entry on
`Seed Racing <http://labs.neohapsis.com/2008/04/29/seed-racing/>`_: *The
Art of Exploiting Race Conditions in Random Number Generators*, a paper
written by himself, Patrick Toomey, and Cris Necker. In the paper, they
discuss a common PRNG vulnerability and cite an example in .NET. A quick
run-down:

    In a localhost experiment Neohapsis sent 67,000 requests to a server
    with a random password generation routine similar to the one in our
    example. We only received 208 unique responses from the server. That
    is approximately 322 duplicate passwords. Again, that is under a
    rather ideal situation, you probably will not have that many
    duplicates in a real world scenario
