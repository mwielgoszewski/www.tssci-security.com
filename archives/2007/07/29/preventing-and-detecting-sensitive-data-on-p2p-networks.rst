author: Marcin
disqus_id: ff1b7a17-cc2a-4f7f-93e3-707fabdb7cd7
disqus_url: http://www.tssci-security.com/archives/2007/07/29/preventing-and-detecting-sensitive-data-on-p2p-networks/
mod_date: 2007-07-31 21:57:25
parent: 0
post_id: 266
post_type: post
pub_date: 2007-07-29 11:48:39
public: 'yes'
slug: preventing-and-detecting-sensitive-data-on-p2p-networks
tags:
- Tech
- Security
- News
- Politics
template: post.html
title: Preventing and Detecting Sensitive Data on P2P Networks

Preventing and Detecting Sensitive Data on P2P Networks
#######################################################

Recently, we've heard a lot of talk about P2P apps and data leakage
concerning various members of Congress. It started with this article
over at
`NetworkWorld <http://www.networkworld.com/news/2007/072507-classified-us-military-info-available.html>`_,
followed up by the guys at
`nCircle <http://blog.ncircle.com/blogs/sync/archives/2007/07/classified_information_leaked.html>`_,
directing criticism towards Congree from
`Techdirt <http://techdirt.com/articles/20070724/204401.shtml>`_,
comments from
`LonerVamp <http://www.terminal23.net/2007/07/a_p2p_witch_hunt.html>`_,
and lately a rambling from `Alan
Shimel <http://www.stillsecureafteralltheseyears.com/ashimmy/2007/07/why-should-p2p-.html>`_
on how NAC will solve the problem.

The problem is not so straightforward. It's a mix of company policies,
perimeter and endpoint protection, data protection, and culture. Alan
fails to see the problem all the way through. Sure, your NAC might
prevent P2P apps from existing on the network.. But what about on
employee's home networks? Many people are being issued laptops so they
can work from home, on the go, etc. How is NAC going to stop P2P there?
How do you stop people from installing P2P apps on their personal
computers? From bringing or sending data home through email, thumb
drive, cd-rw?

Besides `Tiversa <http://tiversa.com/>`_, has anyone actually tried to
automate P2P network scanning looking for [their] sensitive data? One of
the ways at trying to fix the problem is looking at/for the source of
information leaks. Use
`honeytokens <http://www.securityfocus.com/infocus/1713>`_ to weed out
nosey people, spies, and people who are most likely violating policies.
Use an IDS or other network monitoring solution to alert when it sees
those honeytokens traveling out of the network.

So the issue is one we'll be seeing a lot from now on as we move towards
"protecting data." Preventing information from leaking onto P2P networks
and detecting it is going to be tough. There is no single answer, but
many that require a lot of thought and planning. In addition to these
latest news articles, check out `Inadvertent Disclosure - Information
Leaks in the Extended
Enterprise <http://weis2007.econinfosec.org/papers/43.pdf>`_. It's the
only paper I've come across that tries to analyze the extent of the
problem and demonstrates the threat and vulnerability it poses to
businesses.
