author: Marcin
disqus_id: d5532a27-debf-49b9-9b73-c9b49db1602d
disqus_url: http://www.tssci-security.com/archives/2007/10/25/toorcon-9-day-2/
mod_date: 2007-11-07 12:26:38
parent: 0
post_id: 321
post_type: post
pub_date: 2007-10-25 04:04:53
public: 'yes'
slug: toorcon-9-day-2
tags:
- Conferences
- People
- Hacking
- Security
template: post.html
title: ToorCon 9 - Day 2

ToorCon 9 - Day 2
#################

This is the second blog post covering Sunday's talks at ToorCon 9. You
can read the first installment
`here <http://www.tssci-security.com/archives/2007/10/22/toorcon-9-day-0-and-1/>`_.

After a hard night of partying, I didn't want to get out of bed early in
the morning. Gotta give props to Hikari for foreseeing this and not
scheduling anything before noon, haha.. One thing I liked about Sunday,
was that speakers were given only 20-25 minutes each. Lots of technical
information jam-packed into a turbo-talk -- awesome.

The first talk I went to was by Nathan Rittenhouse, "`Byakugan:
Automating Exploitation <http://toorcon.org/2007/event.php?id=28>`_,"
who went and gave an update on the
`WindDBG <http://www.microsoft.com/whdc/devtools/debugging/default.mspx>`_
plugin and also showcased
`NOXdbg <http://www.noxusfiles.com/#content>`_, Ruby's equivalent of
`PyDbg <http://pedram.redhive.com/PaiMei/docs/PyDbg/>`_. Johny Cache was
present as well, who demonstrated a sick ass 3-d process heap
visualizer. Unfortunately, he only had a couple minutes left, and didn't
have the time to show his 20 minute video that showed what it could
*really* do. I had lunch with Johny the other day and he is a funny guy.
If you're reading this Johny, I got a Greasemonkey script for you :)

My buddy Paul Batistta presented a massive cheatsheet of commonly
overlooked SQL injection techniques that he and Matt Fisher (of SPI
Dynamics) had put together to aid in penetration tests. A lot of good
stuff, that outlined many of the basics and delved deeper into various
ways of quickly determining whether an SQL injection vulnerability
exists and ways to bypass tricky blacklists. Paul also included
references to the usual suspects (ha.ckers, 0x000000, etc) and also some
lesser known resources. Some commonly overlooked tests that can get
pretty fancy included:

``?errorcode=(1+1)
?errormsg=erro’+’r
?errormsg=err'+substring('error',4,1)+'r
?errormsg=erro%
?errorcode=2 exec master.dbo.xp_cmdshell vncserver``

Be sure to check out `Paul's
presentation <http://www.securityexperiment.com/se/2007/10/toorcon-9.html>`_,
available at his site, `Security
Experiment <http://www.securityexperiment.com/se/>`_.

Next up was \|)ruid, who presented "`Context Keyed Payload
Encoding <http://toorcon.org/2007/event.php?id=32>`_," a new way of more
effectively bypassing filters and various other conditions that prevent
an exploit from working. The current problem with payload encoding, is
an active observer can intercept payload traffic and easily decode it
for analysis. What \|)ruid had done, was use a keyed encoder that did
not include the key in the decoder stub. This would prevent the observer
from decoding the payload. "Then how does the target decode the
payload," you ask? Well, the decoder stub is prepended to the original
payload and is executed first on the target. The decoder is responsible
for locating the context key [out of application data/process
memory/temporal data, etc] and then decoding it. This requires the
context key to be predictable, so long as the data remains the same long
enough for the decoder stub to locate it. Metasploit's Shikata Ga Nai is
an example of this. If that's not enough for you, then `\|)ruid's
slides <http://www.dustintrammell.com/presentations/>`_ should be. :P

The last talk I saw of the day was "`URI Use and
Abuse <http://toorcon.org/2007/event.php?id=35>`_," by Nathan McFeters,
Billy (BK) Rios (absent), and Rob Carter of
`xs-sniper.com <http://www.xs-sniper.com>`_. Billy was `recently hired
by Microsoft <http://blogs.zdnet.com/security/?p=585>`_ and for reasons
unknown, was not able to make it to the presentation. Regardless, Nathan
and Rob did a great job of demonstrating the flaws within URI protocol
handler on Windows. The issue is not specific to Windows, as Linux does
handle URI's as well. I ended up talking with Nate and Rob at the San
Diego airport for quite a while, who were flying through Phoenix to get
home and our flight was delayed. Speaking of URI abuse, in my own past
research I've found some sites (IRC search engines) host links that when
clicked, open the client application associated with the irc:// URI, and
copies text within the href 'title' tag to your clipboard. In Firefox,
the text is not copied automatically, for you have to set
*signed.applets.codebase\_principal\_support* to 'true' before this
behavior is possible. Something about that just doesn't sit well with me
at the time, and still doesn't today.

Well, that's my wrap-up for ToorCon 9 posts. Dre will post about some of
the topics in a little more detail later on. Overall, the conference was
a blast, and I would definitely recommend it over DefCon. It was a lot
like ShmooCon, in that it had that "togetherness" feeling -- everybody
was hanging out, talking, drinking, partying etc.. If you couldn't make
it to ToorCon, try and get to ShmooCon in Washington, D.C. in February.
