author: Marcin
disqus_id: e39c01a7-5efc-48cc-aed9-dd41985ef6ef
disqus_url: http://www.tssci-security.com/archives/2008/09/26/owasp-nyc-appsec-2008-and-nysec-recap/
mod_date: 2008-09-26 20:51:40
parent: 0
post_id: 434
post_type: post
pub_date: 2008-09-26 20:51:40
public: 'yes'
slug: owasp-nyc-appsec-2008-and-nysec-recap
tags:
- Security
template: post.html
title: OWASP NYC AppSec 2008 and NYSec Recap

OWASP NYC AppSec 2008 and NYSec Recap
#####################################

Living in NYC has its perks, one being that we host the largest OWASP
chapter across the world. The NY/NJ Metro chapter put a lot of effort
into making sure this last week went smoothly, even with the change of
venues at the last minute. I had a lot of fun, and it was nice seeing
everyone again, and meeting new faces. On Wednesday night, a bunch of us
gathered for a NYSec meeting at DBA down on 1st Ave and 2nd St. Some
cool new people I got to meet included `Andres
Riancho <http://w3af.sourceforge.net/>`_, `Dinis
Cruz <http://www.owasp.org/index.php/User:Dinis.cruz>`_, `Ryan
Naraine <http://blogs.zdnet.com/security/>`_, `Ivan
Risti„â€¡ <http://blog.ivanristic.com/>`_, `Dave
Aitel <http://lists.immunityinc.com/mailman/listinfo/dailydave>`_,
`RSnake <http://ha.ckers.org/>`_, `Chris
Nickerson <http://www.trutv.com/video/shows/tiger-team.html>`_, and
`Gunnar Peterson <http://1raindrop.typepad.com/>`_... phew! That is not
even a fraction of the people you get to see at these conferences.

Anyways, my two favorite talks go to Dinis Cruz and Dave Aitel. Firstly,
Dinis is such an energetic guy, you just want to stand up, do the `guido
fist pump <http://guidofistpump.com/>`_ and then run off to do something
really, really cool. As an independent contractor working for Ounce,
Dinis developed an open source tool called o2 which helps code reviewers
navigate mountains of static analysis data quickly and logically. Of the
couple static analysis tools I've come across, their interfaces don't
exactly cater to performing thorough, quick and accurate analysis. What
o2 let's you do, is crank up the volume on these tools and just run with
it, identifying patterns in code really easily, letting you cover as
much as possible. I still have to spend some time playing with it, but
it definitely would make anyone's job easier. All that, and it's open
sourced and will read in any CIR data from an Ounce scan.

Dave's talk, "Corruption" really captured my sentiments on non-webappsec
research (present day). While in university, I always thought the
barrier to entry prohibited a lot of people from becoming really good at
writing reliable buffer overflow exploits. This could be seen as both
good and bad, given the fact that many operating systems have
randomized, non-executable memory stacks with Vista ASLR, XP SP2 DEP,
PaX/Grsecurity, etc, making them somewhat immune to the vulnerability,
but not 100% entirely. This presents a problem, a huge gaping
vulnerability in both our systems and our thinking. Buffer overflows
continue to surface even after being discovered 15 years ago. But
because it is so hard, we don't see many exploits on milw0rm or
packetstorm. And let's face it, if they're not on there, then they don't
exist. Right? Maybe. Though one thing is certain, the people writing
exploits are professionals and are really, really good at what they do.
Be it Dino, Gobbles or Aitel (who was being modest when he said he's not
the best), it is true there are people out there who can and will do it,
and when the next remotely exploitable buffer overflow that bypasses
stack protection comes along, we won't know what fucking hit us.

Also, we've begun to set the agenda for OWASP EU Summit Portugal. Arshan
Dabirsiaghi is looking for folks to contribute to ISWG, a group with
some modest goals, like `fixing the
Internet <http://i8jesus.com/?p=25>`_. Seriously though, the group is
looking at new ways to secure the browser, and what approach(es) they'll
take to do it. I'd love to talk about some other projects, but really,
there are just too many worthy projects to list all out here, so head on
over to the `OWASP EU
Summit <http://www.owasp.org/index.php/OWASP_EU_Summit_2008>`_ page, and
find something of interest.

One last closing thought I'd like to squeeze in... Throughout the entire
week, I found it really coincidental that ISC2 chose to sponsor the
OWASP conference and release a new certification, the CSSLP (Certified
Software Security Lifecycle Professional). Given that James McGovern is
putting a lot of effort into developing an OWASP certification, Dre
posting `R.I.P.
CISSP <http://www.tssci-security.com/archives/2008/06/19/rip-cissp/>`_
and getting in the top 5 Google search results for "CISSP", I find it
strangely odd they go and do this. It also seems as if they put no
thought into the certification at all, just one they cranked out to beat
OWASP "to the punch" and make a buck at the industry's expense, laughing
all the way to the bank. Shameful.
