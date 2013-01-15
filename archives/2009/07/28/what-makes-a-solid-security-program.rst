author: dre
disqus_id: 53eea713-41f5-4146-ad16-036d94afac58
disqus_url: http://www.tssci-security.com/archives/2009/07/28/what-makes-a-solid-security-program/
mod_date: 2009-07-28 17:26:28
parent: 0
post_id: 453
post_type: post
pub_date: 2009-07-28 17:26:28
public: 'yes'
slug: what-makes-a-solid-security-program
tags:
- security
- work
template: post.html
title: What makes a solid security program?

What makes a solid security program?
####################################

In my most recent post, I identified the direction and state-of-the-art
in application security. We all know of the importance of application
security in today's environments. However, finding out where to fit
application security policies and programs into an overall security
program (or organizational security plan) is as difficult (or more
difficult) than integrating mandatory regulations, compliance standards,
secure enterprise architectures, and many other risk management
activities.

Building a continually improving security program is an important and
common topic. For many CISOs and other directors of security programs --
this has been their day job since they earned their titles. There still
exists huge gaps between IT/Operations, Application Development, and
Information Security Management organizations and how they work
together. There are gaps in communication between departments, and even
within departments. The challenges of finding and retaining talent are
not unique only to appsec, as suggested in my last post.

I've only spoken about `building a security
plan <http://www.tssci-security.com/archives/2007/12/10/building-a-security-plan/>`_
once before on this blog, but it's a popular conversation making the
rounds. `securitymetrics.org <http://securitymetrics.org>`_ (the blog,
mailing-list, Metricon conferences, and book) resurfaced a lot of my
interest, as well as the work that `Mike
Rothman <http://securityincite.com>`_ did with the `Pragmatic
CSO <http://pragmaticcso.com>`_, Michael Santarchangelo with `his book
and the SecurityCatalyst
blog/podcast/forums <http://www.securitycatalyst.org>`_, and numerous
others.

Not all security programs and bloggers have picked up on these
resources. Take `Creating a Solid Security
Program <http://insight.accuvant.com/strategy/creating-a-solid-security-program/>`_
from Accuvant's new blog called `Insight <http://insight.accuvant.com>`_
from Kirk Greene. He appears to be familiar with some of the above
resources, but I think there is a lot more out there. After you read my
comment (which never got "approved"), be sure to check out the new
material I've been reading on the state-of-art in information security
management, especially including the human element.

**Comment gone wrong #2**

*I think what you wrote here is a great example of a vulnerability
management program, but not a security program. Even then, it's actually
more operational (like a compliance initiative) because it gives little
strategic or tactical advice.*

*Starting with awareness is probably the worst way to build a
vulnerability management or security program. Maybe we just disagree,
but I'd like to see some evidence or metrics demonstrating that this
technique has any value, if you can point me to the literature.*

*Capital planning based on current or mock Strategy Maps and
Scorecards/Dashboards is really the first step for building a security
program. It is often best to first work with risk management (an
operational activity) that can feed metrics up to the strategy, although
this should be done along with compliance, regulatory requirements, and
potential liability factors. Risk assessments, especially ones done with
data classifications, can be the tactical metrics to pull into a risk
management report. Simple risk assessments can be done using business
tools such as 5 Forces, PESTEL, and/or SWOT anlaysis -- although in
security we have various others including FAIR, FMEA, and PRA.*

*I also like the concept of drilling down another strategic metric
platform via Enterprise Architecture, in particular an Enterprise
Architecture Blueprint (such as the one from Gunnar Peterson).
Enterprise Architecture can bring metrics down to the operational level
with security policy and certification standards. These can be turned
into server and application hardening standards at the tactical level.*

*Finally, asset/inventory management is another strategic activity that
can be conducted to build a proper security program. When combined with
the risk analysis data, asset management will provide guidance on where
to scan & patch, pen-test, and perform exploit development activities at
the tactical level. These tactical procedures can then provide more
metrics up to risk management, and back again up to more strategic
activities.*

*On second or further iteration, a balanced scorecard can easily be
created to include compliance metrics (operational) along with a
strategic direction (suggested as a strategy map). The balanced
scorecard could then include metrics from incident management, which in
turn could feed back into risk management and liability factors. SABSA
could be used to build a governance program to keep the capital planning
and security program alive and running with the rest of the business.
Additional qualitative metrics based on organizational development and
organizational behavior could be included in a hybrid platform such as
business scorecards very easily, including Six Sigma metrics such as
Voice of the Customer, et al. Simple, isn't it?*

*Your notion of using Application Security Scanners in a vulnerability
management program disturbs me -- especially in the way you have
suggested it. Maybe you're not familiar with these tools or how an
application assessment is best performed to today's standards.*

*First of all, the surface coverage for even the best app scanners is
94%, with many getting less than 1% surface coverage. Even IBM/Rational
AppScan was only showing 74% surface coverage using modern link
extraction application drivers.*

*Secondly, the false negative rate of app scanners is approaching 92%,
often more. The false positive rate varies between tools, testers and
apps, but I've seen figures as high as 40%. App scanners must be
properly configured and utilized by an expert in order to be effective
at all. Even then, black-box app scanners need to be combined with
static analysis and manual expert review for a significant majority of
applications falling under "most-risky" data classifications such as PII
(PCI-DSS, HIPAA, state performance auditing, etc) or financial data
(SOX, GLB, et al). Even middle-of-the-road risky data classifications
(e.g. proprietary information that has yet to be patented) should
probably have more done to them than a simple black-box app scanner.*

*When I say manual review + static analysis, I really mean it. The
automated tools pay for themselves by the amount of time saved -- but
can never be used alone. Security review tools that implement static
analysis techniques, such as Fortify, Ounce, Checkmarx, Parasoft,
Grammatech, DevInspect, AppScan DE, Coverity, Klocwork, and SciTools
have better false negative rates than black-box scanners, but much worse
false positive error rates. FN is usually between 65-85% (the tool FAILS
to find vulnerabilities this often); FP is 85-99%, you'll often see more
"vulnerabilities found" than lines of code averaged across apps. This is
why manual expert review with full-knowledge remains the best
application assessment technique.*

*I don't mean to harsh on you too hard, but it does appear that you need
to do more homework before making prescriptions for building a security
program -- let alone a vulnerability management program. You seem to be
capable of providing this information accurately (based on your last
blog post and the great blogroll you've setup so far), so I expect
better out of future blog posts.*

**Aftermath and reasoning**

The consulting companies that I work with (and other colleagues, often
consultants from other consulting companies that have been on the same
or similar engagements with me) have all taken a strong interest in
building trusted advisory adjuncts to the "too busy IT manager" or
Mascot CISO/CSO. We have to in order to remain relevant and respected.
However, I've always viewed consultants as "the colostomy bag of a very
ill organization". Fix the organization and the technology advancements
(or whatever else is needed) become agile and sustainable.

Rafal Los recently had me on his `31337 Spotlight: Andre
Gironda <http://preachsecurity.blogspot.com/2009/07/31337-spotlight-andre-gironda.html>`_
for his `Digital Soapbox blog <http://preachsecurity.blogspot.com/>`_.
BTW - Thanks Rafal -- hope you and nearly everyone else are having fun
in Vegas right now! There are a few links which may have got lost in my
nonsensical chatter, so I wanted to specifically point them out. I said:

    *I like the idea that I can use my hacking skills for good and cause
    organizational change through discovery of `organizational
    management and
    behavior <http://en.wikipedia.org/wiki/Category:Organizational_theory>`_.
    A real "hack" to me is to take a `disfunctional
    organization <http://blogs.bnet.com/ceo/?p=1462>`_ and turn it into
    something awesome.*

There are very few state-of-the-art resources on organizational theory
combined with information security management. Allow me to point you to
the few that I'm familiar with and highly recommend. After you check
them out, you may find yourself coming to similar or related conclusions
as I did with the above comment.

-  David Lacey, author of `Managing the Human Factor in Information
   Security: How to Win over Staff and Influence Business
   Managers <http://isbn.nu/9780470721995/>`_
-  Krag Brotby, author of `Information Security Metrics: A Definitive
   Guide to Effective Security Monitoring and
   Measurement <http://isbn.nu/9781420052855/>`_ and `Information
   Security Governance <http://isbn.nu/9780470131183/>`_
-  Ron Person, author of `Balanced Scorecards & Operational Dashboards
   With Microsoft Excel <http://isbn.nu/9780470386811/>`_ -- one of many
   books on Balanced Scorecards, but very recently written and caught my
   attention.
-  Ian Gorrie, blogger of Bad Penny, with posts such as the most recent
   `The Trials of
   Toorcamp <http://gorrie.org/2009/07/16/toorcamp/#more-509>`_ where he
   kindly provided the slides to his talk entitled "Hacking HR". He has
   even posted earlier on information security management (or as he
   calls it `security information
   management <http://gorrie.org/tag/sim/>`_, an interesting but perhaps
   confusing twist there). My favorite was a presentation he did at
   `ITCi 2007 <http://gorrie.org/2007/11/12/itci-2007/>`_ that is a must
   read.
-  Kevin Nassery, (`@knassery <http://twitter.com/knassery>`_, who spoke
   at LayerOne 2009 on `Diplomatic Security
   Consulting <http://layerone.info/?page_id=27#knassery>`_, with
   `video <http://www.youtube.com/watch?v=Q3YdY0qYEuk>`_ and
   `slides <http://www.layerone.info/archives/2009/Kevin%20Nassery%20-%20Diplomatic%20Consulting%20-%20L1%202009.pdf>`_
   available.

I have at least one more of these "comments gone X" posts, but the next
ones should both begin and end on more positive notes. If you have any
suggestions of comments you've seen from me that you would like to see
turned into a blog post, let me know!
