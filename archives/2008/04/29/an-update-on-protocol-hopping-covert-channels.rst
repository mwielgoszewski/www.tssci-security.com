author: dre
disqus_id: 50a8fb69-d3fa-4d70-9beb-7b50973e464b
disqus_url: http://www.tssci-security.com/archives/2008/04/29/an-update-on-protocol-hopping-covert-channels/
mod_date: 2008-04-29 09:35:43
parent: 0
post_id: 400
post_type: post
pub_date: 2008-04-29 09:29:43
public: 'yes'
slug: an-update-on-protocol-hopping-covert-channels
tags:
- Security
- News
template: post.html
title: An update on Protocol hopping covert channels

An update on Protocol hopping covert channels
#############################################

At last year's Blackhat US 2007, the dominant discussion was around
Joanna Rutkowska and Alex Tereshkin's "`New Blue
Pill <http://www.matasano.com/log/924/joannas-response-to-our-talk/>`_\ "
vs. Peter Ferrie, Nate Lawson, and Tom Ptacek's `VT-x Rootkit
Detection <http://www.matasano.com/log/925/slides-from-vt-x-rootkit-detection-talk/>`_
techniques. This included some follow-up material on the Matasano blog
including `Side-Channel Detection Attacks Against Unauthorized
Hypervisors <http://www.matasano.com/log/930/side-channel-detection-attacks-against-unauthorized-hypervisors/>`_
and some `confusion by Rich
Mogull <http://securosis.com/2007/08/27/virtualization-security-are-ptaceklawson-and-joanna-fighting-the-wrong-battle/>`_
which led to `You Can Detect Hypervised Rootkits Even if You're
Virtualized <http://www.matasano.com/log/955/you-can-detect-hypervisor-rootkits-even-if-youre-virtualized/>`_.
Joanna's rebuttal to the Matasano bloggage can be found in
`Virtualization Detection vs. Blue Pill
Detection <http://theinvisiblethings.blogspot.com/2007/08/virtualization-detection-vs-blue-pill.html>`_
on her blog.

But what about covert channels on the network?

Surely, Ptacek and Rutkowska are both overly familiar with the issues
applied at that layer -- Ptacek having authored *Insertion, Evasion, and
Denial of Service*, with Rutkowska `providing
code <http://invisiblethings.org/code.html>`_ for *NUSHU - passive
covert channel engine for Linux 2.4 kernels*.

Many claim that network covert channels can be made undetectable; others
might argue that like system rootkits -- certain techniques can always
make covert activity visible to prying eyes.

Last November, Richard Bejtlich analyzed the Protocol Hopping Covert
Channel Tool, written by Steffen Wendzel. Using tools such as Wireshark,
tcpdump, Argus, and tcpflow -- Richard demonstrates how the PHCC tool
(phcct) can be categorically identified.

Richard did agree with one commenter that if the PHCC tool properly
encrypted traffic -- that the analysis would be inconclusive. So why was
the proof-of-concept crippled?

`A recent comment to Richard's post on
PHCC <http://taosecurity.blogspot.com/2007/11/analyzing-protocol-hopping-covert.html?showComment=1209394320000#c3644265824198780168>`_
comes from the author of the tool itself (Steffan Wendzel). In the
comment, he writes:

    Nevertheless I still think PHCC are very hard to detect using
    encryption (I don't plan to add encryption to this explicity called
    "simple" proof of concept code) and an improved micro protocol
    message ID field (see updated part of the paper). I also think that
    collecting \_all\_ data in a network is a too huge amount of data
    propably nobody will take care about (which company will pay the
    forensics that will investigate the garbage data?)
    But you're right: The detection of the PHCC implemented by phcct is
    easy to detect but it wasn't the target to do something different in
    this proof of concept code.

However, thanks to Richard's post and corrections -- Steffan updated his
paper on `Protocol Hopping Covert
Channels <http://www.wendzel.de/?sub=paper_phcc>`_, but noted that he
doesn't have time to correct the tool itself. In this case, having the
correct information documented is more important than having a more
reliable exploit tool. Some would argue that, "`There's no point in
rubbing salt into an open
wound <http://www.csoonline.com/article/221208/The_Rise_of_Anti_Forensics/2>`_\ "
(one of my favorite quotes on the issue of anti-forensics).
