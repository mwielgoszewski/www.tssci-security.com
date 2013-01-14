author: dre
disqus_id: ceec9e86-4813-4884-abe6-823256c36555
disqus_url: http://www.tssci-security.com/archives/2008/05/29/software-security-a-retrospective/
mod_date: 2008-05-29 08:35:26
parent: 0
post_id: 401
post_type: post
pub_date: 2008-05-29 08:35:26
public: 'yes'
slug: software-security-a-retrospective
tags:
- Defense
- Code
- Security
template: post.html
title: 'Software Security: a retrospective'

Software Security: a retrospective
##################################

Today I am going to cover a topic that is the most important to me:
software security. When I talk about "software security", I refer to the
process of building applications -- the artifacts, components, and
capital that goes into making a polished product. Applications are
something that development teams worldwide strive to be proud of -- to
make something that is used and adored by its userbase.

Traditionally, software has been built using an inaccurate paradigm.
First, the software is constructed by ad-hoc teams, with ad-hoc
decision-making, ad-hoc deadlines, and an informal process. This
informal process describes the majority of applications that have been
released to the public, or sold to specific customers, over my entire
lifetime.

In this blog post, my goal is to arm you with the most accurate
information possible to build your dream application. However, there is
a cost involved. That cost is that the software be built in a secure
manner -- one that avoids overly common software weaknesses known to
criminals, known to adversaries, known to any would-be attacker. From
software engineers on their own to development teams part of the largest
of organizations, this advice may keep you from making the headline news
with the words "vulnerability" or "exploit" attached, but may make you
news such as "committed to secure practices" or "most secure app in its
class". There will certainly be gaps, primarily due to the human factor
(applications can still be gamed and reduced to trivial "phishing-like"
attacks against the users of such apps).

Attacks against people will always be valid attacks for threats such as
online organized crime and the nefarious crimeware created out of such
circles. However, there is a new hope in software security: a promise
that when broken windows are repaired -- that the streets will stay
clean. With a clean street to walk upon, it is then up to the community
to solve the people problems. At least in the case of acute software
security practices -- an application's community -- it's users -- get to
stand on firm ground for any fights that transpire. If you're real good,
you'll take this advice even further to solve any risk factors facing
your applications.

**Issue One: Identify and expose risk**

*Summary --*\ Risk first; security second. Find a risk expert. Use
him/her for planning.

*Problem --*\ Understand the risks that your applications face,
preferably before you design or build them. If you haven't yet started a
development project, this is the best time to formalize the risk
process. If you already have a completed application or a whole product
suite -- risk management is intensely more complex.

There are many people in the world that are fluent in the language of
risk. If you have a CPA, physician, or lawyer, then you understand that
he/she is probably one of the better people to go to for general-life
risk advice. In the world of computed applications, it is unlikely that
this same person will have the credentials necessary to help you.

We need software risk experts. The best way to learn about software
risks is by involving yourself in a formal software development
lifecycle. In other words, requirements engineers, software architects,
developers, and software quality engineers make some of the best
software risk experts.

However, the current world's threat landscape changes modern software
risk. Adversaries have outsmarted and outgunned the average software
risk expert by introducing esoteric attack-paths by using widely unknown
and misunderstood weaknesses in software. Everyone who thinks that they
are an expert in software risk must now worry about the intricacies of
SQL injection, cross-site scripting, integer vulnerabilities, and heap
overflows -- in addition to deadlock/livelock, exception-handling, and
the forbidden "crash" issues of the past.

*Recommendation --* Super spies, organized criminals, and federal
law-enforcement field agents all have one thing in common: they don't
operate alone.

Find some risk experts and heed their advice. You'll want
recommendations, but I suggest you avoid the typical places one would
go. For example, people assume that the PCI SSC regulates good QSAC's to
do code review, or ASV's to do application scanning. Other people assume
that Microsoft, Symantec, SANS, or another vendor has "the inside track"
for security information. These are largely fallacies, due to the
following issues:

-  Expertise in "security" or "compliance" does not translate to
   expertise in software risk
-  Expertise in network or information security certainly does not
   translate to expertise in software security, let alone software risk
-  As we will soon discover, code review and application scanning do not
   make software secure, nor do they provide any risk management, risk
   assessment, or any measurement of software risk

That said, I won't make any specific recommendations today since I am
contractually obligated by my employer to avoid such details, and naming
competitors would be an unfair advantage. My suggestion is to find a
solutions provider that has intimate knowledge of the other issues
brought up in this post. If you find a software risk management provider
that addresses my issues in their entirety, it is quite likely that they
will suffice for software risk planning. Of course, nothing is stopping
you from commenting about a software risk solutions provider that you've
worked with or are looking to work with in the future.

*Honorable mention* -- NSA Red team white-boarding. Crimeware,
especially the recent botwebworms going around. That special way that
Taiwan and China interact over the Internet.

**Issue Two: Perform security requirements engineering**

*Summary --* 60% of all defects exist by design time (Gilb 1988).
Reworking a software requirements problem once the software is in
operation typically costs 50 to 200 times what it would take to rework
the problem in the requirements stage (Boehm and Papaccio 1988).
Statistics taken from `Software Quality at Top
Speed <http://www.stevemcconnell.com/articles/art04.htm>`_, adaptation
for software security found in `Business Case Best
Practices <https://buildsecurityin.us-cert.gov/daisy/bsi/articles/best-practices/code/212.html>`_
on the *Build Security In* website.

Quality and Security are intertwined; they depend on each other. How can
a CIO be focused on
`CMMI <http://www.sei.cmu.edu/publications/documents/03.reports/03sr009.html>`_,
yet at the same time be reluctant to enhance their process with a
security development lifecycle? Requirements engineering has been proven
time and time again for both quality and security purposes as the most
beneficial exercise to increase defect prevention, as well as to lower
the cost of existing defects.

Resources (primarily acquired from the book, `*Software Security
Engineering: A Guide for Project
Mangers* <http://www.amazon.com/exec/obidos/ASIN/032150917X/>`_):

-  Ian Alexander's `Misuse
   Cases <http://easyweb.easynet.co.uk/~iany/consultancy/misuse_cases/misuse_cases.htm>`_
-  Dr. `Johnathan Moffett's
   papers <http://www.computing.open.ac.uk/8025700300414AE8/(Search)?OpenAgent&query=moffett>`_
   at The Open University
-  CMU/SEI's `SQUARE
   Methodology <http://www.sei.cmu.edu/publications/documents/05.reports/05tr009/05tr009.html>`_
   -- `*CERT on SQUARE* <http://www.cert.org/sse/square.html>`_ --
   `*ISAlliance on
   SQUARE* <http://www.isalliance.org/content/view/47/136/>`_

*Problem --* In this process, the difficulty often comes with
decision-making. Pragmatic managers and analytic engineers could bounce
off each other or blow up under the wrong conditions. SixSigma would
tell the metrics-oriented business analyst to use a scorecard and focus
on the "voice of the customer". Evangelical venture capitalists would
say, "requirements-gathering doesn't ship code". Customers would
foolishly say, "we trust you to make these decisions for us". Engineers
with experience, either real-world or academic, might even oppose these
views with fervor.

The book referenced above, *Software Security Engineering: A Guide for
Project Managers*, discusses processes of decision-making, \`eliciting
security requirements', and trade-offs. They don't mention `paralysis by
analysis <http://en.wikipedia.org/wiki/Analysis_paralysis>`_, or the
fact that development teams often fail to read the specifications (or a
multitude of other issues). I opt for their views, but the reality of
what I see/hear going on is viciously to the contrary.

Organizations typically hate requirements.

*Recommendation --* After having spent some time in an operational role,
I watched how others deal with compromising vendor negotiations and
acute attention-deficit disorders among IT decision-makers. Without
bothering you with the horror-stories, I can say two simple words about
negotiation that exists outside of political situations where one side
clearly has the upper hand:
`Win-win <http://en.wikipedia.org/wiki/Win-win_game>`_. Win-win and
other strategies are available in the *Software Security Engineering*
book, as well as on the *Build Security In* website's `Requirements
Engineering <https://buildsecurityin.us-cert.gov/daisy/bsi/articles/best-practices/requirements.html>`_
section.

The tricky situation is to make sure you have a level playing field to
start with. This is where the software risk experts come in. Balance the
needs of release engineering/scoping (e.g. responsible manager) with
your quality risk experts (e.g. lead developer) and your security risk
expert provider. Be sure not to forget the customer, if they want to
have any say at all.

I suggest MediaWiki as a base platform for requirements engineering
documentation. A balance of documentation/tagging between the
responsible parties would be beneficial to all. Code-level requirements
specifications can be more easily integrated with software projects
using open-source tools such as FitNesse (and HtmlFixture if the
application is web-based), or commercial products such as HP
TestDirector and IBM RequisitePro.

*Honorable mention --* Fagan inspection and the V-Model SDLC
representation

**Issue Three: Design and construct secure software**

*Special Note --* You can skip this issue if you don't have any software
that is worth defect-tracking. You will also have to skip ahead to
**Issue Four** if your primary goal is to secure an existing
application. You'll return to this issue later when you have to re-code
that application due to existing defects.

*Summary --* There are only two correct paths. Choose one and go as deep
with it as necessary. The necessary parts will be well-defined depending
on the path that you choose. Both mandatory and optional processes for
designing, inspecting, and testing software for correct security
properties will be proscribed.

#. **Model-driven development**
#. **Test-driven development**

*Problem --* No product, service, or hodge-podge of free/open-source
software/methods exists that will put your software together for you and
make it a secure application. No A-Team or B-Team is available for hire
to design, build, inspect, or test your software to make it a secure
application. You are on your own.

*Recommendation --* Well, that all depends. This is the hard part.

You need:

#. Defect-tracking system and formalized process
#. Design or test-case specification/management tool and formalized
   process
#. Time management with a formal process
#. Defect prioritization list (must come from your software risk experts
   and carved in stone)

Path One additional criteria: Model-driven development should generate
some or all of the code necessary to complete a software project from
the specification. Any of the code not generated using model-driven
development must use test-driven development. The specification can be
generated using:

-  Formal methods, using a formal method language such as Z or VDM

If you or your software risk expert do not know what formal methods are,
or why you would need them, then you probably don't want this. Instead,
investigate semi-formal methods.

-  Semi-formal methods, such as one of the following

#. Model-driven engineering (MDE) using NModel with C# .NET or Software
   Factories
#. Model-driven architecture (MDA) using Andro MDA with Java Enterprise
   Edition
#. Executable UML (xUML) for object-oriented languages such as C++ or
   Objective-C

Again, skip this if you or your risk expert are unaware of the benefits
to using semi-formal methods to code generate software. Instead, rely on
informal methods (and all of the other required steps) that go along
with Path Two.

Path Two additional criteria: Test-driven development uses informal
design methods combined with test-first development.

-  Informal design methods, that includes at least one or more of the
   following

#. DFD or UML diagram analysis with an automated tool such as Klocwork
   K7's architectural analysis module and/or manually by a
   threat-modeling expert
#. Privilege-centric security analysis with Trike performed by a
   threat-modeling expert. This is typically a manual process
#. Threat-modeling with Microsoft TAM-E (or the free, classic Threat
   Analysis and Modeling v2.1.2 tool) performed by a threat-modeling
   expert. This is also a manual-only process

-  Test-first development methodology, which in summary includes

#. Writing unit tests before construction of software
#. Unit tests should assert for the defect's fix and run continuously so
   that regression testing is integrated
#. Design and construction of code in short "sprints" which allow for
   re-prioritization of security defects before, during, and after every
   sprint
#. Continuous refactoring, which may typically take up to 50% or more of
   the each construction phase during every sprint

See: `Agile Security - Breaking the Waterfall Mindset of the Security
Industry <http://www.owasp.org/index.php/AppSecEU08_Agile_Security_Breaking_the_Waterfall_Mindset>`_
and the
`presentation <http://www.owasp.org/images/b/b8/AppSecEU08-Agile_and_Secure.ppt>`_
by Dave Wichers of Aspect Security for more ideas on test-first
development.

*Honorable mention*-- The Microsoft SDL. Cigital Touchpoints. OWASP
CLASP. My Continuous-Prevention Security Lifecycle (CPSL). SSE-CMM, et
al.

**Issue Four: Raise awareness and identify root-cause issues**

*Summary --* There are many ways to raise awareness and do root-cause
analysis. Sometimes the fastest/cheapest way is the best way.

Often, the fastest way is with an automated security review checker
program such as CAT.NET (XSSDetect is free), FindBugs, PMD, CheckStyle,
FxCop, StyleCop, SWAAT, PHP-SAT, Orizon/Milk, Pixy, ITS4, RATS, SPIN
(all free), Checkmarx, Ounce, Klockwork K7, GrammaTech CodeSonar, or
Fortify SCA (all pay-commercial).

Less likely, a fault-injection or fuzz testing tool can be used -- such
as Compuware SecurityChecker, automated web application security
scanners (especially ones that are meant to work at the development or
QA level such as DevInspect, QAInspect, or AppScan DE), or a concolic
unit testing engine such as jCUTE (free).

My favorite technology solution to this problem is the tried and true
white-box dynamic analysis method, with tools in this class such as
Coverity Prevent, Fortify PTA, Insure++, Purify (pay-commercial) or
Valgrind (free). Other possibilities here are code-comprehension tools
such as SciTools Understand, Atlassian Clover, Bullseye Coverage
(pay-commercial), EMMA, PartCover, NCover, tcov, gcov, and lcov (free).

Sometimes, an overhead view of the UML diagrams with Klockwork K7,
Rational Rose (pay-commercial) or even UMLGraph or GoVisual Diagram
Editor (free) will be enough.

It could be that the fastest/cheapest way is to simply do an interview
with the lead developer(s). They might already know. They might be on
your side.

Once you've identified an issue -- the only action is governance to get
Issues 1-3 approved and committed to. This means C-Level involvement at
the highest level of any organization.

*Problem* -- Nobody cares. This isn't the way things normally happen.
This isn't the way we do things around here. We don't have funding. We
don't have time. We don't have resources. Maybe next year.

*Recommendation* -- Be creative. Listen. Write. Peer review. Speak.
Don't screw it up and don't "consider other options". What if you could
get Steve Jobs to run
`LookingGlass.exe <http://erratasec.blogspot.com/search/label/LookingGlass>`_
and see the obvious problems with QuickTime? We need more tools like
this at the tactical level. `GRC
tools <http://securosis.com/2008/05/13/grc-is-dead/>`_ such as Agilance,
Archer, and ControlPath are too strategic and "high in the clouds" (as
well as too expensive).

*Honorable mention* -- Application security in all of its ugly and
twisted forms. IDS, IPS, WAF, and logging. Black-box web application
security scanners. Manual pen-testing. These may raise awareness. They
may solve some problems locally, temporarily -- but not systemically.
They do not involve root-cause.
