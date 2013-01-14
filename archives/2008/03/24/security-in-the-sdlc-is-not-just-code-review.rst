author: dre
disqus_id: 836780a7-6be3-4691-bb7b-b84a303392c5
disqus_url: http://www.tssci-security.com/archives/2008/03/24/security-in-the-sdlc-is-not-just-code-review/
mod_date: 2008-03-24 23:22:04
parent: 0
post_id: 391
post_type: post
pub_date: 2008-03-24 23:19:08
public: 'yes'
slug: security-in-the-sdlc-is-not-just-code-review
tags:
- Defense
- Security
template: post.html
title: Security in the SDLC is not just code review

Security in the SDLC is not just code review
############################################

Let's take some time here to discuss what "secure code review" is and
what it is not. I see a lot more people talking about code review. Many
people have only the view of the PCI DSS compliance standard, which
almost pits code review against the web application firewall.

David Rice quoted a Gartner study on his blog post on `Insanity: 75% of
Security Breaches Due to Flaws in
Software <http://blog.geekonomicsbook.com/geekonomics/2008/03/insanity-75-of.html>`_.

*A Gartner study indicates that 75% of security breaches are due to
flaws in software...Do you think we would see a significant decrease in
the number of data breaches and records stolen if we shifted our spend
to actually writing proper code and protecting data at the source
instead of at the edge? I think it is time we gained a few IQ percentage
points and stopped the insanity.*

However, he also thinks that stopping vulnerabilities at the source is,
***"painful, difficult, complicated, and troublesome"***. But is source
code review really all of these things?

Sachin Varghese of the Plynt blog doesn't seem to think so. In his blog
post, `Comply with Section 6.6 of PCI DSS with code reviews and get
more <http://plynt.com/blog/2008/03/comply-with-section-66-of-pci/>`_,
Sachin explains that thousands of lines of code -- even millions of
lines of code -- can be reviewed for security properties within a matter
of weeks.

In this four-step process, Sachin lists how to "get more bang from your
code review bucks":

#. *Do rapid risk assessments to determine which �€˜money�€™ application
   should be code reviewed (**Choose the right apps**)*
#. *Use tools / processes that easily finds the meat balls (vulnerable
   code classes) in your thousands or millions of lines of code
   (**Choose the right code**)*
#. *Analyze vulnerabilities across applications, vendors to identify
   recurring issues, across the board solutions and effective developer
   training modules (**Address root causes**)*
#. *Look at trends like software-as-a-service, outsourcing & offshore
   centers to reduce your code review costs (**Find a good deal**)*

I also offered up a different perspective in `this argument between the
F5 DevCentral blog on the importance of rewriting
code <http://devcentral.f5.com/weblogs/macvittie/archive/2007/11/06/2981.aspx>`_.

No one development shop is like any other development shop. This is
where operations people and managers severely fail to understand why
typically people and process approaches don't work the same between
quality engineering, operations, and their red-headed step-child (or
more like their cranky, senile, old grandfather) -- development.

Some development shops use Test-Driven Development, some use a slight
varation called Behavior-Driven Development (and many use neither). Even
others skip the programming phase almost entirely by doing Model-Driven
Development. In this last case, applications are `code
generated <http://en.wikipedia.org/wiki/Source_code_generation>`_ by a
model built during the design phase.

Checking the source code is fine, but in some cases -- checking the
models, the designs, and the requirements is often a better approach.

To increase software assurance, I prefer to look at three areas of
significance:

-  How does the organization **acquire** software/applications?
-  How does it **create** software/applications?
-  How does it **maintain** its software/applications?

Others, such as our friends at `Aspect
Security <http://www.aspectsecurity.com/>`_, think that security in the
SDLC is about giving developers secure components (and to make those
components popular in development). Instead of forcing a dev shop into
"secure frameworks", any framework can utilize a few well-modeled,
well-designed, and well-tested components. Some of the better projects
coming out of the OWASP projects are:
`AntiSamy <http://www.owasp.org/index.php/AntiSamy>`_ (recently
`released a 1.1 version! <http://i8jesus.com/?p=17>`_),
`CSRFGuard <http://www.owasp.org/index.php/CSRFGuard>`_, and the
uber-project -- `ESAPI <http://www.owasp.org/index.php/ESAPI>`_.

Well-designed, reviewed, and tested code is great! However, security
does not last a lifetime. What is secure today may not, in fact, be
secure tomorrow. Maintaining applications over time also means having a
plan for their retirement. When an organization decides to acquire
software off-the-shelf (commercially, or by downloading open-source
components such as ESAPI) -- there should be some sort of "Consumer
Reports" that they can go to.

`OWASP <https://www.owasp.org>`_ is a good place to go today for
information about secure web applications (including secure code
review). I would like to see a commitment from OWASP to be a long-term,
official authority for this type of information. CERT's `Secure
Coding <http://www.cert.org/secure-coding/>`_ and `Secure Coding
Standards <https://www.securecoding.cert.org>`_ websites are excellent
sources of information for general applications (especially those
written in C/C++). A similar committment from CERT might also be in
order.

My suggestion is to both test and inspect/review source code in order to
obtain results as close to a `Gold standard
test <http://en.wikipedia.org/wiki/Gold_standard_(test)>`_ as possible.
Open-source components can be shown as "percentage CWE-free" with
"percentage of code coverage". Mapping this to a five-star rating system
isn't going to take a lot of time or effort, and certainly this will
eventually allow for more detailed research and statistics.
