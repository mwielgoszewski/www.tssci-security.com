author: dre
disqus_id: f129894d-a9e2-4e96-9229-ef80fac64938
disqus_url: http://www.tssci-security.com/archives/2008/06/25/week-of-war-on-wafs-day-2-a-look-at-the-past/
mod_date: 2008-06-25 10:41:49
parent: 0
post_id: 418
post_type: post
pub_date: 2008-06-25 02:07:09
public: 'yes'
slug: week-of-war-on-wafs-day-2-a-look-at-the-past
tags:
- defense
- security
template: post.html
title: 'Week of War on WAF''s: Day 2 -- A look at the past'

Week of War on WAF's: Day 2 -- A look at the past
#################################################

Web application experts have been asking WAF vendors the same questions
for years with no resolution. It's not about religion for many security
professionals -- it's about having a product that works as advertised.

My frustration is not unique. I am not the first person to clamor on
about web application firewalls. Jeff Williams pointed me to a post that
Mark Curphey made in 2004. Today, Curphey appears to have a change of
heart -- his latest blog post `provides a link to
URLScan <http://securitybuddha.com/2008/06/22/url-scan-30-beta/>`_,
which some claim is like mod-security for Microsoft's Internet
Information Server (IIS). Microsoft released URLScan Beta 3.0 in order
to curtail the massive problem of over two million Classic ASP web
applications that have become infected due to the SQL injection attacks.

Here is the post where the frustration of WAF and their vendors first
began:

    -----Original Message-----
     From: The OWASP Project [mailto\:[EMAIL PROTECTED]
     Sent: Tuesday, 16 November 2004 2:34 PM
     To: [EMAIL PROTECTED]
     Subject: An Open Letter (and Challenge) to the Application Security
     Consortium

    An Open Letter (and Challenge) to the Application Security
    Consortium

    Since its inception in late 2000 the Open Web Application Security
    Project (OWASP) has provided free and open tools and documentation
    to educate people about the increasing threat of insecure web
    applications and web services. As a not-for-profit charitable
    foundation, one of our community responsibilities is to ensure that
    fair and balanced information is available to companies and
    consumers.

    Our work has become recommended reading by the Federal Trade
    Commission, VISA, the Defense Information Systems Agency and many
    other commercial and government entities.

    The newly unveiled Application Security Consortium recently
    announced a "Web Application Security Challenge" to other vendors at
    the Computer Security Institute (CSI) show in Washington, D.C. This
    group of security product vendors proposes to create a new minimum
    criteria and then rate their own products against it.

    The OWASP community is deeply concerned that this criteria will
    mislead consumers and result in a false sense of security. In the
    interest of fairness, we believe the Application Security Consortium
    should disclose what security issues their products do not address.

    As a group with a wide range of international members from leading
    financial services organizations, pharmaceutical companies,
    manufacturing companies, services providers, and technology vendors,
    we are constantly reminded about the diverse range of
    vulnerabilities that are present in web applications and web
    services. The very small selection of vulnerabilities you are
    proposing to become a testing criteria are far from representative
    of what our members see in the real world and therefore do not
    represent a fair or suitable test criteria.

    In fact, it seems quite a coincidence that the issues you have
    chosen seem to closely mirror the issues that your technology
    category is typically able to detect, while ignoring very common
    vulnerabilities that cause serious problems for companies.

    Robert Graham, Chief Scientist at Internet Security Systems,
    recently commented on application firewalls in an interview for CNET
    news. When asked the question "How important do you think
    application firewalls will become in the future?" his answer was
    "Not very."

    "Let me give you an example of something that happened with me. Not
    long ago, I ordered a plasma screen online, which was to be shipped
    by a local company in Atlanta. And the company gave me a six-digit
    shipping number. Accidentally, I typed in an incremental of my
    shipping number (on the online tracking Web site). Now, a six-digit
    number is a small number, so of course I got someone else's user
    account information. And the reason that happened was due to the way
    they've set up their user IDs, by incrementing from a six-digit
    number. So here's the irony: Their system may be so
    cryptographically secure that (the) chances of an encrypted shipping
    number being cracked is lower than a meteor hitting the earth and
    wiping out civilization. Still, I could get at the next ID easily.
    There is no application firewall that can solve this problem.

    With applications that people are running on the Web, no amount of
    additive things can cure fundamental problems that are already there
    in the first place."

    This story echoes some of the fundamental beliefs and wisdom shared
    by the collective members of OWASP. Our experience shows that the
    problems we face with insecure software cannot be fixed with
    technology alone. Building secure software requires deep changes in
    our development culture, including people, processes, and
    technology.

    We challenge the members of the Application Security Consortium to
    accept a fair evaluation of their products. WASP will work with its
    members (your customers) to create an open set of criteria that is
    representative of the web application and web services issues found
    in the real world. OWASP will then build a web application that
    contains each of these issues. The criteria and web application will
    be submitted to an independent testing company to evaluate your
    products.

    You can submit your products to be tested against the criteria
    (without having prior access to the code) on the basis that the
    results are able to be published freely and will unabridged.

    We believe that this kind of marketing stunt is irresponsible and
    severely distracts awareness from the real issues surrounding web
    application and web services security. Corporations need to
    understand that they must build better software and not seek an
    elusive silver bullet.

    We urge the Consortium not to go forward with their criteria, but to
    take OWASP up on our offer to produce a meaningful standard and test
    environment that are open and free for all.

    Contact: [EMAIL PROTECTED]
     Website: www.owasp.org
