author: dre
disqus_id: ff753e53-3b30-4959-b265-33ef8de57d36
disqus_url: http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/
mod_date: 2007-12-04 23:02:06
parent: 0
post_id: 336
post_type: post
pub_date: 2007-12-02 09:57:44
public: 'yes'
slug: why-pen-testing-doesnt-matter
tags:
- Defense
- Tech
- Hacking
- Security
template: post.html
title: Why pen-testing doesn't matter

Why pen-testing doesn't matter
##############################

**Pen-testing is an art, not a science**

Penetration-testing is the art of finding vulnerabilities in software.
But what kind of an "art" is it? Is there any science to it? Is
pen-testing the "only" way or the "best" way to find vulnerabilities in
software?

When I took my first fine arts class, we learned that "art is for art's
sake" and "beauty is in the eye of the beholder". I spent some time
philosophizing on whether or not that was true. After years, I was never
able to prove those concepts wrong. However, I did learn something
interesting about art. If you're an artist trying to improve technique,
trying to sell art, or trying to send a message -- it all comes down to
one thing: goal setting and accomplishment. Does your artistic outlet
meet your needs towards your goal? Did you accomplish what you wanted
to?

**Compliance "audits" and "education/awareness" vs. Security "testing"
and "assurance/process-improvement"**

Many organizations are attempting to improve software security assurance
by improving process and technology. Others are just trying to increase
security awareness, or meet compliance objectives. Some are trying to
keep their heads above water -- and everyday they worry that another
breach will reach media attention or become a statistic on
`Etiolated <http://etiolated.org>`_. For those who are showing
improvements and making software assurance a science and a reality --
they are few in number.

Microsoft started the trusted computing initiative via a memo from Bill
Gates in 2002. The end result was the Security Development Lifecycle
(SDL), a process to improve software security. The Open Web Application
Security Project (OWASP) was started in 2001, and began a project that
was completed last year called the Comprehensive, Lightweight
Application Security Process (CLASP), which utilized a lot of the
research OWASP members had been working on for years. Also in 2001, Gary
McGraw and John Viego wrote a book called *Building Secure Software: How
to Avoid Security Problems the Right Way*, which later became a
methodology for Cigital (Gary McGraw's company) to move software
security process knowledge into the hands of Cigital clients. Also last
year, McGraw released a new book, *Software Security: Building Security
In*, which is the culmination of his Touchpoints process model.

One year and one week after 9/11/2001, the National Strategy to Secure
Cyberspace was released for the public eye. The US Department of
Homeland Security created a National Cyber Security Division, which in
turn created a strategic initiative, the SwA Program (Software
Assurance). This program is based on one short, but very important part
of the National Strategy to Secure Cyberspace document, "DHS will
facilitate a national public-private effort to promulgate best practices
and methodologies that promote integrity, security, and reliability in
software code development, including processes and procedures that
diminish the possibilities of erroneous code, malicious code, or trap
doors that could be introduced during development". The current director
of the SwA Program is `Joe
Jarzombek <http://www.sigada.org/conf/sigada2007/Joe-Jarzombek.html>`_,
who is responsible for many important objectives, including the `Build
Security In <https://buildsecurityin.us-cert.gov>`_ web portal. This
portal includes much of the on-going work from Cigital, NIST, MITRE, and
the DHS on software assurance process improvements.

The week of 9/11/2007, OWASP planned a huge event known as `OWASP
Day <http://www.owasp.org/index.php/OWASP_Day>`_. OWASP is planning
another OWASP Day with a March 2008 time frame for those of us who
missed out on the first one of its kind. One of the presenters in
Belgium, Bart De Win, gave a presentation on "CLASP, SDL, and
Touchpoints Compared". All three are really just books on secure
software processes, so comparing them at first seems a bit like doing a
bunch of book reports (and possibly subjective going back to the whole
"art is for art's sake" argument). Bart's comparison is interesting, but
I'm interested in what all three are missing. Towards the end of this
blog entry, I'll recommend a new secure software process that takes into
account security testing from both a software assurance model and a
penetration-testing model.

The premise behind having a software development lifecycle that takes
security into account is that at some point -- business analysts,
requirements writers, software architects, software engineers,
programmers, and/or testers will perform tasks that are part of a
process that involves security as a forethought. In other words, testing
"for security" is not done "after-the-fact", nor is it done "right
before release". Security testing before release is typically when
development hands-off the application to a support or operations team.
Quality testers refer to this as "operations testing". If security is a
total afterthought, quality testers usually call this "maintenance
testing". Both situations are really where penetration-testing is done,
which is usually accomplished by security professionals, usually in an
IT security team (or consultants hired by such a team). Many of these
individuals actually prefer a black-box assessment, where knowledge or
access to the configurations and source code is again an afterthought.
Some pen-testers prefer a "source-code assisted black-box assessment"
and would like access to the source code and configuration files, but
policy or other constraints limit this kind of access.

One of the questions that might come up here has to do with
penetration-testing as part of compliance objectives, such as
Sarbanes-Oxley, SAS70, HIPAA, or the dreaded PCI-DSS. In this situation,
you have assessors working in an auditor role. A very common trend is
for a PCI "approved scanning vendor" (ASV) to perform a penetration-test
using COTS "security scanners" which often require both customization
and "vulnerability verification". The verification comes into play
because scanners will often identify a vulnerability when it turns out
later that the vulnerability does not exist (a condition known as a Type
I error, or false positive). ASV's test once a year against a
"test-ground" network and web application approved by the PCI Council,
but nowhere does this process require the ASV to remove false positives
or customize their scanner tools. Most COTS security scanners simply
just work the first time against the ASV test-grounds. How often they
work or don't work against real-world networks and web applications
without proper customization is left as an exercise for the reader to
determine. Your guess is as good as mine.

**What ever happened to full-disclosure, free information, and the
hackers?**

Free security research has been available since the MIT
`TMRC <http://en.wikipedia.org/wiki/Tech_Model_Railroad_Club>`_ started
playing with mainframes and micros. The media and software manufacturers
to this day still don't understand the motivations, tools, and
techniques that hobbyist security researchers have employed -- much of
which has truly been the "art" of vulnerability finding. However, many
hobbyists turned to starting or joining up with businesses during the
dot-com era. The lost "art" of vulnerability finding made its way into
the corporate environment. Around 2001 and 2002, the largest of software
corporations (Microsoft was already mentioned) learned the benefit of
performing self-assessments, including secure code review and even
secure design inspection. Companies such as @Stake and Foundstone were
founded, often brought in to perform these reviews/inspections as
consultants, and then were both later acquired by Symantec and McAfee,
respectively.

Other security researchers (especially ones that were unable to take
part in the dot-com era success due to previous computer felony
convictions, or other disadvantaged situations such as living in a
third-world country) are possibly now what has become the criminal
underground of the Internet. There are still many people who find
themselves in between these two camps (gray hat hackers), but their
numbers are few compared to what they used to be. If penetration-testing
is still an art form, then these are the only people practicing it --
the black hat and gray hat hackers. It is quite possible that some of
the improvements in fuzz testing have come from these types in the past
few years, although even many of those people have started their own
companies or joined up with some larger organization. Where are the
"hacker groups" that remain out there?

Software manufacturers are beginning to understand the problem, and big
financials and e-commerce also have implemented their own secure
software processes. Gadi Evron gave a presentation where he called out
who was using fuzz testing in the corporate world earlier this year. The
word on the street is that financials and e-commerce are "fuzzing before
purchase," i.e. they won't buy a new product, especially a network
security device or the latest DLP-HIPS-NAC-UTM solution without running
an internally purchased Codenomicon, BreakingPoint Systems, Mu Security,
or beSTORM fuzz testing engine and doing the best they can to break it
first. "Fuzz before release" occurs when some vendors such as Microsoft,
Symantec, and Cisco build their own custom fuzz testing engines such as
FuzzGuru (Microsoft), SEEAS (Symantec), and Michael Lynn (Cisco -- oh
wait they sued him) -- I mean CIAG (oh wait they `dismantled that
group <http://www.darkreading.com/document.asp?doc_id=135924>`_, didn't
they?).

**"The future is already here -- it's just unevenly distributed"**

The quote above is taken from William Gibson to describe that the
situation that we're in doesn't apply to everyone. However, there are
some things that it obviously does apply to, which I'm about to cover.
Surprisingly futuristic, today's security testing tools are almost as
good as all of the ones mentioned in the previous section. This is
partially because fuzz testing isn't the end-all-be-all for security
testing. In fact, fault-injection and network security scanners (e.g.
Hailstorm and Nessus) also aren't the end-all-be-all in security
testing. Secure design inspection and secure code review are what make
the secure software processes actually work. However, testing tools for
secure inspection/review are few and far between. They're maturing very
slowly, and many penetration-testers, developers, and managers feel
that:

-  Secure inspection/review tools have too many false positives for
   developers to deal with, slowing down the programming phase
-  Static analysis tools have more false negatives than runtime analysis
   that combines fuzz or fault-injection testing, missing a lot of
   vulnerabilities
-  Design/code review cannot verify vulnerabilities as well as runtime
   analysis, making removal of false positives that much more difficult
   and time consuming
-  Runtime analysis tools combined with fuzz testing and fault-injection
   provides a much easier path to writing exploits
-  Developers are difficult to work with and will never understand
   security issues
-  Automated source code analyzers don't support programming languages
   or frameworks used
-  It's cost-prohibitive to give every programmer a security testing
   tool when licensed on a per-IDE basis

If myself or the vendors behind these products can put these notions to
rest -- let us give it a shot. In 2008 there is no reason that any of
the excuses above will apply for new software projects. Sure, there is
tons of existing code -- a lot of it in binary format -- much of it
legacy -- and worst of all: your company or organization still relies on
it without a plan to replace or even augment its functionality.

I feel as if I'm stuck in a similar situation using the primary software
pieces that I use everyday -- Firefox, IE, all the major browser-plugins
made by Adobe (Flash and Acrobat), Apple (QuickTime), or Sun
Microsystems (Java). Then there's the other software that I use made by
the likes of AOL, Mozilla + the usual suspects (Adobe, Apple, Mircosoft,
and Sun) in the form of instant messaging clients, productivity
applications (MS-Office, OpenOffice, iWork), and arts/entertainment
(Windows MediaPlayer, iTunes, Adobe everything, Apple everything). These
are the targets -- the important software that we need to keep secure.
Yet the only software manufacturer out of the list above that has a
secure software process and writes their own fuzz testing engine is
Microsoft. However, if we were able to secure these applications
properly then other software would instead be targeted. I use enough
embedded devices running some sort of burned-in software (that never or
rarely updates) to come to the realization of this outcome. I'm also one
of those types of security professionals that buys into some of the FUD
with regards to web applications (especially SaaS) and `open-source
software used as third-party
components <http://www.fortifysoftware.com/news-events/releases/2007/2007-10-09.jsp>`_
in everything (the RNA to a full application's DNA).

**The Continuous-Prevention Security Lifecycle**

The reality is that all software needs to be properly designed and
inspected -- all software requires a secure software process. Earlier I
mentioned that the SDL, CLASP, and Touchpoints processes were "missing
something". While working on the matter, I have discovered some unique
approaches that extend and simplify the primary three secure software
process models. My suggested secure software process consists of only
four elements:

#. Developers using Continuous Integration (Fagan inspection + coding
   standards + unit testing + source code management + issue tracking +
   "nightly" build-servers)
#. MITRE CAPEC used in the design review ; Secure design inspection
   performed using CAPEC
#. MITRE CWE used in automated secure static code analyzers at
   build-time ; Secure manual code review performed using CWE
#. CAPEC and CWE-driven automated fault-injection and/or fuzz testing
   tools at build-time measured with code coverage ; Verification of
   non-exploitables vs. exploitables

All of the above steps can be performed by untrained developers except
for the parts after the semi-colons. For step 2, developers can use
Klocwork K7 or Rational Rose/RequisitePro along with security
professionals during secure design inspection, or provide the security
team with their UML designs or requirements. For step 3, a manual code
review workflow tool such as Atlassian Crucible can be used to combine
Fagan inspection with the necessary security sign-off to complete a
secure manual code review (to be completed on every check-in, component
check-in, or before every nightly/major build -- depending on the
environment). Step 4 verification process requires the most attention by
security professionals, although there is little reason that all
vulnerabilities found can be issued with a low priority and verified
before release. All the other steps are continuous and can be
performed/fixed everyday, possibly at every check-in of code -- but
usually at least once a day in the nightly build.

The most important part of my "Continuous-Prevention Security Lifecycle"
(CPSL) process is for developers to write unit tests that assert the
behavior of each defect's fix. This is known as continuous-prevention
development, and it's a special kind of regression test that works
especially well for security vulnerabilities because it:

-  Tests for the bug, as well as can identify bugs with similar behavior
-  Fixes the bug, and possibly any bugs that work in the same way if
   generic enough
-  Can be re-used in build-servers across projects

Penetration-testers should take special notice that my CPSL process does
not include any operations or maintenance testing. All of the testing is
done before quality testers (or developer-testers) even get to begin
system integration or functional testing. This type of security testing
is suggested to be done very early in the process, which follows similar
guidelines as the SDL, CLASP, and Touchpoints processes suggest.

**The benefits and drawbacks of open-source software** There are some
that may complain about my itemized suggestions based on a limited
budget. For those situations, open-source software can be used: e.g.
Fujaba instead of Klockwork K7, NASA's Software Assurance Technology
Center (SATC) Automated Requirement Tool
(`ARM <http://satc.gsfc.nasa.gov/tools/arm/>`_ 2.1) instead of IBM
Rational RequisitePro, and Trac instead of Atlassian Crucible. If you
spent any time reading my last blog entry on `2007 Security Testing
tools in
review <http://www.tssci-security.com/archives/2007/11/24/2007-security-testing-tools-in-review/>`_,
then you'll find gems such as PMD SQLi and FindBugs as reference secure
static code analyzers (as well as the many mentioned for PHP, ASP, and
Java web applications), plus countless of open-source fuzzers and
fault-injectors.

As for defining a secure software process for open-source software
projects, many of these are integrated or bundled with commercial
software. Which brings me to a few points. First of all, commercial
software developers should be testing third-party components in addition
to their own code -- anything that gets built on the build-server should
go through the same checks, imported or not. Bugs will get found and
fixed in open-source projects through this sort of effort, in addition
to open-source projects that operate under my CPSL or other secure
process. As a final point, it's no longer theoretical that "the world
can review open-source" thanks to efforts such as `BUGLE: Google Based
Secure Code Review <http://www.cipher.org.uk/projects/bugle/auto/>`_.

**Software security assurance: Predictions for 2008**

One of my predictions for 2008 is that we'll start to see individuals
and companies that have invested in penetration-testing skills move
towards awareness and compliance. The shift will in part be due to
security testing moving to a place earlier in the development lifecycle,
with "penetration-style" security testing tools being replaced with
"secure software process friendly" tools. Many new tools for secure
software process models will evolve from existing workflow management
and design inspection development tools. Classic, gray hat
"penetration-tester" tools such as automated fault-injectors and fuzzers
will become Ant tasks on a build-server. Security testing, if pushed
early in the life cycle, will actually improve code quality -- causing
less spending on quality testing at the cost of more time/dollars spent
on developer-testing.

Do not let all of this confuse you into thinking there isn't room for
major improvements to secure software processes, security testing tools,
or other security research. It's just a simple re-focusing of where,
who, and when security testing is done. This paradigm shift will allow
initiatives like Build Security In, CAPEC, and CWE to really take off.
New projects that concentrate on measuring and understanding false
positives are already in larvae stages. Combining data from CAPEC into
other projects such as the WASC Threat Classifications (in a similar way
that the OWASP T10-2007 used CWE data) will lead to new attack patterns
and ways of understanding current attack patterns. Maturity of CWE and
CVE data will drive results for
`CWE-Compatible <http://cwe.mitre.org/compatible/>`_ tools and services
to lead into CWE-Effective equivalents.

By allowing developers "in" on the security industry's closely-guarded
and well-kept secrets, we'll be able to protect applications in ways we
have never done in the past. Secure frameworks such as
`HDIV <http://hdiv.org>`_ will continue to improve, possibly to the
point where security testing isn't necessary for a large majority of
attack paths and security weaknesses. Exploitation countermeasures based
on AI might move into applications to prevent a large amount of
exceptions such as those explored during penetration-testing efforts. At
the very least we'll start to see distributed applications logout users
automatically or disable accounts that attempt automated
fault-injection, potential fraud, or other unwanted attacks. It's
possible that you'll even make a friend on a development team, or maybe
even become a full-time "security developer" yourself. There will always
be room for pen-tester artisans in the wild world of computer science
and software engineering.
