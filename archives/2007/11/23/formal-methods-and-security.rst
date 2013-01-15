author: dre
disqus_id: 1fd56ab8-b1f6-430d-96d9-4930b898e7a0
disqus_url: http://www.tssci-security.com/archives/2007/11/23/formal-methods-and-security/
mod_date: 2008-01-19 19:57:31
parent: 0
post_id: 334
post_type: post
pub_date: 2007-11-23 21:31:04
public: 'yes'
slug: formal-methods-and-security
tags:
- defense
- security
template: post.html
title: Formal Methods and Security

Formal Methods and Security
###########################

Most information security practices, whether system, network,
application, software, or data -- come from original sources such as the
Orange Book. Most people assume that the Orange Book is no longer valid
for use in security today. If we had built systems around the Orange
Book concepts -- then why are we so insecure today? It must be outdated,
right?!

The Orange Book was primarily about two things: functionality and
assurance. `Sound
familiar <http://www.dilbert.com/comics/dilbert/archive/dilbert-20071116.html>`_?

There is an implication that functionality and assurance (or usability
and security) are at odds with each other. The Orange Book and I would
agree that this is not the case. There are obvious problems with
building systems that "share" everything and "allow access to
everything". Assuming perfect authentication and session management --
"trusted" users are given access to the resources they need to perform
actions that become functional to them. There are many ways to control
authorization to these resources ranging from programmatic,
discretionary (DAC), mandatory (MAC), role-based (RBAC), and declarative
controls. By adding controls on a per-user/session basis -- the
`security
policy <http://en.wikipedia.org/wiki/Computer_security_model>`_ of the
system forms a "privilege matrix" of sorts. This privilege model becomes
the penultimate means of formally verifying a system. If only there
weren't two major problems with this way of thinking: object reuse
(shared disk or memory concepts such as the stack and heap) and covert
channels (not just IPC/sockets, but also storage and timing channels),
which both exist completely outside of the privilege matrix.

The Orange Book defines assurance in four divisions (D, C, B, and A), A1
being the highest level of security. The ideas behind A1 is that access
control matrices (secure kernel, trusted path, and authorized users of a
system accessing resources) are formulated into security policy models.
These models must be formally verified to be considered A1.
Interestingly enough, the source-code itself did not require to be
formally verified. Formal specification and verification of source-code
goes beyond A1. If I know most of our readers, point yourself towards
the `TCSEC <http://en.wikipedia.org/wiki/TCSEC>`_ article on Wikipedia
now.

But what are formal specification and verification and how would you
apply these concepts to source-code? Formal specification is an example
of a formal method. In today's world of modern applications, especially
web applications -- many development shops already perform the basics of
formal specification. Developers usually do this when they perform
business modeling, write requirements right (not write the right
requirements), and perform design before the implementation phase (i.e.
coding). It is thought by many that this is the perfect time to start
thinking about security.
`Foundstone <http://www.tssci-security.com/blog/wp-content/uploads/2008/01/dyntekmcafee_-_update_in_risk_mgmt_and_vulnerability_assessment.pdf>`_
claims that 70% of issues found during security testing (in the years
2005-2006) were discovered during threat-modeling and code review vs.
the other 30% which comes from vulnerability assessments. However,
according to
`Gartner <http://www.networkcomputing.com/immersion/dataprivacy/showArticle.jhtml?articleID=198900460&pgno=5>`_
-- security testing is done at the programming phase by 5 to 10 percent
of enterprises, 20 percent in the pre-deployment phase, and at
operations/maintenance phases by the remaining 70%. According to these
statistics, enterprises are clearly not writing security policy model
documentation as formal specifications, nor do they even know how to
formally verify a project's documentation -- let alone its source-code.

Automated formal methods are rarely ever used for making sure that
software even "works" let alone whether software is "secure". The first
step is to formally describe your system in a language that an automated
formal verification tool can understand. Most software engineers feel
that their source code should speak for itself (but then again, most
developers can't even do a
`walkthrough <http://en.wikipedia.org/wiki/Software_walkthrough>`_ of
their code in front of an audience on the same day that they wrote it).
Yet, neither do they want to talk about security early in the process.
For these special moments, there are many ways of tackling the problem
of raising the bar of security assurance.

The largest problem will remain with how the access control works in the
application, often considered business logic or "flaw"-related security
issues. Access control issues are hard to find, usually done manually.
It's difficult to re-design or re-write access control into an existing
application. Often, the design of the access control system is
sufficient for the application use -- but instead the developers forgot
to take into account the other problems with security: object reuse and
covert channels. These sorts of issues are typically semantic in nature
or "bug"-related security problems in the application. In standalone,
thick-client applications -- "patches" are often used to fix security
"bugs". A full-upgrade is usually required to fix security "flaws". With
web applications, either bugs or flaws can be deployed in parallel --
thus making it easier to address all types of security issues. However,
web applications also require re-coding, as modern attacks utilize
software weaknesses that affect input/output (whose root-cause is
typically improper validation and/or encoding), while `pre-2005
attacks <http://conference.hackinthebox.org/hitbsecconf2007kl/materials/D2T1%20-%20Felix%20Lindner%20-%20%20%09%20Attack%20Surface%20of%20Modern%20Applications.pdf>`_
were often against standalone applications that affected a single data
reference error (i.e. parser). Parser bugs typically have a root-cause
related to a buffer overflow, integer, or format string vulnerability.
Using source-code is probably a good way to formally verify any of these
type of "bug" security issues, but most interesting is that it can also
be used to identify "flaws" in the application logic as well.

There are many reasons that formal methods are not popular for finding
security issues in source-code. Assume that a formal specification has
already been written that describes what a system is and does.
Additionally, assume that the security correctness properties of such a
system have also been formally specified. In order to check these
properties against a system, one more thing has to be determined before
automated formal methods can be used. The size of state space can be
either small/finite, or extremely large (and possibly infinite). If the
state space is small, then all reachable states can be checked for each
property against the system model and verify that each is true. This is
known as
`model-checking <http://en.wikipedia.org/wiki/Model_checking>`_. If the
state space is too large to check every state, logical expressions can
be used to determine properties are always true. Opposed to
model-checking, `automated
theorem-proving <http://en.wikipedia.org/wiki/Automated_theorem_proving>`_
attempts to logically prove theorems about the model, instead of
checking every state space. This works by using propositional logic,
which starts with a set of axioms and applying rules to derive
additional true statements under the working rules.

When a model-checker is run, a positive result can be the typical
pen-tester worry of "if it didn't find any problems, then you're not
sure if there are any problems or not". A negative result from a
model-checker can be useful for debugging those specific problems (which
conditions cause which errors). Theorem-provers, which are more
interactive, can be hand-checked on a positive result. A negative result
from a theorem-prover is useless simply because it shows that the
properties couldn't be solved. The first time I had heard of an
automated model-checker used for security purposes was by NIST when they
used `SPIN <http://www.spinroot.com>`_ to check the IPSec protocols and
state spaces for correctness. Recently, I've also come across `Java
PathFinder <http://javapathfinder.sourceforge.net>`_, which provides a
more modern solution for automated model-checking.

I've always been curious as to who uses these and for what reasons. It's
possible that these tools are coming into maturity and can be used to
provide higher levels of software security assurance that haven't been
typically reached easily through other types of effort. Any project with
a realistic development deadline is never going to use one of these
tools as they exist today, but what about open-source projects,
especially ones that remain rather static over time? It would be
interesting to use open-source to improve formal methods for security
testing, as well as to use formal methods to check security in
open-source projects. `Coverity <http://www.coverity.com/>`_ has its
`Scan project <http://scan.coverity.com/>`_, where they test open-source
C/C++ projects (and `now
Java <http://www.coverity.com/html/press_story51_11_20_07.html>`_) using
their model-checker, `Prevent
SQS <http://www.coverity.com/html/prod_prevent.html>`_.

Organizations outside of Coverity can use SPIN or Java PathFinder (JPF)
for model-checking. JPF, in particular, is interesting because it
re-implements a JVM, providing a second opinion on a class file's
validity. This also presents additional limitations, in that external
API's are not available for testing -- which eliminates JDBC and J2EE
from being included in testing since the full Sun JDK API
implementations aren't available in JPF. However, for self-contained
programs or components, JPF can be great for analyzing runtime behavior,
especially if extended to support a critical component in the security
trustchain of a modern application. For example, some work has been done
using JPF to `diagnose errors in the
Log4J <http://www.cs.cmu.edu/%7Ealdrich/courses/654/tools/dickey-pathfinder-05.pdf>`_
logging package.

There are many building blocks for building secure Java applications
that could stand to benefit from formal method testing. Log4J is one
example, but there are plenty of other pre-built components that can be
tested -- such as Reform, ACEGI, Commons Validator, Jasypt, JCE, JAAS,
Cryptix, BouncyCastle, HDIV, and HttpClient. Components which use
cryptography stand to inherit the most value from this sort of testing,
as timing attacks and side-channel attacks can be verified using formal
method testing. There will continue to exist organizations who
"roll-their-own" encryption, but if we can improve the assurance levels
of existing components -- the organizations that use these components
stand to gain higher levels of assurance to their authentication,
session management, authorization, and other components of their web
applications that are formally verified.

Formal methods exist completely outside of other types of security
testing, and allow uncovering of subtleties such as property states and
timing. Just by increasing overall robustness and assistance in
debugging can alone be enough to consider formal methods in an advanced
security testing methodology. However, it may be extremely daunting to
start one of these projects, as the barrier to entry is very high.

For good places to start, consider any given codebase such as Log4J that
doesn't implement encryption or authorization, but also that never
terminates. Using `temporal
logic [1] <http://en.wikipedia.org/wiki/Temporal_logic>`_, model the states
of the application and determine properties that are true along a
sequence of events. `Temporal
logic [2] <http://en.wikipedia.org/wiki/Temporal_logic_in_finite-state_verification>`_
is a type of formal logic, which provides a precise human/machine
language to talk about things that may have been skipped over. When
formally specifying authentication protocols, usually only the message
exchange is talked about in documentation -- while conclusions that each
party draws from a message exchange may be left completely out. `BAN
logic <http://en.wikipedia.org/wiki/Burrows-Abadi-Needham_logic>`_ can
formally specify what parties perceive and conclude during
authentication protocol and handshake use. Using BAN logic, model the
assertions based on multiple autonomous parties -- and test using ACEGI
or similar.

There are much easier ways to find security-related bugs and flaws using
both source-code and runtime checking than by using formal methods. For
example, static source analysis, static bytecode analysis, fuzzing, and
fault-injection testing can be combined at implementation or build time
using well-known tools such as Fortify SCA, FindBugs (or FxCop), CUTE
(or Compuware SecurityChecker), and AppScan DE (or DevInspect). Many
security testers have expressed concern over these types of tools that
look for security weaknesses -- especially since they usually only take
into account semantic bugs and not design issues or logical flaws. Many
logical flaws exist around access control, and often appear in web
applications -- this has more to do with authentication, session
management, and authorization than any other security weakness. Using
top-level formal specifications to denote access control can save design
inspectors a lot of time. This could be improved by both verifying the
formal specifications for access control as well as mapping the design
to the source-code when performing manual code review.

There are few automated penetration-testing tools which help in
multi-user scenarios for dealing with access control or logical flaw
problems in web application security testing. Cenzic Hailstorm can run
traversals with multiple credentials, and Burp Intruder can use the
`extract grep <http://www.portswigger.net/intruder/help.html#grep>`_
option, alone, or along with `recursive
grep <http://blog.portswigger.net/2007/04/using-recursive-grep-for-harvesting.html>`_.
Outside of access control, most logical flaws will still require design
inspection along with manual code review combined with a bit of luck.
However, formal methods such as model-checkers and theorem-provers
provide an advanced way of dealing with these types of issues.

Microsoft research has produced
`SLAM <http://research.microsoft.com/slam/>`_ (isn't this now called the
Visual Studio Management Model Designer or VSMMD?),
`Fugue <http://research.microsoft.com/users/maf/projects/fugue/>`_, and
the `source code annotation
language <http://msdn2.microsoft.com/en-us/library/ms235402%28VS.80%29.aspx>`_
(SAL, which appears similar to Java's
`JSR-305 <http://jcp.org/en/jsr/detail?id=305>`_, Annotations for
Software Defect Detection) for use with formal methods. There are also
semiformal methods such as
`MDA <http://en.wikipedia.org/wiki/Model-driven_architecture>`_ and
`MDE <http://en.wikipedia.org/wiki/Model-driven_engineering>`_, which
also have automated tools. But using any of these tools (semiformal or
formal methods) typically requires a mathematical background enough to
write a formal specification, often done using the `Z
notation <http://en.wikipedia.org/wiki/Z_notation>`_. This use is
radically complex for the average development environment -- even if a
critical component requires a higher level of assurance. Instead we are
stuck with standard security testing -- so many classes of flaws are
never uncovered.

In the end, I think the Orange book went very far to describe what is
needed for an assured system. Today, there is little chance that we can
build common applications that have such a granular and pedantic
approach to safety or security as the TCSEC A1 division. However, the
largest take I get from this is that requirements and designs should be
precise as possible, as well as inspected during review. If a design
includes an access control privilege matrix, security testing can be
modified to verify this matrix. Ideally, there would be some sort of
automated language-to-test conversion that occurs such as Microsoft SAL
or JSR-305. This will allow even coverage of both semantic bugs and
logical flaw security issues in modern applications.
