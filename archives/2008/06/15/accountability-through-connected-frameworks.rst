author: dre
disqus_id: ba905ffb-9002-464b-8498-f6f8de56778f
disqus_url: http://www.tssci-security.com/archives/2008/06/15/accountability-through-connected-frameworks/
mod_date: 2008-06-15 11:01:24
parent: 0
post_id: 413
post_type: post
pub_date: 2008-06-15 10:26:26
public: 'yes'
slug: accountability-through-connected-frameworks
tags:
- Conferences
- Tech
- People
- Security
template: post.html
title: Accountability through connected frameworks

Accountability through connected frameworks
###########################################

Apparently `Laura Chappell and Mark Curphey were presenting at the
Microsoft TecEd 2008 Security
Track <http://blogs.msdn.com/rockyh/archive/2008/05/22/tech-ed-08-security-track.aspx>`_
last week. I haven't heard too much about what happened as a result, and
I really wish I was there to see them speak about their respective
topics.

For those who don't know Mark Curphey, he was the founder of OWASP, and
is currently working for Microsoft on the `Connected Information
Security
Framework <http://securitybuddha.com/2008/06/10/grc-why-its-of-limited-interest-to-me/>`_.
I dug up more information on the Microsoft CISF from reading this `[PDF]
presentation at the Jericho
Forums <http://www.theopengroup.org/jericho/mcurphey_ConnectedInformationSecurity.pdf>`_
-- which should be required reading, even if you don't read the rest of
this blog post.

**The Microsoft Connected Information Security Framework**

Mark identifies a few key areas of process for the Microsoft CISF:

#. Understand and document the process
#. Understand metrics and objectives
#. Model and automate process
#. Understand operations and implement controls
#. Optimize and improve

He identifies several technology solutions such as:

-  ASP.NET 3.5 WWF for Business Process Management / Workflow
-  PerformancePoint Server for Business Intelligence and Enterprise
   dashboards / Business scorecards
-  SharePoint Server 2007 for Collaboration / Groupware
-  `BizTalk <http://en.wikipedia.org/wiki/BizTalk>`_ Server for
   Application Integration / Business Activity Monitoring (BAM)
-  A few other obvious Microsoft sells (CardSpace, Active Directory, et
   al)

**CISF for everybody else**

There's quite a lot to like about what Mark says (even if you're a rabid
open-source fanatic), and what he claims is "an 80 percent solution for
the masses". Here's what the other 20 percent might see:

-  eGroupWare's workflow module or a similar free, `open-source
   groupware
   solution <http://en.wikipedia.org/wiki/Category:Free_groupware>`_ (my
   recommendation from the hip is probably
   `Zimbra <http://www.tssci-security.com/archives/2007/12/13/collaborative-systems-and-ajaxria-security/>`_)
-  WordPress, MediaWiki, and similar for dashboards, collaboration, and
   other needs

In basic terms, Mark is trying to say that `we need to formalize our
security processes to include concepts of modern
risk <http://www.tssci-security.com/archives/2008/05/29/software-security-a-retrospective/>`_.
He's also saying that `everyone needs a security
plan <http://www.tssci-security.com/archives/2007/12/10/building-a-security-plan/>`_.

**GRC refugees**

I don't know if Mark got to speak about the Microsoft CISF at TechEd (or
how well it was received), and I wasn't able to find a lot of
information on what did happen. However, I was able to dig up a possible
short-term solution for those seeking refuge from the now-dead GRC camp.

Actually, I'm still not quite able to make the easy distinction between
Mark's goals with CISF and GRC platforms/tools. Eventually, I'm sure
this point will be cleared up. Mark calls GRC platforms, "Security
departments in a box", but I'm failing to understand how the compliance
part of a CISF isn't just "A Security department in a box: Just add milk
(or soy milk)".

**Visibility: "It's even better than Monitoring"**

Mark identified a problem-area for process point number 4 above:
"Understand operations and implement controls". He suggested
"Visibility": Fast and accurate compliance and audit data. Here's a term
that I've seen thrown around a lot recently in all of the various blog
posts / Verizon book report notes from their `[PDF] data breach
survey <http://www.verizonbusiness.com/resources/security/databreachreport.pdf>`_.
It's a term that I'm quickly getting sick of, but let me give you the
short-order answers from the various religious institutions.

Richard Bejtlich is without a doubt, the largest supporter of
"Visibility" for information security. I think he even has a blog post
called "Visibility, Visibility, Visibility". The guy is nuts for the
word. Richard is the type of guy who likes to integrate "Visibility"
into new security catch-phrases. He even has his own acronym, NSM for
"Network Security Monitoring", which is really old news compared to
"Visibility".

**Network visibility**

When Marcin did a `blog post about NSM earlier last
month <http://www.tssci-security.com/archives/2008/05/05/lucky-for-nsm-extracting-files-from-tftp-packets-in-wireshark/>`_,
I had lots of thoughts that I wanted to say. Largely, the problem with
NSM, visibility, IPS, and IDS is that these technologies are so easily
subverted by any intelligent adversary, or by a newbie who happens to be
using encryption properly.

Visibility also brings me back to the good old days, when packets were
cleartext and adversaries weren't organized. I have fond memories of
Zalewski's `museum of broken
packets <http://lcamtuf.coredump.cx/mobp/>`_. Taosecurity came on the
stage a bit late, and Richard's `Openpacket.org capture
repo <https://www.openpacket.org/capture/list>`_ would have been
incredibly useful many years ago (although I'm not sure of the value
now). For those just getting into the world of packet captures, it would
have been great to see `Laura
Chappell's <http://laurachappell.blogspot.com/>`_ presentation at
Microsoft TechEd 2008 (although she appears to be `very
private <http://esthermofet.blogspot.com/2008/06/system-security-forensics-and-attack.html>`_
about her expensive material) -- because her
`courseware <http://demeter.uni-regensburg.de/Lauras_Lab_Kit_v8/>`_
still remains one of the easiest and fastest (and most
`expensive <http://www.hotlabs.org/wlsat/>`_) ways to learn Wireshark.
She does make her `Trace Files <http://www.packet-level.com/traces/>`_
available for download, which I guess isn't a half-bad attempt at giving
back to the community.

**Host compliance visibility**

Ok, here we go... I'm creating more problems than I'm solving -- but
bear with me for a second. I don't think this has anything to do with
Microsoft's CISF or GRC tools, but it's another ingredient to add into
the mixing bowl. While researching about Microsoft TechEd 2008, I came
across some interesting links that somehow apply to this whole message
I'm trying to convey.

I found a TechNet article on `Security Compliance
Managment <http://technet.microsoft.com/en-us/library/cc677002(TechNet.10).aspx>`_
dated June 5th, 2008. Basically, it's a `downloadable
toolkit <http://www.microsoft.com/downloads/details.aspx?FamilyID=5534bee1-3cad-4bf0-b92b-a8e545573a3e&displaylang=en>`_
that integrates with Microsoft SMS / Configuration Manager 2007.

Unfortunately, this means that it requires a full version of that
software since it relies on DCM (desired configuration management)
features, which are not available in the free version of Microsoft SMS,
`Microsoft System Center Essentials
2007 <http://www.microsoft.com/downloads/details.aspx?FamilyID=27342759-e9d6-4073-918c-e9dff77d0206&displaylang=en>`_.
Were it available (hint to Microsoft, please do this!), this would add
an incredibly powerful, free compliance tool that would support up to 10
servers and 50 clients.

The primary component of the Security Compliance Managment Toolkit,
`GPOAccelerator <http://www.microsoft.com/downloads/details.aspx?FamilyID=a46f1dbe-760c-4807-a82f-4f02ae3c97b0&displaylang=en>`_,
is also available for free, but the other features (such as reporting
and SCAP support) would be really nice to have.

I've seen other tools like these: little tools that are faster/easier
than GRC tools, but that still provide enough information to those who
need it for their auditors. I'm not sure where they fit or how useful
they are, but here they are nonetheless.

**What I don't like about Visibility**

Visibility has a problem: it only sees what it can see; and it usually
only sees what it wants to see. This is why I prefer accountability over
visibility.

In accountability, when you locate a new problem (or just want
information about it): you bring up the name of a person or team
(hopefully with expertise). That person or team has contact information:
phone, email, IM, and location available in the directory. The other
side of accountability is when you're the source of the problem. In this
case, the person or team usually comes to you and provides
identification.

In basic terms, accountability means that you're working with real, live
people. Visibility usually involves looking at a pane-of-glass, a
product, a spreadsheet, or some graphic. It makes things easier, but it
doesn't solve problems directly, even when "fully automated".

**BPM: more People (Accountability) or more Technology (Visibility)?**

I think the `Wikipedia article on
BPM <http://en.wikipedia.org/wiki/Business_Process_Management#Approaches_within_BPM>`_
sums up the problems fairly well. GRC tools provide too much visibility
in a technology platform that isn't really necessary or working to meet
the end goals.

This is where there exists a divide. It doesn't matter if the economy is
up or down, organizations have to find their balance of spending on
people versus spending on technology.

"Don't lead with a tool"

As a strategy consultant, I'm often in precarious situations to make
suggestions that appear outside of my realm of expertise. I think we
need more experts on Organizational Development, Organizational
Behavior, etc. My gut instinct tells me that in many organizations,
we're leading with too many tools -- and we're also very top heavy. The
problems with application/software security are largely the result of a
lack of accountability. We need more contributors (and the claim is that
we can't add enough, or add them fast enough), but really we need better
(and less) managers. A single manager should be able to grow his/her
organization to the necessary size with the necessary measures in order
to be accountable for every win and every mistake. Organizations should
hire managers who can do this without adding complex, unnecessary, or
idle layers of management. I've worked with managers who manage 50
reports (as an example) with full accountability in place and nearly
every contributor happy and successful.

I think it's important to look at the breach data, sure. But it's also
important to hear from the people involved in breach identification and
response. I like to hear stories. I never hear stories. We're too quick
to jump to conclusions about what the numbers mean. We're too quick to
use the numbers to prove our points, or to reiterate / bring-up old
discussions.

What I'd like to see in a Connected Information Security Framework is
identification of roles and responsibilities, as well as active levels
of determining accountability to the necessary controls. Do we need to
redefine what a CISO is? What a security architect is? What a secure
code reviewer / developer is? What a security tester is?

What does "Information Security Analyst" or "Information Security
Engineer" mean anymore?
