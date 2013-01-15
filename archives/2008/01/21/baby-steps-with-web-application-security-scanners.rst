author: dre
disqus_id: 7e9b66c3-6815-4e56-9de9-7010a81f3431
disqus_url: http://www.tssci-security.com/archives/2008/01/21/baby-steps-with-web-application-security-scanners/
mod_date: 2008-01-21 19:37:02
parent: 0
post_id: 367
post_type: post
pub_date: 2008-01-21 19:37:02
public: 'yes'
slug: baby-steps-with-web-application-security-scanners
tags:
- tech
- security
template: post.html
title: Baby steps with web application security scanners

Baby steps with web application security scanners
#################################################

Web application security scanners have not matured much. I guess patent
wars and company-buyouts have caused a lot of stagnation over the past
year. However, I think the problems may run deeper than just controversy
and industry drama.

AppScan DE and DevInspect as exceptions -- largely the web application
security scanner industry is filled with technology that has to spider,
or *crawl*, a website.

However, in most cases, scanners do not crawl the application -- only
the web server HTML content and the subsequent links. There is a process
known as *link discovery*, where the spider in a scanner will typically
find links and follow them. But what if the link information is inside a
Flash file, or other part of the application that a typical
spider/crawler can't get into?

This is why I like the word, "Crawling", to accurately describe the
process a web application security scanner goes through when it spiders
a site and does link discovery. Sure, the spider can use robots.txt, or
a `Sitemap protocol <http://en.wikipedia.org/wiki/Google_Sitemaps>`_ to
get a better picture (or a mostly complete map) of the links the crawler
must find and explore. Looking at the big picture -- a complete and
accurate crawl of the application -- is far from realized using these
tools today.

I also like to use the word "Walking" (i.e. an evolution of "Crawling")
to refer to scanning technology that does more than simple link
discovery using robots.txt, Sitemap, and/or
`"grep" <http://w3af.sourceforge.net/pluginDesc.php#grep>`_ type
techniques. For example of a "walker", there is the `OWASP Sprajax
Project <http://www.owasp.org/index.php/Category:OWASP_Sprajax_Project>`_.
While limited (as discussed in the book *Ajax Security*), Sprajax is
capable of enumerating call endpoints in an ASP.NET AJAX application
(used to be Microsoft Atlas) and fuzz the inputs found.

In order for a scanner to be useful, it also has to be functional. I am
not going to purchase a commercial product that is unable to support
common web application technology (Ajax is found in over 30% of web
applications, while Flash is found in at least 40%). With `numbers like
these <http://www.sitepoint.com/reports/reportwebsurvey2006/freepreview.php>`_,
we're talking about common adoption. This is not a trivial thing when
you have to assess many different web applications day-to-day. These
technologies are growing at a very fast pace -- and we have to look at
other RIA/RCP frameworks that are emerging on the scene.

Over 70% of web applications primarily use CSS, only occasionally using
HTML features such as tables. Only 2-3% of popular websites are without
CSS. Yet, the web application security scanners do not look into the
`formatting/presentation
layer <http://www.ejang.net/tt/entry/Untitled1675>`_ -- nor do they
utilize attack-vectors such as `HTML/CSS injection of
HTML/CSS <http://i8jesus.com/?p=10>`_ (as opposed to HTML injection of
Javascript, which more widely a concept of XSS).

With these kinds of issues, I prefer open-source tools to costly
commercial scanners -- which is why I mention them often. I don't
believe in `leading with a
tool <http://www.darkreading.com/document.asp?doc_id=142829>`_ because
the tools are often quite poor. There are excellent approaches that are
completely different than the typical situation where people jump to a
web application security scanner to solve a particular problem.

The best current approaches all seem to revolve around strategy
consulting that recommends Fagan inspection as a process-oriented
solution to secure coding. Fagan inspection is just the beginning of a
secure coding process. Many are referring to this new age of security
consulting as "Secure SDLC" or "Security in the SDLC", and the practices
of the Microsoft SDL, OWASP CLASP, and Cigital Touchpoints are the usual
suspects.

When practices such as inspection and
`developer-testing <http://en.wikipedia.org/wiki/Test-driven_development>`_
are encouraged early in the SDLC (requirements, design, and programming
phases), forced at build-time (integration phase), and verified before
release (functional, regression, and operations testing phases) -- this
is software assurance / software security SixSigma in 2008. Of course,
this is the exact model that I suggest in my `CPSL "Secure SDLC"
process <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_.

Secure SDLC techniques such as secure inspection and unit tests that
assert software weaknesses (such as CWE or OWASP T10-2007) don't need to
worry about "Crawling" or "Walking". They're already "Running" at full
speed.

    The TS/SCI Security Team will return with Day 10 of the ITSM
    vulnerability assessment techniques tomorrow!
