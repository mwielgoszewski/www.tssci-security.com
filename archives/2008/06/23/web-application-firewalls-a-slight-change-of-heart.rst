author: Marcin
disqus_id: 3e7b86cd-2750-421c-9545-cdd98ce61dda
disqus_url: http://www.tssci-security.com/archives/2008/06/23/web-application-firewalls-a-slight-change-of-heart/
mod_date: 2008-06-23 10:35:53
parent: 0
post_id: 416
post_type: post
pub_date: 2008-06-23 10:35:53
public: 'yes'
slug: web-application-firewalls-a-slight-change-of-heart
tags:
- Defense
- Security
- Work
template: post.html
title: 'Web application firewalls: A slight change of heart'

Web application firewalls: A slight change of heart
###################################################

We've been beating the drum for some time now, expressing our opinions
of web application firewalls (WAFs). You might have sided with us on
this issue, are against us, or are just tired from it all by now. This
post is about to change all that, and show that we are not 100%
anti-WAF, and that there are some useful applications for them.

**Why WAFs do not work**

In a post on why `most WAFs do not
block <http://jeremiahgrossman.blogspot.com/2008/06/why-most-wafs-do-not-block.html>`_,
Jeremiah Grossman quoted Dan Geer:

    When you know nothing, permit-all is the only option. When you know
    something, default-permit is what you can and should do. When you
    know everything, default-deny becomes possible, and only then.

Jeremiah then stated that to implement a default-deny WAF (which would
offer the most security, but carries with it the greatest business
impact), you need to know everything about your app, at all times --
even when it changes. How appealing is this, given the amount of
resources you currently have? Who will be responsible for maintaining
the WAF? These are all questions you should be asking yourself. Jeremiah
then goes on to say that default-permit is necessary in web applications
-- going against everything we've learned in security over the past 40
years. Wait... what??

**Some context that can attest to our reasoning**

Over the last several weeks, I've been evaluating several web
application firewalls. They all have their own list of cons and more
cons. On my first day, having sat down at their consoles, I was a little
overwhelmed by all the options present -- application profiles,
signatures, policies, etc. It all came to me as I worked through it and
read the manuals, though frankly, I don't see how anyone without a web
application security background can keep up with it all. I fear these
devices will be deployed and forgotten, relying solely on their ability
to learn and self-adjust.

Let's talk about the consoles used to monitor and maintain the WAF. One
vendor had a fat app, which was a bit clunky, non-intuitive and had
multiple usability issues. The number one issue that comes to mind is on
the monitoring panel -- to watch alerts in real-time, you need to set an
automatic refresh rate which updates the entire display, which makes it
impossible to analyze HTTP requests/responses during this time. If
you're scrolled down to a certain location of a request, and the console
refreshes, you lose your position and are brought back up to the top. I
don't understand why the entire screen had to be updated, rather than a
particular frame.

Another vendor used a webapp to manage itself, which was in my opinion
much nicer and easier to use, albeit slower. When on the alert
monitoring page, you had to manually click a button to refresh the
alerts, and viewing requests/responses was a major pain. The application
utilized AJAX on pages that could do without, but in areas that could
benefit from them, they resorted to old web tactics.

In the course of my testing, I started by taking `RSnake's XSS
cheatsheet <http://ha.ckers.org/xss.html>`_ and creating
`Selenium <http://selenium-core.openqa.org/>`_ test cases for attacking
our own vulnerable web application (See `our talk, Path X from
ShmooCon <http://www.tssci-security.com/publications/#pathx>`_). For
those unfamiliar with Selenium, it's a browser driver that performs
functional testing, though we have showed how it can be used for
security testing. We didn't use
`WebGoat <http://www.owasp.org/index.php/Category:OWASP_WebGoat_Project>`_
(or any other `vulnerable
apps <http://www.owasp.org/index.php/Phoenix/Tools#Test_sites_.2F_testing_grounds>`_),
reasoning that the vendors must have tested against those and know them
inside out for just such occasions. Renaud Bidou had an excellent
presentation on `How to test an IPS
[PPT] <http://cansecwest.com/slides06/csw06-bidou.ppt>`_ from CanSecWest
'06 which I believe can be applied to testing WAFs for those interested.
Suffice to say, the WAF's did not detect ALL of the XSS from the
cheatsheet that was thrown at it, which is pretty sad. I would have
expected they at least get that right.

That brings us to second-order, persistent XSS and SQL injection
attacks. When a web application strings together data from multiple
sources, detection of such attacks can be very hard. The WAF cannot
account for this logic, thus allowing an attacker to effectively bypass
the WAF by staging his XSS/submitting multiple payloads to various
sources. When the application then pieces the data together, an XSS (SQL
injection, etc) condition exists. The problem with this? Your WAF never
detected it, and you have no idea your site's been attacked and is now
hosting malicious scripts.

There are just some attacks a WAF will never detect. HTML / CSS
injection through HTML / CSS is just one example. Go on over to
`http://google.com/search?q=cache%3Atssci-security.com <http://google.com/search?q=cache%3Atssci-security.com>`_
-- can you describe what is going on here?

Or how about CSRF? Insecure session management? What can a WAF do to
protect against business logic flaws? We can go on and on, and yet
vendors still claim protection against OWASP Top 10, which if you
believe shows you know nothing about web application security.

**How WAFs can help**

So I lied, we haven't changed our minds about WAFs. But wait! I'll let
you know what would change our minds at least a little, which would show
that WAFs can have their purposes. Without this though, I can't
recommend any organization spend the money on such devices -- especially
if they need to meet compliance requirements where other options do
exist.

*The value of WAF Egress, revisited*

What should a WAF do? **`Block
attacks <http://ha.ckers.org/blog/20070213/comparingcontrasting-network-and-application-security/#comment-17912>`_
on the
`egress <http://ha.ckers.org/blog/20070608/the-virtues-of-waf-egress/>`_
/
`outbound <http://ha.ckers.org/blog/20080203/inline-or-out-of-bounds-defeating-active-security-devices/#comment-60864>`_**,
while staying out of the inbound flow of traffic. I'm not talking about
signature based blocking either. This is the tough part, because it's
almost impossible. One way I see it working though, is if the
application keeps the content (HTML), presentation (CSS), and behavior
(JavaScript) separated. The application should not serve any inline
scripts, but instead serve script files that would alter the content on
the client side. This would make, e.g. outbound XSS prevention possible
because a WAF could then detect inline scripts in the content. None of
the WAFs I evaluated could detect a client being exploited by a
persistent XSS condition. This would also tell me how many users were
affected by the XSS attack, which we haven't seen any numbers on apart
from the `number of friends Samy had <http://namb.la/popular/>`_ when he
`dropped his pants and took a dump all over our
industry <http://ha.ckers.org/blog/20071117/owaspwasc-appsec-2007-wrap-up/>`_.

    Jeremiah and I got a picture with him wearing ¢â‚¬ÅSamy is my hero¢â‚¬?
    shirts. I haven¢â‚¬â„¢t laughed that hard in a long time! But to quote a
    sanitized version of what one guy said, ¢â‚¬ÅSamy knew nothing about
    webappsec and one day he walked in, dropped his pants and took a
    huge dump on our industry and then left again. And we just looked
    around at one another and said, ¢â‚¬ËœWhat just happened?¢â‚¬â„¢¢â‚¬?

Another way to get this right is to apply the work done by Matias Madou,
Edward Lee, Jacob West and Brian Chess of Fortify in a paper titled:
`Watch What You Write: Preventing Cross-Site Scripting by Observing
Program Output
[PDF] <http://www.owasp.org/images/9/9d/OWASP-AppSecEU08-Madou.pdf>`_.
They go on to talk about capturing normal behavior of an application
during functional testing, and then attacking the application as if in a
hostile environment, where it is then monitored to ensure it does not
deviate from normal behavior. Basically, it's all about monitoring your
application output in areas that are known to be dynamic.

In-depth, the Foritfy work is using dynamic taint propagation, by which
"taint propagation" or "taint tracking" is similarly done with static
analysis in order to trace misused input data from source to sink. This
is also a corollary to the work that Fortify has presented on before
with regards to `Countering the faults of web scanners through bytecode
injection
[PDF] <http://www.blackhat.com/presentations/bh-europe-07/Kureha/Whitepaper/bh-eu-07-chess-kureha-WP.pdf>`_.
While web application security scanners only demonstrate 20-29 percent
of the overall security picture because of surface and code coverage for
the inputs of the application under test, dynamic taint tracking goes a
long way to providing more coverage for these kinds of tests because
it's done as white-box dynamic analysis instead of functional black-box
runtime testing.

*The value of XHTML*

My fellow blogger, Andre Gironda, helped out with the praise section for
the book, "Refactoring HTML: Improving the Design of Existing Web
Applications", by Elliotte Rusty Harold. It's hard to disagree with the
notion that
`XHTML <http://ha.ckers.org/blog/20061126/is-html-a-cludge/>`_ can help
with both quality and security issues, as well as make applications and
content easier to refactor and work with.

When you're recoding thousands or millions of lines of code, wouldn't
well-formedness and validity be the primary requirements for working
with such large volumes of code? If anything, well-formedness and
content validity make the chores much easier to deal with. Rusty has
this to say in his book:

    [...] there are two things [authors for the Web] are very likely to
    write: JavaScript and stylesheets. By number, these are by far the
    most common kinds of programs that read web pages. Every JavaScript
    program embedded in a web page itself reads the web page. Every CSS
    stylesheet (though perhaps not a program in the traditional sense of
    the word) also reads the web page. JavaScript and CSS are much
    easier to write and debug when the pages they operate on are XHTML
    rather than HTML. In fact, the extra cost of making a page valid
    XHTML is more than paid back by the time you save debugging your
    JavaScript and CSS.

Since web application firewalls today cannot convert HTML on the
outbound to XHTML, this is certainly a job for the content writers
(sometimes, but often not the developers) to deal with. In the
*Refactoring HTML*\ book, Rusty also talks about the tools necessary to
develop content on the web:

    Many HTML editors have built-in support for validating pages. For
    example, in BBEdit you can just go to the Markup menu and select
    Check/Document Syntax to validate the page you're editing. In
    Dreamweaver, you can use the context menu that offers a Validate
    Current Document item. (Just make sure the validator settings
    indicate XHTML rather than HTML.) In essence, these tools just run
    the document through a parser such as xmllint to see whether it's
    error-free.

    If you're using Firefox, you should install Chris Pederick's Web
    Developer --
    `https://addons.mozilla.org/en-US/firefox/addon/60 <https://addons.mozilla.org/en-US/firefox/addon/60>`_
    -- plug-in. Once you've done that, you can validate any page by
    going to Tools/Web Developer/Tools/Validate HTML. This loads the
    current page in the W3C validator. The plug-in also provides a lot
    of other useful options in Firefox.

    Whatever tool or technique you use to find the markup mistakes,
    validating is the first step to refactoring into XHTML. Once you see
    what the problems are, you're halfway to fixing them.

Speaking of properly validated and easy to read/use content, what irked
me throughout my evaluation most was documentation. Vendors: do not
bundle a ton of HTML files together and call it a manual. If you're
looking to do that, please use DocBook if you're not going to make a PDF
available. Better yet, give us a hard copy.
