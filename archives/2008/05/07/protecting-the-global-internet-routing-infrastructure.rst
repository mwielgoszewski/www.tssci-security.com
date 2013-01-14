author: dre
disqus_id: b6b7dbdb-aaca-4f5a-8c92-85255528ea99
disqus_url: http://www.tssci-security.com/archives/2008/05/07/protecting-the-global-internet-routing-infrastructure/
mod_date: 2008-05-07 14:55:33
parent: 0
post_id: 405
post_type: post
pub_date: 2008-05-07 14:16:50
public: 'yes'
slug: protecting-the-global-internet-routing-infrastructure
tags:
- Defense
- Security
template: post.html
title: Protecting the global Internet routing infrastructure

Protecting the global Internet routing infrastructure
#####################################################

Arbor Networks has a blog post up today about `Using RPKI to Construct
Validated IRR
Data <http://asert.arbornetworks.com/2008/05/using-rpki-to-construct-validated-irr-data/>`_.
Resource PKI (RPKI) is an `extension to
X.509 <http://www.ietf.org/rfc/rfc3779.txt>`_ to allow for IP address
(prefix) and AS identifiers (autonomous system numbers -- the
organization-based assigned number used by the Border Gateway Protocol
to get you or your ISP "online").

My first introduction to hijacking traffic at a global level was in
1997. A certain ISP that I knew would typically test their attack
theories and concepts live by re-routing, redirecting, and outright
stealing traffic using BGP-4. It was often done to spammers, typically
those already in a customer relationship with the provider.

By using a TCP/IP routing concept known as a "more-specific route", or
MSR as I like to refer to it -- a route injected into the RIB (routing
information base, or "routing table" as most people call it) that has a
shorter-prefix (a /24 instead of a /23) will be selected by the RIB to
be the destination of all traffic that is categorized by that prefix.
If, say, the 2 /24's that make up a /23 are both injected into the RIB,
then all traffic destined to that /23 is now directed instead to the /24
MRS's.

Historically, there has been little to nothing to prevent this from
happening at a global level. As we spoke about in the `Day 12: ITSM
Vulnerability Assessment
Techniques <http://www.tssci-security.com/archives/2008/03/19/day-12-itsm-vulnerability-assessment-techniques/>`_
post, even YouTube was recently hijacked by Pakistan using the exact
concepts above.

Note that this is different than regular IP/ASN hijacking. The YouTube
incident was BGP traffic hijacking. The difference (and they are even
worse when combined) is that IP/ASN hijacking involves modifying the RIR
(Regional Internet Registry) database records to new information, such
as contact, DNS, RWhois, and other ownership rights. The world was first
officially introduced to this style of attack in `1999 when
CERT <http://www.cert.org/annual_rpts/cert_rpt_99.html#appendixC>`_
released an advisory detailing the `Potential for False Authentication
in Registry
Transactions <http://web.archive.org/web/20050213235316/http://www.cert.org/vul_notes/VN-99-01.html>`_
aka the "MAIL-FROM:" attack, which works just like regular `domain
hijacking <http://www.darknet.org.uk/2006/09/domain-stealing-or-how-to-hijack-a-domain/>`_.

Typically, the defense to these types of attacks has had one major
stop-gap: ISP filtering, in particular -- customer filtering, which is
typically/historically applied only on the customers. When L0pht
presented to Congress in 1998 and told them that they could "take down
the entire Internet in 30 minutes or less" -- Mudge and company were
likely referring to the fact that route filters were applied at the
customer level (and not even always there), but not in between ISP
peering relationships.

Route-filters on ISP peering, especially "default-free zone" (DFZ)
peering, often used the IRR (Internet Routing Registry) information to
build a preventative measure. Hoewver, the IRR system itself (the
primary vendor/organization being the RADB -- or the Routing Arbiter
Database, or now known as the "Router Assets Database") was typically
vulnerable to the same "false authentication" attack and other abuses
such as social engineering.

RPKI looks like it goes a long way towards ensuring an easy path for
ISP's and other BGP-speaking organizations to protect their routes and
deliver an infrastructure that could withstand simple attack vectors
such as these.
