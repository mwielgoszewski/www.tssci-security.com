author: Marcin
disqus_id: 6ab46fa8-a8fa-493e-8ff0-37820543d216
disqus_url: http://www.tssci-security.com/archives/2008/02/17/path-x-explosive-security-testing/
mod_date: 2008-02-17 06:51:12
parent: 0
post_id: 372
post_type: post
pub_date: 2008-02-17 06:51:12
public: 'yes'
slug: path-x-explosive-security-testing
tags:
- conferences
- security
template: post.html
title: Path X -- Explosive Security Testing

Path X -- Explosive Security Testing
####################################

We have received details from ShmooCon with the scheduled day and time
of our talk. We have been scheduled for the last talk on Sunday at 12pm
noon (before the room split) on the "Build It" track. I'm not sure
whether that's a good thing or bad thing, but we'll see. We're excited
about the research we've done thus far -- we haven't seen much being
done in this area, and we hope you see the value in it all. Check out
the ShmooCon `schedule <http://shmoocon.org/schedule.html>`_ and
`speakers <http://shmoocon.org/speakers.html>`_ list for the full
schedule and list of all presentations and bios.

In this talk, we'll discuss how using XPath can aid security testing
during unit tests and in the integration phase of the software
development lifecycle. By using XPath, it's easier to share data between
both open source and commercial quality testing, source code analysis
tools and web application scanners.

First we'll go over a little history behind using regex in security
tools and the paradox of parsers both being a vulnerability problem and
a solution. Later, we'll explain XPath and how it's used in testing and
then some XML parsing implementations in various languages. We'll close
out our talk with a discussion on web application security internals,
and how you can begin to [with relative ease] write your own web
application security scanners.

"So all this talk about XPath without even mentioning what it is or what
it does," you say? Well, `XPath <http://en.wikipedia.org/wiki/XPath>`_
isn't really a tool. Tools use XPath to locate elements in web pages.
Other ways of locating elements in a web pages is using DOM (Document
Object Model) selectors or CSS selectors. An example of each is shown
below, which would select the <h1> element within the <div id="header">:

DOM:
 ``document.getElementById('header').getElementsByTagName('h1');``

CSS:
 ``div#header>h1``

XPath:
 ``//div[@id='header']/h1``

So how do I use XPath? How does it apply to security? Those who've read
*Secure Programming with Static Analysis* by Brian Chess and Jacob West
would make the connection to using abstract syntax trees and lexical
analysis to identify software vulnerabilities. In our talk, we look at
using XPath expressions to find flaws in web applications.
