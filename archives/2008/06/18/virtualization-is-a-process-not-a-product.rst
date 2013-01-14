author: dre
disqus_id: 3549edc0-f4ef-4522-8c73-c800172d830a
disqus_url: http://www.tssci-security.com/archives/2008/06/18/virtualization-is-a-process-not-a-product/
mod_date: 2008-06-18 13:09:44
parent: 0
post_id: 414
post_type: post
pub_date: 2008-06-18 05:30:32
public: 'yes'
slug: virtualization-is-a-process-not-a-product
tags:
- Defense
- Tech
- Security
template: post.html
title: Virtualization is a process, not a product

Virtualization is a process, not a product
##########################################

I see that the BlackHat Blogger's Network has a `topic of
interest <http://feeds.feedburner.com/~r/StillsecureAfterAllTheseYears/~3/314348599/black-hat-blo-1.html>`_.
I'll oblige, especially since The Hoff is involved. I think it's a good
exercise, so I'll have to thank Shimel for this idea.

You also won't want to miss what I've said about virtualization four
months ago in `Hardware VM security: past and
present <http://www.tssci-security.com/archives/2008/02/05/hardware-vm-security-past-and-present/>`_.
Today, I just want to talk about Hoff's points and my experiences with
modern virtualization.

**Time is your most valued resource**

Securing outdated "default-insecure" network devices, operating systems,
and applications is wasted time that could be spent trying to convince
management to replace or recode them.

It really does take about two or three days for one administrator to
install CentOS, SELinux, Kickstart, and Apache/PHP. Really what else do
you need? Similarly, I guess it takes about two to three months to
install Windows Server 2003 or 2008, GPOAccelerator, RIS or Deployment
Services, and IIS/ASP.NET. It takes maybe another month to implement the
vendor/NSA/NIST hardening guidelines, CIS benchmarks, and OWASP material
for either platform. If you can't be bothered to download a few PDF's,
there's always books like the Hacking Exposed series.

In the case of "if it's not broke; don't fix it", the potential of a
data breach due to an existing, known vulnerability (or an obvious state
of software weakness) would count as "broken".

**Virtualization can help organizations move quickly**

Virtualization is supposed to help with these efforts! Instead of
running through a whole Kickstart or WDS install, all you have to do is
copy a file and boot it. Better -- this can be combined with iSCSI and
shared disk filesystems such as OCFS2 or GFS. Better -- iSCSI can be
enabled with DHCP to quickly get to new services.

I've had Xen hardware virtualized guests that ran redundant services on
the same machine, with a keepalived heartbeat running between them. Why?
Availability was the primary goal. Availability is certainly a part of
security.

When you want to replace everything and start from scratch --
virtualization will help you get there much faster. In a mature
infrastructure with mature process, any organization will see increases
to availability (and therefore also the availability side of security)
and mean-time-between-failure, and a decrease in mean-time-to-repair.
Bootstrapping an infrastructure overnight is certainly possible. How is
this not a good thing?

**Virtualization has the same problems as the least privilege
principle**

The real least privilege principle is "if I have an account on the box,
then I also have administrator/root". Privilege escalation is almost
always possible. The same is true with regards to virtualization. If you
get access to a Xen/VMWare/VirtualIron/etc guest, then you can usually
also eventually get access to the host OS (and therefore all other
guests).

For those that don't remember the `Xen Multiple
Vulnerabilities <http://secunia.com/advisories/26986/>`_, read on up.

The nice thing about virtualization is when you take into account the
previous concept. Sure, virtualization increases risk because it creates
a situation of trust between the host and guest OSes. However,
virtualization can also be instrumental in quickly installing and
verifying SELinux RBAC or TE configurations, thus reducing that same
risk to all OSes.

Also worth a mention here are concepts such as secure hypervisors (see
my last article about sHype and links), Xen Access Controls, and
`Phantom <http://rationalsecurity.typepad.com/blog/2008/04/ghost-in-the-ma.html>`_.

**Capacity planning is not as important as live (or dead) migration**

I'll concur with Hoff that security concepts hurt virtualization
concepts with regards to capacity planning. However, I'm not certain
that virtualization is all about capacity planning in the first place.
If anything, it allows you to shut down redundant services when they are
not needed (or turn them on only during peak times). Virtualization
allows you to move OS guests around the network (btw: doing so securely
would be a very good idea -- I'll have to write up a paper/concept on
"MITM'ing Live Migrations"), so in this way you can fix performance
problems quickly by just shuffling things around. Again, this helps
availability because it helps mean-time-to-repair.

For those of you who missed what I said about live migrations in `my
last
article <http://www.tssci-security.com/archives/2008/02/05/hardware-vm-security-past-and-present/>`_,
be sure to check it out -- or just check out this link I had to an
article on `Live Migration of Xen
Domains <http://www.linux.com/articles/55773/>`_. The basics is that
computers should be shut off when they aren't in use, and with
virtualization this could mean shutting down everything but the last
box.

**Inter-dependencies caused by virtualization**

I've seen this, felt its effects, and dealt with the agonizing pain.
Virtualization environments add complexity. If you don't handle this
complexity well normally, then stay far away from virtualization.

*Example*

    In the "virtualization can help organizations move quickly" section
    above, I talked about using Xen guests with filesystems on a remote
    iSCSI shared storage device running a distributed filesystem such as
    OCFS2, I also indicated that you could use DHCP for the Xen guests
    to find their associated filesystems. Well, of course -- I had
    problems with DNS, which was running in one of those Xen guests when
    everything came crashing down. After this event, the Xen guests
    couldn't find their disks because they couldn't find their DNS.

Hoff mentions ACL, VLAN, and other network-based dependencies. Of
course! Don't do this sort of stuff and you won't get yourself in
trouble. But this takes planning, risk management (of the
non-security-only kind), and repair process analysis.

Documenting your environment and networks should already be in place
before you move to a maturity step involving virtualization. Playing out
"what-if" scenarios with a whiteboard can be done in the same way that
Red-team exercises can be done. Sometimes being a security professional
can also allow you to demonstrate your other resourceful risk expertise.

**Virtualization isn't a technology -- it's a transition**

Allow me to bring all of this together.

Gartner has an excellent model for understanding IT/Operations called
the Infrastructure Maturity Model. The `[PDF] current
version <http://www.inmeta.com/SiteCollectionDocuments/IOI%202006/Gartners%20IMM%20sept06.pdf>`_
that I'm looking at right now has seven levels.

*Gartner Infrastructure Maturity Model*

#. Basic
#. Centralized
#. Standardized
#. Rationalized
#. Virtualized
#. Service-based
#. Policy-based

Assume you're in #1 (in the document above, it's #0) if you don't know
otherwise. A lot of smart Enterprises are at least Standardized (#3
above), many more are Rationalized, and some have taken steps towards
Virtualized.

I know that it is somewhat a theme of this blog (I also feel that it's a
theme of security and risk management in general), but basically what
I'm trying to say is that process is more important than technology.
Process needs to come first. If you think you can download Xen and
integrate it into your production IT/Operations infrastructure while
you're stuck in phases 1-3 of the Infrastructure Maturity Model, then
you need to take some ITIL classes. If you think buying the latest
VMWare, VirtualIron, or Microsoft Virtual whatever is going to help you
if you don't do the documentation, monitoring, life cycle care, strict
change management, refined repair processes, and enduring risk
management -- then you're just plain wrong. Virtualization is process,
not a product. Just like security.

Security and virtualization can complement each other, just like
security and availability (or ability to change) can compliment each
other. If you didn't read Hoff's post on `The Challenge of
Virtualization Security: Organizational and Operational, NOT
Technical <http://rationalsecurity.typepad.com/blog/2008/03/the-challenge-o.html>`_
-- please do so. What's more is that `Pete
Lindstrom <http://www.marketwire.com/mw/release.do?id=808515>`_ and
`Mike
Rothman <http://www.ebizq.net/blogs/mike_rothman/2008/01/securing_virtualization_a_prim.php>`_
say fairly similar things to what Hoff and I are saying. I'd say that
we're all pretty fairly united as an industry on this topic, which is
rare.

For those that want to read more on this topic, I suggest checking out
this book on `Virtualization Security <http://isbn.nu/0470177063>`_ from
Michael T. Hoesing when it comes out in the next week or so.
