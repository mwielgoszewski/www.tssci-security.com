author: Marcin
disqus_id: 2ea2e439-c18b-4fc3-94ae-b94ca002c433
disqus_url: http://www.tssci-security.com/archives/2008/10/01/dont-tell-mom-the-world-is-gonna-end/
mod_date: 2008-10-02 10:32:18
parent: 0
post_id: 436
post_type: post
pub_date: 2008-10-01 21:30:41
public: 'yes'
slug: dont-tell-mom-the-world-is-gonna-end
tags:
- People
- Security
- News
template: post.html
title: Don't Tell Mom the World is Gonna End

Don't Tell Mom the World is Gonna End
#####################################

Today, another vulnerability has been making the headlines, various
industry security professionals predicting apocalyspe, genocide and
famine along with everything in between. It first started earlier this
summer, back when Dan Kaminsky, in a multi-vendor coordinated effort,
`told the world <http://www.doxpara.com/?p=1162>`_ of his DNS
vulnerability. Then came the `BGP
hijacking <http://blog.wired.com/27bstroke6/2008/08/revealed-the-in.html>`_,
disclosed by Tony Kapela and Alex Pilosov at Defcon. Granted, these were
serious issues and not to discredit their research, the vulnerabilities
themselves were nothing truly groundbreaking. Both DNS poisoning and BGP
hijacking are literally implemented into the RFC -- it was all just a
matter of enumerating the various ways of doing it.

Following, came RSnake's and Jeremiah Grossman's browser
`Clickjacking <http://ha.ckers.org/blog/20080915/clickjacking/>`_ bug,
which when `disclosed to
Adobe <http://blogs.adobe.com/psirt/2008/09/thanks_to_jeremiah_grossman_an.html>`_,
Adobe took upon themselves to fix within Flash and asked both to cancel
their OWASP presentation at AppSec NYC 2008 last week. Today (or rather
this week), was Robert E. Lee's and Jack Louis' `SYN Cookie DoS
vulnerability <http://searchsecurity.techtarget.com/news/article/0,289142,sid14_gci1332898,00.html>`_,
affecting almost every TCP/IP stack implementation. (why people are even
using SYN cookies is beyond my comprehension -- it's a hack and does not
mitigate DoS attacks, though that's a seperate discussion on its own)
[Edit (10/02/2008 11:30): I misread the original post and it is not a
vulnerability with SYN cookies. Robert was using SYN cookies as an
analogy. See `Outpost24's TCP DOS Attack
Explained <http://insecure.org/stf/tcp-dos-attack-explained.html>`_]

The common occurrence between these vulnerabilities? They all were
touted as super critical vulnerabilities that could bring down the
internet and pwn every being in existence. In addition, the researchers
behind them opted not to disclose details of the vulnerability. What
this created, was an incentive, or challenge to others to discover the
vulnerability before the discovering researchers decided to fully
disclose. It took about two weeks before `Halvar figured out Dan K's
bug <http://addxorrol.blogspot.com/2008/07/on-dans-request-for-no-speculation.html>`_,
and only another couple hours for `Arshan <http://i8jesus.com/?p=28>`_
to figure out the Flash/clickjacking vulnerability.

I read this `Slashdot
comment <http://it.slashdot.org/comments.pl?sid=981505&cid=25216865>`_
earlier today which I found hysterical, that poked fun at RSnake's
"Robert and Jack are smart dudes." I know RSnake is a smart dude too,
but really, at the end of the day, you're taking our word for it. And to
quote Bruce Potter, "Don't believe anything I say."

But seriously though, I think the blogosphere is doing a disservice
hyping these vulnerabilities to no end, and researchers doing a
disservice to themselves when they disclose this way. Don't tell the
world until you're ready. If you're not ready, stay home. The security
industry needs to stop crying wolf, because not everybody holds security
to the same level of attention as we do. People are getting tired of the
fear, uncertainty and doubt we spread.

Instead, let's focus on fixing the problems and providing lessons
learned so these vulnerabilities don't crop up again. That's what people
truly want to see. If you discover a vulnerability and want to report it
to the vendor, that's great! Continue to work with the vendor until a
patch has been released before going public -- even to announce you have
something. Just please, don't come out and ask us to pick a hand when
you know both are empty.
