author: dre
disqus_id: fd99ab68-9bee-4ba2-8e2d-0e47db5b2e2b
disqus_url: http://www.tssci-security.com/archives/2008/03/17/qualities-of-good-pen-testers/
mod_date: 2008-03-17 23:14:34
parent: 0
post_id: 385
post_type: post
pub_date: 2008-03-17 23:14:34
public: 'yes'
slug: qualities-of-good-pen-testers
tags:
- Hacking
- Security
- Work
template: post.html
title: Qualities of good pen-testers

Qualities of good pen-testers
#############################

**Taking care of business**

Before I get into this post, I wanted to give you some updates on
progress of other projects here at TS/SCI Security.

First off, I've been working on the `OWASP Evaluation and Certification
Criteria
Project <http://www.tssci-security.com/archives/2007/12/20/spread-the-owasp-holiday-cheer/>`_
and hope to announce something very soon. Secondly, you'll want to take
a look at `today's
post <http://www.tssci-security.com/archives/2008/03/17/implications-of-the-new-school/>`_
on *The New School of Information Security book* (Acidus also did a
`writeup <http://www.memestreams.net/users/acidus/blogid10326143/>`_).
As a side-note, there was an `interesting data breach recently
announced <http://www.computerworld.com/action/article.do?command=viewArticleBasic&articleId=9068999>`_,
which makes information on breaches even that much more relevant.

Lastly, I wanted to announce the return of the "`Day X: ITSM
Vulnerability Assessment
techniques <http://www.tssci-security.com/archives/2008/01/14/day-6-itsm-vulnerability-assessment-techniques/>`_\ ".
Expect a post everyday with new and relevant material.

**Positive spin on pen-testers**

Matasano posted last week on the `Seven Deadly Pen-Test
Sins <http://www.matasano.com/log/1026/seven-deadly-pen-test-sins/>`_,
with follow-ups from two other blogs I'm aware of: `Mike
Andrews <http://www.mikeandrews.com/2008/03/15/seven-deadly-pen-test-sins/>`_
and
`BlogFranz <http://blogfranz.blogspot.com/2008/03/pen-test-sins-mea-culpa-mea-culpa.html>`_.
This should be a hot-topic!

At TS/SCI Security, we like to focus on the positive instead of the
negative. Pen-testing, especially application pen-testing/review is an
important topic to us. So here's our rundown of what we feel is
important to know about pen-testing, as a response to what Matasano
wrote.

**Seven things you can do to improve your pen-test results**

1. **Time Management**. If you're not already using
`GCalendar <https://www.google.com/calendar/>`_,
`RTM <https://www.rememberthemilk.com/>`_ (`with
GCal <http://blog.rememberthemilk.com/2006/11/add-your-tasks-to-google-calendar.html>`_),
`Twitter <https://twitter.com>`_, `Sandy <https://www.iwantsandy.com>`_,
and `Jott <http://jott.com>`_ (thanks to Dennis Groves for some of
these!) -- take a look at how these can help you manage your time
better.

-  Good pen-testing takes time. If you haven't gone through everything
   you need in #2, then you might need more time. What I've found is
   that pen-testers need to frame their pen-tests after good strategy
   consulting (1-2 days of a
   `SWOT <http://en.wikipedia.org/wiki/SWOT_analysis>`_ or similar
   analysis). If, like mentioned in *The New School*, the "basics" are
   not taken care of -- then help the client work on asset,
   configuration, and change management before doing a vulnerability
   assessment.

2. **Utilize applicable MITRE resources**.
`CAPEC <http://capec.mitre.org/>`_ (for runtime testing) and
`CWE <http://cwe.mitre.org/>`_ (for static analysis testing, which may
include reversing) should be utilized throughout. Be careful to only
choose the relevant aspects of each (relevant to the application, not
your skill or other criteria).

-  My favorite MITRE resource is the `Introduction to Vulnerability
   Theory <http://cwe.mitre.org/documents/vulnerability_theory/intro.html>`_,
   which Marcin and I spoke about at ShmooCon in `our talk on Path
   X <http://www.tssci-security.com/publications/>`_. It may take some
   extra time to spell out exactly how the vulnerabilities were found
   using this method, but it will help future assessment work, including
   repeat client business.

3. **Work with developers**. Assuming that the dev team is already doing
`Continuous
Integration <http://en.wikipedia.org/wiki/Continuous_integration>`_ (or
something like it), `Fagan
inspection <http://en.wikipedia.org/wiki/Fagan_inspection>`_, using the
`V-Model <http://en.wikipedia.org/wiki/V-Model>`_ (in the requirements
phase), `continuous-prevention
development <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_,
integrating concepts from the Microsoft SDL (or similar secure SDLC),
and automated integration testing -- then get involved right away with a
`software
walkthrough <http://en.wikipedia.org/wiki/Software_walkthrough>`_ with
all of the key players.

-  Standard C and assembly code is difficult to reverse the design from,
   but they are becoming more easy to reverse. In the case of Java, C#,
   and C++ -- UML can be extracted to elicit the design of the
   application. Using other tools such as Klocwork K7, Fujaba, or IBM
   Rational Rose on the UML diagrams will possibly provide faster
   program understanding. Left with the source code, GrammaTech
   CodeSurfer also aids understanding, but open-source tools such as
   Doxygen can also be of use.

4. **Automate development-testing**. While web application security
scanners (or fat application-based fuzzers) collectively only typically
find at-most 30% of the bugs with a large amount of false positives,
there are plenty of developer tools that don't have these problems.

-  Developers should be made aware of integration testing with Canoo
   WebTest. Business analysts, customers, and test managers can submit
   table-driven test cases using FitNesse (a wiki that allows for
   collaborative test case design), along with additional tools such as
   `HtmlFixture <http://fitnesse.org/FitNesse.HtmlFixture>`_. I've spoke
   to `the benefits of Dependency
   Injection <http://www.tssci-security.com/archives/2008/03/11/short-term-defenses-for-web-applications/>`_
   before, as well as automating Continuous Integration both inside of
   the IDE as well as during the application builds.
-  Automation is good for developers and the modern tools surrounding
   test automation are extreme improvements over last decade's
   technology. However, test cases and test-first strategies still find
   only as much as half (possibly up to 70% or more) of the bugs. It's
   good to combine `exploratory
   testing <http://en.wikipedia.org/wiki/Exploratory_testing>`_ with
   scripted (i.e. from a test case) testing. Allot some time with a
   buddy and explore the application as it wasn't meant to be run after
   learning as much as you can from the developers and their automated
   tests.

5. **Peer review your work**. This one is easy. Find a friend and have
him/her check your work. The more eyes you get on your pen-test and
assessment work, the less likely you're going to miss something.

-  Consider a good workflow approach such as the open-source `Review
   Board: Online Code Review
   Tool <http://www.infoq.com/news/2008/02/reviewboard>`_ or the
   commercial Atlassian set of project management software, including
   JIRA, FishEye, and Crucicble. Many `projects such as Adium do code
   review <http://www.infoq.com/news/2007/10/Hosey-Code-Reviews>`_ based
   on email notification of new source code revision control changes.

6. **Stay up-to-date on both process and technology**. Read
forums/blogs/mailing-lists, trade journals/magazines, and books. Attend
conferences. Keep it cheap and continuous if possible.

-  I try to read every security-related book that pops up on `Safari
   Library <http://www.safaribooksonline.com/products/products.php>`_
   and `ACM's access to
   Books24x7 <http://www.acm.org/membership/discounts/books241127>`_.
   `Audible <http://www.audible.com>`_/Amazon are certainly other
   resources, especially for non-technical solution learning. Checking
   yourself at least once a year on a certification or re-certification
   program will make strides in your professional development.
-  Using `GReader <https://www.google.com/reader/>`_ and sharing daily
   using it's sharing features and
   `OPML <http://en.wikipedia.org/wiki/OPML>`_ with your colleagues is
   important. Get involved in conversations on forums, IRC channels,
   blogs, and mailing-lists is likely the largest win here.

7. **Go back to basics**. Set a minimum bar of maturity with clients
before you pen-test or do an assessment. The BITS Shared Assessments
Standardized Information Gathering questionnaire is a nice start,
especially combined with Visible Ops, ITIL, COBIT, ISO27K, PCI-DSS,
PABP/PA-DSS, ISECOM, and OWASP information on process.

All of the above is going to go a long way towards improvements to what
pen-testers and vulnerability assessors do. There's very few good
certifications out there for what we do, and it's difficult to measure
what we do. Put the cards on the table up front with your clients and
teach them your methodology and approach.
