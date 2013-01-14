author: Marcin
disqus_id: ad5add92-5975-4ff5-a9a6-b8cd1e4c5f70
disqus_url: http://www.tssci-security.com/archives/2007/12/21/testing-for-randomness-and-predictability-using-burp-sequencer/
mod_date: 2007-12-21 09:51:32
parent: 0
post_id: 343
post_type: post
pub_date: 2007-12-21 09:51:32
public: 'yes'
slug: testing-for-randomness-and-predictability-using-burp-sequencer
tags:
- Security
template: post.html
title: Testing for randomness and predictability using Burp Sequencer

Testing for randomness and predictability using Burp Sequencer
##############################################################

Sorry I haven't posted in forever. Dre's been covering for me while I've
been super busy with finishing up school, reading, work, and other
projects. I think Dre's packed more information in the last month than I
did all year. `2007 Security Testing Tools in
Review <http://www.tssci-security.com/archives/2007/11/24/2007-security-testing-tools-in-review/>`_
alone is worth a third or fourth reading.

Anyways, here's one of the things I've been looking at lately.
`Portswigger <http://www.portswigger.net/>`_ released a new version of
the `Burp Suite <http://www.portswigger.net/suite/>`_ with several new
tools included, one of which is called
"`Sequencer <http://blog.portswigger.net/2007/10/introducing-burp-sequencer.html>`_."
What Burp Sequencer is, is a session token analyzer that tests the
degree of randomness and predictability in a sample data set. From the
`Burp Sequencer help <http://portswigger.net/sequencer/help.html>`_:

    Burp Sequencer employs standard statistical tests for randomness.
    These are based on the principle of testing a hypothesis against a
    sample of evidence, and calculating the probability of the observed
    data occurring, assuming that the hypothesis is true:

    -  The **hypothesis** to be tested is: that the tokens are randomly
       generated.
    -  Each **test** observes specific properties of the sample that are
       likely to have certain characteristics if the tokens are randomly
       generated.
    -  The **probability** of the observed characteristics occurring is
       calculated, working on the assumption that the hypothesis is
       true.
    -  If this probability falls below a certain level (the
       "**significance level**\ ") then the hypothesis is rejected and
       the tokens are deemed to be non-random.

Burp Sequencer can run against a live capture or copy/paste loaded
strings. When browsing a site with Burp acting as a proxy, you can send
requests to Sequencer using the "action" button for a live capture of
session tokens. I began playing with this tool to see how "random" the
session tokens are in various sites, and then decided to run it against
a couple PRNG's and compare them to others in an attempt to find the
best source of entropy data to use for creating session tokens.

NIST has
`published <http://csrc.nist.gov/groups/ST/toolkit/rng/index.html>`_
over the years several requirements and guidelines for creating and
`testing random number
generators <http://csrc.nist.gov/publications/PubsSPs.html#SP-800-22>`_
as part of their `cryptographic
toolkit <http://csrc.nist.gov/groups/ST/toolkit/index.html>`_ and under
the `FIPS
140-2 <http://csrc.nist.gov/publications/PubsFIPS.html#FIPS%20140-2>`_,
Security Requirements for Cryptographic Modules. Burp Sequencer conducts
a series of full FIPS tests for randomness, among others including
spectral, correlation and compression tests. More information on FIPS
140-2 standard is available at the `Cryptographic Module Validation
Program (CMVP) <http://csrc.nist.gov/groups/STM/cmvp/index.html>`_ site.

`Random.org <http://www.random.org/>`_ has been around since 1998,
offering an online, "true" random number generator whose source of
entropy is atmospheric noise picked up by radio receivers. You can read
more information about it from their
`FAQ <http://www.random.org/faq/>`_. What's cool, is Random.org
publishes `performance statistics <http://www.random.org/statistics/>`_
available on a daily basis.

I compared Linux's ``/dev/urandom`` to Random.org. My sample set met the
following requirements:

#. 16 character length
#. 10,000 tokens
#. Alphanumeric
#. Repeats allowed

To generate 10,000 tokens using ``/dev/urandom``, I issued the following
command:

``$ cat /dev/urandom | tr -cd [:alnum:] | fold -w 16 | head -10000``

I ran the sample sets from ``/dev/urandom`` and Random.org through Burp
Sequencer and concluded the following:

The overall quality of randomness in ``/dev/urandom`` is considered to
be poor, with a significance level of 1% and the amount of effective
entropy to be 29 bits. Random.org fared worse, with an amount of
effective entropy to be only 25 bits.

I've made my sample data sets available online for anyone to download,
from ``/dev/urandom`` and
`random.org results <http://www.tssci-security.com/info/random.org16>`_.

Some other random number generators that I encourge you analyze on your
own using Burp Sequencer include
`QRBGS <http://random.irb.hr/index.php>`_ (a *quantum*-RNG),
`LavaRnd <http://www.lavarnd.org/>`_ (a RNG that uses lava lamps for
entropy), and `HotBits <http://www.fourmilab.ch/hotbits/>`_ (uses
radioactive decay as a source of randomness).
