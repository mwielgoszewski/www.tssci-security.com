author: dre
disqus_id: 780af219-f28a-4981-a0a6-ba5a0b907e6f
disqus_url: http://www.tssci-security.com/archives/2007/12/18/cross-site-scripts-are-the-cockroaches-of-the-internet/
mod_date: 2007-12-18 09:21:14
parent: 0
post_id: 342
post_type: post
pub_date: 2007-12-18 09:14:42
public: 'yes'
slug: cross-site-scripts-are-the-cockroaches-of-the-internet
tags:
- Hacking
- Security
template: post.html
title: Cross-site scripts are the cockroaches of the Internet

Cross-site scripts are the cockroaches of the Internet
######################################################

    I made `an epic
    post <http://www.learnsecurityonline.com/index.php?option=com_mamboboard&func=view&catid=22&id=2293#2293>`_
    to the `LSO <http://www.learnsecurityonline.com>`_ forums a few
    minutes ago. I felt the need to re-post a portion of it here. While
    meeting Joe earlier this evening, who is one of the founders of
    `LearnSecurityOnline <http://www.learnsecurityonline.com>`_, I was
    inspired to think and write about XSS and a variety of other web
    application security anecdotes. I guess pizza+beer (thanks, Joe!), a
    trip to Borders, and coffee really help with my writing technique.

**XSS can live in everything** -- the HTTP requests/responses, the HTML,
the stylesheets, Webmail, RSS feeds, "Design-mode" HTML editors,
Javascript, Actionscript, VBScript, Flash files, images, PDF's (even
without a browser!), QuickTime files, the DOM, XmlHttpRequests, XML data
from Web services or in JSON, unexposed Ajax functions that Firebug
can't even see, offline Ajax applications, inside databases, attached to
cookies, in logfiles, cached content in proxies, cached content on your
disk, in your browser bar (i.e. bookmarklets), and inside of your
Javascript Engine in your browser, lying dormant -- waiting for just the
right moment to jump out, scare the living [STRIKEOUT:shit] out of you
(assuming an alert box), and attack.

***Cross-site scripts are like the cockroaches of the Internet.***

The best way to get rid of XSS is just to simply "get rid" of it. Find
the root-cause of the problem and squash it. This is best done as
developer Fagan inspection, whether during requirements analysis
(early), design review (too late), programming phase (way too late), or
build-time aka "integration" ([STRIKEOUT:fucking] ridiculously late).

If a QA professional, a security professional, or an unwanted adversary
has to spend any cycles on XSS -- guess what? They're going to find
some! The statistics say that XSS is present in 90% of websites. This is
because only the top 10% of websites know anything about software
assurance. They simply "squashed" XSS because they "had to" (or because
the developers are smart aka "not lazy"). Did you know that basically
**every commercial web application security scanning company has had XSS
exposed in their website** at some point? Now you do!

Do the right thing and don't test for XSS. Don't even bother. Just grab
the source code and start inspecting for "oh it looks like XSS is
possible here -- back to the drawing board!".

Don't test -- but do ask the question, "**Hey, do you guys know that
your site is vulnerable to XSS?**\ ".

The only correct answer is "Yes, but we've put Fagan inspection
processes in place to prevent damage to our reputation/brand, our
customers, and have implemented precautions such as NoScript and
LocalRodeo to prevent submarine-XSS attacks against our IT
administrators and key personnel within our organization. The potential
XSS variants that exist in our applications are all undergoing
regression testing and have been protected with the best we have in
modern day WAF technology such as the commercial Fortify Defender,
Imperva SecureSphere, and/or the open-source equivalents CORE GRASP,
PHP-IDS, and dotnetids".

Any other answer means, "No, and we have no idea how to deal with
that!". **Go directly to Remediation -- Do not press the back button; Do
not collect 200 OK's.**
