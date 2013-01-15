author: dre
disqus_id: 0fec9918-bdf8-4b13-86b8-ad1e5061d4eb
disqus_url: http://www.tssci-security.com/archives/2007/12/10/building-a-security-plan/
mod_date: 2007-12-14 08:53:54
parent: 0
post_id: 339
post_type: post
pub_date: 2007-12-10 09:25:19
public: 'yes'
slug: building-a-security-plan
tags:
- defense
- tech
- politics
- security
- intelligence
- work
- hacking
template: post.html
title: Building a security plan

Building a security plan
########################

**An audit framework for evaluating structured security program
frameworks**

How many readers implemented a new security plan for 2006 or 2007? How
many had clients that implemented a new security program? Which
`frameworks <http://securitybuddha.com/2007/02/05/a-conceptual-hierarchy-of-security-politics/>`_
were involved?

**Possible frameworks (Criteria)**

-  No structured security program, or one based around a single vendor
   or regulation
-  Mike Rothman's `Pragmatic CSO <http://www.pragmaticcso.com/>`_
   (P-CSO)
-  Gunnar Peterson's `Security Architecture
   Blueprint <http://1raindrop.typepad.com/1_raindrop/2007/05/security_archit.html>`_
-  Chris Hoff's `Unified Risk
   Management <http://rationalsecurity.typepad.com/blog/2007/05/unified_risk_ma.html>`_
   (URM) framework
-  Skybox `Security Risk
   Management <http://www.skyboxsecurity.com/products/blueprint.html>`_
   (SRM) Blueprint
-  `ISO 27001 <http://en.wikipedia.org/wiki/ISO/IEC_27001>`_ with the
   27001/27002 ISMS
-  ISO 27001 `with a different
   ISMS <http://pcianswers.com/2007/05/28/pci-dss-vs-iso-17799/#comments>`_
   such as ISM3, PCI-DSS, SOX, SAS70, GLBA, HIPAA, or Safe Harbor
-  `COSO <http://en.wikipedia.org/wiki/COSO>`_ (via the Treadway
   Commission)
-  `ITIL <http://en.wikipedia.org/wiki/ITIL>`_ v2 or ITIL v3 (via the
   UK's OGC)
-  NIST `SP
   800-18 <http://csrc.nist.gov/publications/nistpubs/800-18-Rev1/sp800-18-Rev1-final.pdf>`_
   and `SP
   800-80 <http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-80>`_
-  IT `COBIT <http://en.wikipedia.org/wiki/COBIT>`_ (via ISACA)

**Break down your plan**

Even if you have no formal plan (e.g. buy SANS! buy Microsoft!), let's
try and find out how the security program was implemented. A plan can be
broken down into `three major aspects, and several areas of
specialty <http://www.guerilla-ciso.com/archives/218>`_, however my list
is not exhaustive:

-  Strategic (Enterprise architecture, inventory/asset management,
   capital planning)
-  Operational (risk management, risk analysis, certification standards,
   compliance)
-  Tactical (scan & patch, pen-testing, exploit writing, hardening
   standards)

Did you start from a top-down or bottom-up approach? Were you able to
implement all three aspects? To what degree? Which area was most
successful? Which areas were not successful?

**Plan effectiveness and measurement**

Did the framework you chose work for you in 2006/2007? Are you going to
continue using it? How effective was it? How did you measure the
effectiveness? Would you think about moving to a different framework in
2008? Which one? Why?

I read a book from Andrew Jaquith called `Security Metrics: Replacing
Fear, Uncertainty and
Doubt <http://safari5.bvdep.com/9780321349989?tocview=true>`_ on March
8th of 2007. Until the ISO 27004 standard is completed, this is above
and beyond the best/only way of measuring the effectiveness of any
security program. Rothman has `some great ideas on his
blog <http://securityincite.com/blog/mike-rothman/2007-doi-day-1-get-with-the-program>`_
and in the P-CSO. As a reader of the TS/SCI blog -- I think you should
feel obligated to check out
`securitymetrics <http://www.securitymetrics.org>`_ -- add the blog to
your `RSS <http://www.securitymetrics.org/content/rss.jsp>`_ and get on
the
`mailing-list <http://securitymetrics.org/content/Wiki.jsp?page=MailingList>`_
if you haven't already.

**Risk analysis**

The ISO 27005 standard is also in progress. The `ISO/IEC 27000-series
FAQ <http://www.iso27001security.com/html/faq.html#RiskAnalysis>`_
answers the question of which information security risk analysis methods
can be evaluated in the mean time. I have listed some of the obvious
risk analysis frameworks listed from the FAQ, but I don't have any
experience with a lot of these.

-  ISO TR 13335
-  `CERT OCTAVE <http://www.cert.org/octave/>`_ (early work by CMU)
-  `AS/NZS
   4360:2004 <http://www.saiglobal.com/shop/script/Details.asp?DocN=AS0733759041AT>`_
-  NIST `SP
   800-30 <http://csrc.nist.gov/publications/nistpubs/800-30/sp800-30.pdf>`_
-  NIST `SP
   800-39 <http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-39>`_
-  `Microsoft's security risk management
   guide <http://www.microsoft.com/downloads/details.aspx?familyid=c782b6d3-28c5-4dda-a168-3e4422645459&displaylang=en>`_
   (based on SLE, ARO, ALE, and ROSI)

A `comment on
SecGuru <http://www.secguru.com/link/firms_dark_about_risks_hackers>`_
introduced me to `Practical Threat
Analysis <http://www.ptatechnologies.com/>`_, a software suite (free to
researchers/analysts) that aids in risk analysis and audits. It has
modules for ISO 27001 and PCI-DSS 1.1, which include industry vertical
customizations. There couldn't be an easier way to perform
nearly-automated risk analysis, or just as a guide for self-assessment.

Risk analysis for software assurance has been a major interest of mine
for the past two years, and here's my sorted list:

-  Cigital `Architectural Risk
   Analysis <https://buildsecurityin.us-cert.gov/daisy/bsi/articles/best-practices/architecture/10.html>`_
   (early work by DHS BSI)
-  `Trike <http://www.octotrike.org/>`_, along with `Privilege-Centric
   Security Analysis <http://www.octotrike.org/toorcon2007.html>`_
-  `The Art of Software Security
   Assessment <http://safari5.bvdep.com/0321444426?tocview=true>`_,
   chapters
   `2 <http://taossa.com/index.php/the-vault/chapter-2-design-review/>`_-`3 <http://taossa.com/index.php/the-vault/chapter-3-operational-review/>`_
-  HP / SPI Dynamics `Web Application Risk
   Measurement <http://verifyconference.com/content/view/89/26/>`_
   (W.A.R.M.)
-  ISECOM `Source Code Analysis Risk
   Evaluation <http://www.isecom.org/research/scare.shtml>`_ (SCARE)
-  ISECOM `Risk Assessment
   Values <http://www.isecom.org/research/ravs.shtml>`_ (RAVs)
-  Chris Wysopal's `CWE
   Scoring <https://securitymetrics.org/content/attach/Metricon2.0/Wysopal-metricon2.0-software-weakness-scoring.ppt>`_
-  `FIRST CVSS2 <http://www.first.org/cvss/>`_ (early work by DHS NAIC)
-  `CERT OCTAVE <http://www.cert.org/octave/>`_ (early work by CMU)
-  Microsoft/CMU `Relative Attack Surface
   Quotient <http://www-2.cs.cmu.edu/afs/cs/usr/wing/www/publications/Howard-Wing05.pdf>`_
   (RASQ)
-  `AS/NZS
   4360:2004 <http://www.saiglobal.com/shop/script/Details.asp?DocN=AS0733759041AT>`_
-  Microsoft
   `STRIDE <http://en.wikipedia.org/wiki/STRIDE_%28security%29>`_ /
   DREAD
-  @Stake Business Adjusted Risk (BAR)

It's unsurprising to hear that the security measurement masters (Jaquith
and Rothman) both have extremely unique views on risk analysis. Rothman
seems to like "risk-adjusted expected loss models" in the P-CSO, but
also calls them "black-magic" and "fear-mongering". His solution appears
to revolve around ROSI/ROI methods he separates into
best/worst/middle-road cases.

Jaquith's view: risk-modeling is incredibly important, but very hard to
do. His primary point of his book, however, is that risk management is
dead. The `Deming Wheel <http://en.wikipedia.org/wiki/PDCA>`_
(Plan-Do-Check-Act or PDCA) is Jaquith's `Hamster Wheel of
Pain <http://www.securitymetrics.org/content/Wiki.jsp?page=Welcome_blogentry_040505_1>`_,
the antithesis of managing risk and measuring security. I found it
interesting that Jaquith's Holy Grail is the Security `Balanced
Scorecard <http://en.wikipedia.org/wiki/Balanced_scorecard>`_, which is
based on a Six Sigma tool by the same name. Six Sigma's key methodology
is based on the primary tool,
`DMAIC <http://en.wikipedia.org/wiki/DMAIC#DMAIC>`_
(Define-Measure-Analyze-Improve-Control), clearly inspired by Deming's
PDCA. `Adam Shostack has also
referenced <http://www.emergentchaos.com/archives/2005/12/epstein_snow_an.html>`_
the military strategy `OODA
Loop <http://en.wikipedia.org/wiki/OODA_Loop>`_
(Observe-Orient-Decide-Act) as the basis of a security plan. Most
interesting to me are "elements of a finding" from `GAGAS
7.73 <http://www.gao.gov/govaud/govaudhtml/d07731g-9.html#pgfId-1034320>`_
(US Government standards for `performance
audits <http://en.wikipedia.org/wiki/Performance_audit>`_) which lists
Criteria-Condition-Effect-Cause.

**Combining programs and putting risk assessment in its place**

While Jaquith says that the program categories in his book are based on
COBIT, he also mentions a gem entitled `Aligning COBIT, ITIL and ISO
17799 for Business
Benefit <http://www.isaca.org/Template.cfm?Section=Home&CONTENTID=22493&TEMPLATE=/ContentManagement/ContentDisplay.cfm>`_.
His approach to risk analysis (i.e. assessing risk) is tied to
effectiveness, is forward-looking, and denounces risk management and
asset valuation (especially ALE). Instead, his view is similar to mine -
risk assessment is primarily for software assurance and vulnerability
management.

I have mentioned products such as Configuresoft and Lumension Security
in the past few blog posts. These two vendors supply patch management
solutions. I probably should have mentioned other possibilities such as
BigFix, Opsware, and ThreatGuard (my bad). Recently, I came across the
MITRE `OVAL-Compatible <http://oval.mitre.org/compatible/>`_ program,
which `lists these and a few
other <http://oval.mitre.org/compatible/compatible.html>`_ vulnerability
management solutions. `OVAL <http://oval.mitre.org/>`_ support is great
for managing risk from vulnerabilities, but I feel obligated to also
mention `Cassandra <https://cassandra.cerias.purdue.edu>`_ (an email
service from CERIAS at Purdue), Advisory Check
(`advchk <http://freshmeat.net/projects/advchk/>`_, which works via
RSS), `SIGVI <http://sourceforge.net/projects/sigvi/>`_ (FOSS Enterprise
vulnerability database), and `OSVDB
2.0 <http://osvdb.org/blog/?p=207>`_. Of course, this "vulnerability
management" only applies to "known" vulnerabilities. Let's turn our
attention back to unknown vulnerabilities, which are inherently
weaknesses in software.

**What is the problem we are trying to solve? (Cause)**

I'm sure that you'll hate me for a few seconds here as I apparently go
off-topic on an already overly long post. I would really like to address
some issues with these modern-day security programs. Jaquith bought up
some excellent points regarding security programs, risk management, and
risk assessment. The root-cause of our problems come down to `laws of
vulnerabilities <http://www.qualys.com/research/rnd/vulnlaws/>`_. Stop
the vulnerabilities; stop the attacks; stop the threats.

Richard Bejtlich introduced some anti-audit sentiments while providing
interesting ideas in a recent blog post, `Controls Are Not the Solution
to Our
Problem <http://taosecurity.blogspot.com/2007/11/controls-are-not-solution-to-our.html>`_.
In it, he addresses hardened builds that are tested with vulnerability
management, pen-tested, and shot into outer space (j/k on this last
one). He also addresses topics of visibility and integrity. I can fully
see his vision here, and it's quite good from an operational
perspective.

For me, I come from a long line of intense operational background. I'm
your 1997-2004 equivalent of a Green Beret Veteran from Vietnam, only a
BGP Operator Veteran from Silicon Valley (although I prefer the term
`*Renegade Network
Engineer* <http://www.guerilla-ciso.com/archives/134>`_). My
introduction to Unix/network security came on much earlier and it was
then that I learned that all security problems are due to
vulnerabilities and all vulnerabilities are due to bugs.

However, I often fail where it appears that I most succeed. I had a hard
time trying to balance building things with breaking things, which made
me avoid the security industry like the plague (plus all of the other
obnoxious reasons). Sometimes I think that I don't have `the security
gene <http://securitybuddha.com/2007/08/29/the-security-genome-understanding-how-people-find-security-bugs/>`_.

Yet I proselytize developers managing risk by producing significantly
less vulnerabilities based on a process so simple in nature -- the `CPSL
I
defined <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_.
Why do I think this will work? These developers are also lacking the
security gene. Usually, only people with advanced knowledge and practice
in finding vulnerabilities or writing exploits have the skills and genes
necessary. These individuals are few and far between. Or are they?

**Vulnerability theory (Effect)**

Some of my frustrations as an operator have finally come to pass in the
security world as well. When my mentor `Tom
Jackiewicz <http://www.sun4c.net/>`_ handed me a dog-eared copy of DNS &
BIND, 1st Edition, and said "this is a black art; learn this first",
this instinctively pushed to me to learn everything about DNS. Weeks
later, I found out about the darkest art at the time, BGP routing. My
biggest take from both of these is that after learning them -- I
realized that they weren't really dark arts and were very easy once you
got the theory down.

On Tom's birthday this year (maybe `a
tribute <http://www.thiemeworks.com/write/archives/HackingFuture.htm>`_?),
MITRE released a document called `Introduction to Vulnerability
Theory <http://cwe.mitre.org/documents/vulnerability_theory/intro.html>`_.
In the introduction to this "Introduction" it reads:

    *Despite the rapid growth of applied vulnerability research and
    secure software development, these communities have not made much
    progress in formalizing their techniques, and the "researcher's
    instinct" can be difficult to describe or teach to
    non-practitioners. The discipline is much more black magic than
    science. For example, terminology is woefully garbled and
    inadequate, and innovations can be missed because they are
    misdiagnosed as a common issue.*
    *MITRE has been developing Vulnerability Theory, which is a
    vocabulary and framework for discussing and analyzing
    vulnerabilities at an abstract level, but with more substance and
    precision than heavily-abused, vague concepts such as "input
    validation" and "denial of service." Our goal is to improve the
    research, modeling, and classification of software flaws, and to
    help bring the discipline out of the dark ages. Our hope is that
    this presentation will generate significant discussion with the most
    forward-thinking researchers, educate non-expert researchers, and
    make people think about vulnerabilities differently.*

The document goes through rough definitions and examples. Many are based
on artifact labels to identify code sections/locations. In order, these
labels are given as Interaction-Crossover-Trigger-Activation. The
document also tries to introduce concepts and seeks feedback constantly
throughout.

My favorite part is the "Related Work" section. Some of these have
already been mentioned in this post, including the RASQ / `Measuring
Relative Attack Surfaces <http://www.cs.cmu.edu/~pratyus/as.html>`_ work
and the `Trike model <http://www.octotrike.org/>`_. I've also already
mentioned `The Art of Software Security Assessment: Identifying and
Preventing Software
Vulnerabilities <http://safari5.bvdep.com/0321444426?tocview=true>`_,
which apparently is a must-read for at least `chapters
1 <http://taossa.com/index.php/the-vault/chapter-1-software-vulnerability-fundamentals/>`_-3,
in addition to their `accompanying
website <http://taossa.com/index.php/the-vault/>`_. I'd also add
`generic vs. context-specific and design/code
visibility <http://safari5.bvdep.com/9780321424778/pref01?imagepage=i#X2ludGVybmFsX1ByaW50RmlkZWxpdHk/eG1saWQ9OTc4MDMyMTQyNDc3OC9jaDAxbGV2MXNlYzUmaW1hZ2VwYWdlPTE1>`_
as portrayed in `Secure Programming with Static
Analysis <http://safari5.bvdep.com/9780321424778?tocview=true>`_, which
also mentions the `OWASP Honeycomb
Project <http://www.owasp.org/index.php/Category:OWASP_Honeycomb_Project>`_.

The final reference, the infamous Matt Bishop (author of `Introduction
to Computer
Security <http://safari5.bvdep.com/0321247442?tocview=true>`_ and
`Computer Security: Art and
Science <http://safari5.bvdep.com/0201440997?tocview=true>`_), alludes
to `his research <http://nob.cs.ucdavis.edu/~bishop/research/>`_ on
"Vulnerabilities Analysis":

    *This project treats vulnerabilities as a collection of conditions
    required for an attacker to violate the relevant security policy.
    We're developing a set of conditions that apply to multiple
    vulnerabilties, which will help us locate previously unknown
    vulnerabilities, and a language to express the conditions in, which
    will help us reason about vulnerabilities with respect to security
    policies.*

**Types of vulnerability testing**

While reading `Matt Bishop's
research <http://nob.cs.ucdavis.edu/~bishop/research/>`_, I also
uncovered an interesting presentation entitled `Checking Program
Security: From Proofs to Scanning via
Testing <http://nob.cs.ucdavis.edu/~bishop/secprog/netsec2000/index.html>`_.
He talks about different types of `security
testing <http://msdn2.microsoft.com/en-us/testing/bb417048.aspx>`_ (see
the comments discussion between Ariel and I in the previous post on `Why
pen-testing doesn't
matter <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/#comments>`_
for more information). From my blog post on `Formal Methods and
Security <http://www.tssci-security.com/archives/2007/11/23/formal-methods-and-security/>`_,
I will change these to read:

-  `Formal <http://nob.cs.ucdavis.edu/~bishop/secprog/netsec2000/page5.html>`_
-  Semi-Formal (e.g. MDA, MDE)
-  `Informal <http://nob.cs.ucdavis.edu/~bishop/secprog/netsec2000/page6.html>`_
-  `Ad-hoc <http://nob.cs.ucdavis.edu/~bishop/secprog/netsec2000/page7.html>`_

Today, most vulnerability testing is done as ad-hoc. There are
multi-stage attacks such as those described in `Building Computer
Network
Attacks <http://www.coresecurity.com/files/attachments/Futoransky_Notarfrancesco_Richarte_Sarraute_NetworkAttacks_2003.pdf>`_
and `w3af - A framework to own the
Web <http://w3af.sourceforge.net/documentation/user/w3af-T2.pdf>`_. This
sort of research may bring penetration-testing into the world of science
by using formal methods such as `hierarchical task
networks <http://en.wikipedia.org/wiki/Hierarchical_task_network>`_
(HTN) and `Markov decision
processes <http://en.wikipedia.org/wiki/Markov_decision_process>`_
(MDP). HTN and MDP enter the realm of AI -- the promised land for
**all** of the scanner vendors (network, application, software,
source-code, exploitation engine, et al).

**Artificial Intelligence to the rescue**

Godel and Turing would say that computers are not capable of producing
formal proofs, including any automated theorem-prover (ATP). I recently
read `Another Look at Automated
Theorem-proving <http://www.fermath.info/content/view/175/1/>`_, which
demonstrates these principles remain the same -- ATP `over-promises and
under-delivers <http://www.cs.georgetown.edu/~denning/infosec/award.html>`_.

Take an example from that paper, `Fermat's Last
Theorem <http://en.wikipedia.org/wiki/Fermat's_last_theorem>`_. The
proof was completed some 357 years after the theory was proposed. It was
argued by the media that the theory should have been solvable by a
computer.

    If an integer *n* is greater than 2, then the equation
    *a*\ :sup:`*n*` + *b*\ :sup:`*n*` = *c*\ :sup:`*n*` has no solutions
    in non-zero integers *a*, *b*, and *c*.

However, this problem can only be solved through a geometric or
`inductive
proof <http://en.wikipedia.org/wiki/Mathematical_induction>`_, requiring
a human. An ATP, given *a^3* + *b^3* = *c^3* to solve *a*, *b*, and *c*
-- will simply run forever. This is due to `the Halting
problem <http://en.wikipedia.org/wiki/Halting_problem>`_.

Nitesh Dhanjani wrote an excellent piece on `Illogical Arguments in the
Name of Alan
Turing <http://www.dhanjani.com/archives/2007/11/illogical_arguments_in_the_nam.html>`_
recently. For `those in the security
industry <http://jeremiahgrossman.blogspot.com/2006/11/what-scanners-can-and-cant-find-who.html>`_
claiming the `Halting
problem <http://rgaucher.info/b/index.php/post/2007/08/29/I-now-understand-why-its-difficult>`_
(or the undecidability problem, one of Turing's other laws) as the
`reason why we haven't improved any
further <http://www.matasano.com/log/498/mozilla-vs-klocwork-611-defects-72-vulnerabilities-3-verified-bugs-995-useless/>`_,
this should be mandatory reading.

See my previous blog post on `Formal Methods and
Security <http://www.tssci-security.com/archives/2007/11/23/formal-methods-and-security/>`_
for some thoughts on how model-checkers and ATP's can come to our
rescue. Also expect some future posts on this topic (although I could
use some guidance on where to research next).

**Chess and the vulnerability problem (Condition)**

No, I'm not talking about `Brian Chess from Fortify
Software <http://extra.fortifysoftware.com/blog/>`_ (although this may
be a good place to start with your budgeting plans for 2008). I'm
talking about the game, "chess".

AI may have the best tactics, but only humans can provide the strategy
necessary to defeat their machine opponents. Except of course in the
case of `Deep Blue <http://en.wikipedia.org/wiki/IBM_Deep_Blue>`_, a
chess-playing computer developed by IBM that defeated world champion
Garry Kasparov in 1997. Deep Blue cheated on strategy, by using an
evaluation function that had `previously
analyzed <http://jeremiahgrossman.blogspot.com/2006/10/whitehat-sentinel-30.html>`_
700k grandmaster games, which additionally required tuning between
games. Deep Blue was also tuned specifically to Kasparov's prior games.

Many people who first start to play chess think that it's entirely a
strategic game (based on the above and other various reasons), focusing
very little effort on tactical maneuvers. Experienced chess players will
tell you that chess is mostly tactics. Chess "currency" such as time,
space, and material eventually become patterns of recognition to chess
masters.

In the third section above, "Break down your plan", I list three aspects
of a security plan: strategic, operational, and tactical. If your
security plan is largely tactical, you'll begin to see patterns of
vulnerabilities and software weaknesses. If it's too
strategic/operational and not backed up with enough tactics, you may end
up with some losses. Many security program frameworks do not include
enough information on tactics, or they don't address the right tactics.

**Criteria, Condition, Effect, Cause, (Recommendation)**

Having said all of this, I would encourage people to evaluate their
current security program against Gunnar Peterson's `Security
Architecture
Blueprint <http://1raindrop.typepad.com/1_raindrop/2007/05/security_archit.html>`_.
I feel his program covers a lot of the tactical, risk management, and
measurement issues presented in this post in a very succinct manner.
Don't take just my word for it; also see what `Augusto Paes De
Barros <http://www.paesdebarros.com.br/english/2007/05/security-architecture-blueprint.html>`_
(he suggests combining the P-CSO with the Security Architecture
Blueprint), `Anton
Chuvakin <http://chuvakin.blogspot.com/2007/05/on-security-architecture.html>`_,
`Alex Hutton <http://riskmanagementinsight.com/riskanalysis/?p=182>`_,
`Chris
Hoff <http://rationalsecurity.typepad.com/blog/2007/05/unified_risk_ma.html>`_,
and Mike Rothman (under Top Blog Postings, on the `first one
listed <http://securityincite.com/blog/mike-rothman/the-daily-incite-may-2-2007>`_
here and the `third one
listed <http://securityincite.com/blog/mike-rothman/the-daily-incite-may-14-2007>`_
here) have to say.

It would be interesting to turn Gunnar's security program framework into
an ISMS usable by ISO27k. The combined framework could then be further
combined with COBIT and ITIL in order to meet a variety of requirements.
This would allow for ease of use when dealing with auditors,
particularly under the auspices of `governance and
regulations <http://searchsecurity.techtarget.com/qna/0,289202,sid14_gci1263828,00.html>`_.

In the Security Architecture Blueprint, I particularly like the
inclusion of Assurance, and pointers to work such as `Architectural Risk
Analysis <https://buildsecurityin.us-cert.gov/daisy/bsi/articles/best-practices/architecture/10.html>`_.
His domain specific metrics and use of
`dashboards <http://en.wikipedia.org/wiki/Digital_dashboard>`_ is above
and beyond some of the material in Jaquith's Security Metrics.

I recently came across a presentation Gunnar gave at QCon, the
`InfoQ <http://www.infoq.com>`_ conference in San Francisco. While the
talk was on `SOA and Web Services
Security <http://qcon.infoq.com/sanfrancisco/presentation/SOA+and+Web+Services+Security>`_,
in the first section he addressed Network, Host, Application, and Data
security spending in a way that I thought was truly unique. My take was
that typical businesses are spending too much on network security and
not enough on data or application security. It appeared as if he
recommended to take half of the network security budget and allocate it
to software assurance and data protections.

One of the most interesting takes from Gunnar is the unanswered question
about asset valuation. On May 4, 2006, as a post to the securitymetrics
mailing-list, he said:

    *"Customers and customer relationships, as opposed to a valuation of
    the amount of gigabytes in the database, have tangible, measurable
    value to businesses, and their value is much easier to communicate
    to those who fund the projects. So in an enterprise risk management
    scenario, their value informs the risk management process ... [For
    example, consider] a farmer deciding which crop to grow. A farmer
    interested in short-term profits may grow the same high-yield crop
    every year, but over time this would burn the fields out. The
    long-term-focused farmer would rotate the crops and invest in things
    that build the value of the farm and soil over time. Investing in
    security on behalf of your customers is like this. The investment
    made in securing your customer's data builds current and future
    value for them. Measuring the value of the customer and the
    relationship helps to target where to allocate security resources".*

Gunnar's recommendations here are consistent with Balanced Scorecards,
and the Security Architecture Blueprint is directly compatible with
Jaquith's Security Metrics. This also allows easy integration with Six
Sigma, including other 6S tools such as `Voice of the
Customer <http://en.wikipedia.org/wiki/Voice_of_the_customer>`_ (VOC),
KJ Analysis, and SIPOC.

Having a good security plan is critical to the success of your
organization, your job, and extends value to your customers. Will you
make the right decision on a security program for 2008? Will you be able
to say whether your program was effective come 2009? Did you calculate
risk correctly? Did you value your assets correctly? What regulations
and other requirements do you need to satisfy or comply with? Will your
security program allow you to fully meet all of these requirements?
Based on these recommendations, this framework should guide you towards
building the right security plan in no time.
