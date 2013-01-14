author: dre
disqus_id: 6614e444-0736-4679-87a2-f4706cc3ff5b
disqus_url: http://www.tssci-security.com/archives/2007/11/24/2007-security-testing-tools-in-review/
mod_date: 2007-12-15 13:39:31
parent: 0
post_id: 335
post_type: post
pub_date: 2007-11-24 11:10:53
public: 'yes'
slug: 2007-security-testing-tools-in-review
tags:
- Hacking
- Security
template: post.html
title: 2007 Security Testing tools in review

2007 Security Testing tools in review
#####################################

In my last post, I explored some ways of using `formal method tools to
perform security
testing <http://www.tssci-security.com/archives/2007/11/23/formal-methods-and-security/>`_
in the most advanced scenarios. It may have been over the heads of many
people, so I wanted to offset that by talking to some basic tools which
I think anyone can utilize effectively assuming they bring the most
important tool when security testing: their brain.

Of course, you need to think like an attacker, and saying that, I can't
recommend a better source than CAPEC and their `outreach and enhancement
documents <http://capec.mitre.org/about/documents.html>`_. Books that
come highly recommended (read at least one of these) include:

-  *`The Web Application Hacker's
   Handbook <http://www.wiley.com/WileyCDA/WileyTitle/productCd-0470170778.html>`_*
-  *`The Art of Software Security
   Assessment <http://www.aw-bc.com/catalog/academic/product/0,1144,0321444426,00.html>`_*
-  *`Hunting Security
   Bugs <http://www.microsoft.com/MSPress/books/8485.aspx>`_*
-  *`Security Power
   Tools <http://www.oreilly.com/catalog/9780596009632/>`_*

I really think that having some background in development practices is
also necessary, so I recommend other books such as:

-  *`Continuous Integration: Improving Software Quality and Reducing
   Risk <http://www.aw-bc.com/catalog/academic/product/0,1144,0321336380,00.html>`_*
-  `*Secure Programming with Static
   Analysis* <http://www.aw-bc.com/catalog/academic/product/0,1144,0321424778,00.html>`_
-  *`Software Security: Building Security
   In <http://www.aw-bc.com/catalog/academic/product/0,1144,0321356705,00.html>`_*
-  *`The Security Development
   Lifecycle <http://www.microsoft.com/mspress/books/8753.aspx>`_*

If you want to write or develop exploits in addition to finding security
bugs there are a few must have books such as:

-  *`Fuzzing: Brute Force Vulnerability
   Discovery <http://www.aw-bc.com/catalog/academic/product/0,1144,0321446119,00.html>`_*
   *` <http://www.wiley.com/WileyCDA/WileyTitle/productCd-047008023X.html>`_*
-  *`The Shellcoder's
   Handbook <http://www.wiley.com/WileyCDA/WileyTitle/productCd-047008023X.html>`_*
   (2nd Edition)
-  `*Real World
   Fuzzing* <http://toorcon.org/2007/talks/34/real_world_fuzzing.pdf>`_,
   Charlie Miller, Toorcon 9 (to be included in a future book)
-  *`Writing Security Tools and
   Exploits <http://www.syngress.com/catalog/?pid=3620>`_*

If you have little operations background and want to learn how
modern-day systems and networks are protected, I highly recommend:

-  *`Network Security
   Hacks <http://www.oreilly.com/catalog/netsechacks/>`_* (2nd Edition)
-  *`Virtual Honeypots: From Botnet Tracking to Intrusion
   Detection <http://www.aw-bc.com/catalog/academic/product/0,1144,0321336321,00.html>`_*
-  *`Preventing Web Attacks with
   Apache <http://www.aw-bc.com/catalog/academic/product/0,1144,0321321286,00.html>`_*

These books will introduce you to hundreds of tools - many of which are
useless, difficult to configure, difficult to understand, and/or about
as robust as the software you're trying to break. While learning some
background and technique is useful, by and large I think you'll get the
hang of a few tools that do one thing well and stick with them.

The most important and widely used security testing tool starts with
program understanding / comprehension. If you have source code for the
application, `SciTE <http://scintilla.sourceforge.net>`_ is an excellent
source code editor that can be scripted using a language that will
appear throughout this blog entry: `Python <http://www.python.org>`_.
Probably the best way to learn Python is to code Python to help you code
Python using SciTE. This will also introduce you to recursion and
meta-level concepts. However, you don't need to become an expert in
every programming language to use SciTE for secure code review -- all
you need to do is learn how to perform a manual
`DFA <http://en.wikipedia.org/wiki/Data_flow_analysis>`_ (or
`CFA <http://en.wikipedia.org/wiki/Control_flow_analysis>`_) for
`security weaknesses <http://cwe.mitre.org>`_ on each language one-time,
and then automate that DFA/CFA through Python scripts in SciTE.

Before manual code review, developers may have created program
specifications. In the last post I mentioned formal top-level
specifications, which is rare. More common may be UML models or DSD's.
Using open-source tools such as `Fujaba <http://www.fujaba.de>`_, which
can move between UML models and Java code in Eclipse, may prove useful.
Ideally, this would be done using a formal UML tool such as the
commercial `Rational
Rose <http://www-306.ibm.com/software/awdtools/developer/rose/>`_, or
better -- one specifically for security design inspection, such as
`Klocwork
K7 <http://www.klocwork.com/products/enterpriseArchitecture.asp>`_.
There aren't any free or open-source tools that are specifically geared
towards secure design inspection, but expect this to change in the near
future. The best work I've seen lately has been done by the
`Octotrike <http://www.octotrike.org>`_ team, also recently spoke to at
`Toorcon
9 <http://blogs.sun.com/DanX/entry/toorcon_9_computer_security_conference#privilege-analysis>`_
as `Privilege-Centric Security
Analysis <http://toorcon.org/2007/talks/39/Privilege-Centric%20Security%20Analysis.pdf>`_.

As most security testers will come to understand, not all program source
is easily available. For .NET assemblies (CLR), try using the `.NET
Reflector <http://www.aisto.com/roeder/dotnet/>`_; Java can use
`Jode <http://jode.sourceforge.net>`_; and Flash can use
`Flasm <http://www.nowrap.de/flasm.html>`_ or
`Flare <http://www.nowrap.de/flare.html>`_. There are some C and other
compiled-language decompilers, but consider using a debugger for your
language if it becomes too complex to easily decompile (or too
inaccurate). In other words, use a debugger such as the
basic\ `DebugView <http://www.microsoft.com/technet/sysinternals/utilities/debugview.mspx>`_
under Windows (for basic stuff), `JSwat <http://jswat.sourceforge.net>`_
for Java on any platform,
`ImmDbg <http://www.immunitysec.com/products-immdbg.shtml>`_ for
advanced Windows debugging, and `IDA Pro <http://www.datarescue.com>`_
(for as many platforms as you own and have access to) if you really want
to rock.

Sometimes it might be better to work with some languages in their native
IDE instead of SciTE, such as using Visual Studio for .NET work, Eclipse
for Java, Flash for Flash, or `Aptana <http://www.aptana.org>`_ for
Javascript. Again, it is often better to work from one solid tool than
to install and use several different tools, although there may be a few
one-off scenarios where you would want to use them. SciTE might not fail
you as often as you would think, especially if you use it as a code
reader (instead of relying on it to build code/classes like an IDE
would, which isn't really what you should be worried about - let the
developers do that hard work for you!).

IDA Pro, while being both an excellent debugger and disassembler, is a
cut above the rest, although I could name plenty of other tools in its
class. `IDAPython <http://d-dome.net/idapython/>`_ is the language of
choice for such a tool, bridging over to Immunity Debugger and several
other tools. There is a `free version of IDA
Pro <http://www.datarescue.com/idabase/idadownfreeware.htm>`_, but any
serious person will shell out the money for the non-free version if they
value the primary tool in their toolchain.

Debugging web application client-side code such as Javascript can't get
any easier than by using `FireBug <http://www.getfirebug.com>`_,
although I have found myself wanting better representations of code
before using it. I can't recommend the `Web Developer
Toolbar <https://addons.mozilla.org/en-US/firefox/addon/60>`_
functionality for viewing Javascript, source, and "generated source"
highly enough -- but also `View Source
Chart <http://jennifermadden.com/scripts/ViewRenderedSource.html>`_,
`DOM Inspector <https://addons.mozilla.org/en-US/firefox/addon/1806/>`_
(along with
`InspectThis <https://addons.mozilla.org/en-US/firefox/addon/1913/>`_),
and `UrlParams <https://addons.mozilla.org/en-US/firefox/addon/1290/>`_
in the sidebar. For Flash apps, there is the
`FlashTracer <http://addons.mozilla.org/firefox/3469/>`_ add-on that can
also be used in the sidebar, which responds to trace operations (you may
need to put these in yourself), and also a local proxy called
`Charles <http://www.xk72.com/charles/>`_, which
`supports <http://www.xk72.com/charles/wiki/flash>`_ Flash Remoting.

Viewing code and debugging code will help with program flow and
understanding. Some Python tools such as
`HeapDraw <http://oss.coresecurity.com/projects/heapdraw/>`_ and `Python
Call Graph <http://pycallgraph.slowchop.com>`_ make great visualization
tools to aid in this type of work. You'll want to learn how to implement
automated DFA (data flow analysis), view `control flow
graphs <http://en.wikipedia.org/wiki/Control_flow_graph>`_, `basic block
graphs <http://en.wikipedia.org/wiki/Basic_block>`_, and how to view
these under a scenario called hit-tracing. Hit-tracing will allow you to
watch the flow of the application only under certain conditions that you
want to see, while filtering out everything else. The
`PaiMei <http://pedram.redhive.com/PyDbg/docs/>`_ tool will provide
this, and by doing so - you're really discovering an important aspect of
code known as *coverage*; how much the testing affects the code it runs
through.

There are right ways and wrong ways for both security testers and
developers to utilize code coverage in their testing approaches. Besides
the PaiMei tool, there are code coverage tools that are specific to
certain languages, and that often require flags at compile/build time.
gcov and `lcov <http://ltp.sourceforge.net/coverage/lcov.php>`_ are
examples of code coverage tools that require being built in to the
software. Other approaches, such as `NCover <http://ncover.org>`_ for
.NET, and `EMMA <http://emma.sourceforge.net>`_ for Java (using
`EclEmma <http://www.eclemma.org>`_ while in Eclipse) do not have this
requirement. There are even `coverage
validators <http://www.softwareverify.com/javascript/coverage/>`_
available for Javascript.

Normally developers utilize code coverage during a recent invention of
quality testing made specifically for developers by developers called
"unit testing". Unit tests are quick 1-3 second checks in their IDE that
they can use to assert behavior and provide an instant fix. More
advanced unit tests called "component tests" can be done during a build,
along with mocks (fake database or other system necessary to assert
behavior of a fully implemented application). Typically these are all
for functional tests, and possibly also for performance. Rarely are
applications tested for security in this manner, and unit testing was
really built for functional tests (although they theoretically could be
adapted for security testing).

It's sometimes ok to pretend you're a developer just to see what idiotic
things they skip over when they write and build their code. In this
case, you will want to load the code into its native IDE (say, Eclipse
for Java). Then, promote all the warnings you can to errors, build, and
see what the environment spits out at you. Load automated static
bytecode analyzers, which often have a large amount of security checks
(e.g. `FindBugs <http://findbugs.sourceforge.net>`_,
`FxCop <http://www.microsoft.com/downloads/details.aspx?FamilyID=3389f7e4-0e55-4a4d-bc74-4aeabb17997b&displaylang=en>`_,
CAT.NET, and AspectCheck), as well as source code checkers -- and use
this time to write some of your own basic checks (especially to find
low-hanging fruit). For Java, `PMD <http://pmd.sourceforge.net>`_ is
extensible through XPath, for an example see the `PMD SQLi
Rules <http://www.gdssecurity.com/l/t.php>`_. Also check what demos are
available in terms of
`CWE-Compatible <http://cwe.mitre.org/compatible/>`_ tools - I've used
`Fortify SCA <http://www.fortifysoftware.com/products/sca/>`_ to great
effect here. There are also plenty of open-source static analysis tools,
but many aren't as complete as their CWE-Compatible commercial cousins.
If you can find some basic unit tests to run (e.g.
`Crap4J <http://www.junitfactory.com/articles/crap4j/>`_), these may
also provide better program understanding, especially when combined with
inspection tools such as `Armorize
CodeSecure <http://www.armorize.com/product/enterprise.php>`_, Fortify
SCA, `OunceLabs <http://www.ouncelabs.com>`_, Klocwork K7, `GrammaTech
CodeSonar <http://www.grammatech.com/products/codesonar/overview.html>`_,
and the bytecode checkers (i.e. FindBugs, FxCop, CAT.NET, and
AspectCheck).

Security testers have created their own sort of unit tests which involve
injecting faults into an application, or even better -- sending random
or specially-crafted data to the application inputs -- often called
fuzzing or \`fuzz testing'. Fuzz testing tools are numerous, although
one of the best tools is `EFS <http://www.vdalabs.com/tools/efs.html>`_,
which stands for Evolutionary Fuzzing System. EFS provides random data
to an application along with code coverage reports from PaiMei. It
enhances the tests using this code coverage data by implementing genetic
algorithms. Some of these tests cannot be solved, but a satisfiability
solver can provide extensive coverage beyond GA's in this situation.
`STP <http://theory.stanford.edu/%7Evganesh/stp.html>`_,
`zChaff <http://www.princeton.edu/~chaff/zchaff.html>`_, and
`Saturn <http://saturn.stanford.edu>`_ are examples of satisfiability
solvers, while `catchconv <http://sourceforge.net/projects/catchconv>`_
integrates these concepts as a
`variant <http://valgrind.org/downloads/variants.html?njn>`_ to
`Valgrind <http://www.valgrind.org>`_ (a popular dynamic analysis tool,
similar to IDA Pro, but focused mostly on memory debugging). `Valgrind's
Memcheck <http://valgrind.org/info/tools.html#Memcheck>`_,
`DynamoRIO <http://www.cag.lcs.mit.edu/dynamorio/>`_, Purify
(commercial), `DynInst <http://www.dyninst.org>`_, and
`Pin <http://rogue.colorado.edu/pin/>`_ are actually dynamic binary
instrumention (DBI) tools which would work well with PaiMei's `crash
binning
routines <http://pedram.redhive.com/PaiMei/docs/Utilities/public/utils.crash_binning.crash_binning-class.html>`_
when attempting to find off-by-one's and incrementing counter crashes
(and other issues that may be better found through formal method
security testing).

Random fuzzing along with code coverage is probably one of the most
advanced tools in a security tester's toolbox. However, there are some
cases where binary protocols hit protocol parsers on both sides of a
connection. Tools such as
`ProxyFuzz <http://theartoffuzzing.com/joomla/index.php?option=com_content&task=view&id=21&Itemid=40>`_
and `Universal
Hooker <http://oss.coresecurity.com/uhooker/doc/index.html>`_ can make
it easy to determine whether one side or both sides of a connection
require more than just random fuzz testing. If this is the case, a lot
of manual work may be required to determine which parts of the data are
encrypted (if any), compressed (if at all), or separated by TLV's (type,
length, or values). Using a specification may be the easiest way to
implement a specially-crafted fuzz testing tool for the "application
under test" (AUT). Using a fuzzing framework such as
`Sulley <http://www.fuzzing.org/2007/08/02/sulley-fuzzing-framework-release/>`_
or `Peach <http://peachfuzz.sourceforge.net>`_ can make building this
tool much easier than doing so by hand. In some cases, files (not
protocols) are loaded or unloaded by applications. Certain fuzz testing
tools work specifically well for writing random or specially-crafted
files, and others are provided by frameworks. Depending on the platform
or type of application you're targeting, you'll want to look at a few
different file fuzzing tools/techniques, but
`FileFuzz <http://www.fuzzing.org/wp-content/FileFuzz.zip>`_ (by Mike
Sutton) seems to stand out as a good starting point (similar to
ProxyFuzz for protocols). For other file fuzzing tools, see
`FileP <http://www.isecpartners.com/file_fuzzers.html>`_ (my favorite,
written by Tim Newsham),
`SPIKEfile <http://www.fuzzing.org/wp-content/SPIKEfile.tgz>`_ and
`notSPIKEfile <http://www.fuzzing.org/wp-content/notSPIKEfile.tgz>`_,
`Ufuz3 <http://research.eeye.com/html/tools/RT20070129.html>`_,
`FuzzyFiles <http://reedarvin.thearvins.com/tools/FuzzyFiles.zip>`_, and
`Mangle <http://www.digitaldwarf.be/products/mangle.c>`_. I'll leave
targeting browsers, web servers, and web applications with fuzz testing
techniques for later, but these should give you a general idea of what
is available. There's also fuzzing `environmental variables, in-memory,
etc <http://www.fuzzing.org/fuzzing-software>`_. Note that Sulley,
Peach, and FileP are all Python frameworks for coding specially-crafted
fuzz testing tools.

Often there are situations where rolling your own fuzz testing framework
or dissecting a protocol or file format may seem like the last thing you
want to do. Prototyping this work should be a first step to determine if
the effort is worthwhile. I gave examples of using both ProxyFuzz and
uhooker as starting points. Combine this with code coverage, and check
to see if the results show how well you've tested. Before starting a
fuzz testing project using a framework or writing your own tool (or a
full-blown client), you may want to do a few more checks. This is where
knowledge of bash and C can come in as extremely helpful. Small C
programs are fast, easy to write if you're just trying to do one thing
well (run a looped test), and can be easily piped on the Unix command
line to "try different things out". The bash shell provides ease of use
when writing loops or conditionals for a bunch of small programs piped
together, to combine speed with agility and flexibility in prototyping.
Using the Matasano Blackbag tools (or by writing your own tools similar
in nature/effect), it becomes easier (and more fun) to reverse binary
protocols/formats than by reading specs and building run-once Python
scripts. Of course, finding the Matasano Blackbag tools may be difficult
as they now recommend `writing protocol
dissectors <http://www.matasano.com/log/973/exploring-protocols-2-writing-some-tools/>`_
using Ruby along with
`BitStruct <http://redshift.sourceforge.net/bit-struct/>`_. A commenter
posts using `Construct <http://construct.wikispaces.com/>`_ with Python,
as well as the popular `scapy <http://www.secdev.org/projects/scapy/>`_
Python library found quite often in the literature.

Almost a lost art, but related to file fuzzing and binary protocol
dissection is binary analysis. Many continue to use IDA Pro to perform
these sorts of bug-finding techniques, using IDC scripts such as the one
by Halvar Flake, `BugScam <http://sourceforge.net/projects/bugscam/>`_.
Tools such as `bugreport <http://bugreport.sourceforge.net>`_,
`BEAST <http://www.sisecure.com/company/ourtechnology/beast.shtml>`_ and
OBOE can also be used, but it may be better to re-write this
functionality in IDAPython, possibly by using x86 emulators, or PEiD to
remove potential code obfuscations. Halvar Flake's company, `SABRE
Security <http://sabre-security.com>`_, also maintains the best tools
for program analysis, debugging, and testing for security. The primary
reference tool, BinNavi, works on embedded processors as well as most
platforms you can think of. I've heard he can make it available to
people who cannot afford it depending on your project scope.
BinNavi/BinDiff have simply the best reputation in the business, and
like PaiMei, require IDA Pro.

After a security-related bug is found (using automated inspection,
automated fault-injection, automated random fuzzing, or by partially
automating specially-crafted fuzz testing, binary analysis, or code
review), some will choose to report it to vendors, some will write
exploits, and some will do none of the above. If an exploit is intended
to be written, you'll find lots of support for doing so using the
`Immunity
Debugger <http://www.immunityinc.com/downloads/Debugging_With_ID.odp>`_
and the Metasploit package. There are some automated exploit writers
including the `MSF-eXploit
Builder <https://www.securinfos.info/metasploit/MSF_XB.php>`_,
`Byakugan/noxdbg <http://www.noxusfiles.com>`_, and
`Prototype-8 <http://www.grayscale-research.org/prototype8/>`_. Python
appears to be dominant for exploit writing were it not for the
Metasploit project, which has moved to Ruby. If the focus of a security
testing team is dominant towards writing exploits, then it is suggested
that Ruby equivalents replace SciTE, ImmDbg, IDAPython, PaiMei, and the
various fuzzing frameworks and tools already mentioned, or that security
testers learn both Python and Ruby equally well.

Writing exploits for web applications is a quite different matter. There
is a reference platform for fault-injection and fuzz testing of web
applications, which provides source for every vulnerability check.
Unfortunately, it's the commercial `Cenzic
Hailstorm <http://www.cenzic.com/products_services/cenzic_hailstormEntARC.php>`_.
Also unfortunately, this means learning another language: Javascript,
but web application security testers should possibly make learning
Javascript (and Flash) a priority over Python, C, or Ruby. `CORE
Impact <http://www.coresecurity.com>`_ (also commercial) has begun to
add the low-hanging fruit exploits (although they claim no XSS yet), and
it is imagined that ImmunitySec will do so as well (and these could be
open-sourced like the `SQL
Hooker <http://forum.immunityinc.com/index.php?topic=92.0>`_ tool). For
now, the Metasploit, GNUCITIZEN
`AttackAPI <http://www.gnucitizen.org/projects/attackapi/>`_, and the
`BeEF <http://bindshell.net/tools/beef/>`_ framework appear to be the
dominant exploit tools for web applications. The
`W3AF <http://w3af.sourceforge.net>`_ framework uses BeEF, but also
includes many modules (some pinned for future release) that allow for
pivoting including an RFI proxy, as well as using log or source code
information to continue a more advanced attack. There are concepts such
as XSS Tunneling (to run Nessus or similar through a man-in-the-browser
exploit) and W3AF's Virtual Daemon (integrating web application exploits
with Metasploit payloads).

In fact, finding web application vulnerabilities is often more than just
program understanding along with standard fault-injection and fuzz
testing. There are many intricacies to finding XSS and SQLi -- even
other critical vulnerabilities such as HTTP Splitting/Smuggling can take
many forms (see: `Amit Klein on
HRS <http://www.owasp.org/images/1/1a/OWASPAppSecEU2006_HTTPMessageSplittingSmugglingEtc.ppt>`_).
Fortunately, many of these are covered in *The Web Application Hacker's
Handbook*, in fairly clever detail. The book even covers triple-encoded
XSS attacks, second-order SQLi, OOB SQLi, and inference attacks. Almost
all examples use the `Burp Suite <http://portswigger.net>`_, as the
primary author (Portswigger) also wrote that tool. The book makes
special mention of some other
`point-tools <http://portswigger.net/wahh/tools.html>`_, including the
aforementioned inference attacks using
`Absinthe <http://www.0x90.org/releases/absinthe/download.php>`_. SQLi
can also benefit from non-standard methods such as using
`PQL <http://lambda-the-ultimate.org/node/1079>`_.

Earlier in this entry, I mentioned some Firefox add-ons such as
UrlParams. There exists a similar add-on that can be used as an HTTP
editor (but only to modify requests, not responses):
`TamperData <http://tamperdata.mozdev.org>`_. While mentioned in
Portswigger's book, he doesn't cover it as well as he should. TamperData
can be opened in the sidebar and looks surprisingly similar to UrlParams
-- this has great benefit, especially when testing for low-hanging fruit
SQLi, XSS, and HRS vulnerabilities; as well as path traversal, logical
flaws, URL redirection, and similar vulnerabilities which require direct
tampering of the HTTP request headers. If you want to build advanced
attacks, besides Hailstorm or Burp Scanner/Suite I can also recommend
`Wfuzz <http://www.edge-security.com/wfuzz.php>`_ (written in Python)
and
`CAL9000 <http://www.owasp.org/index.php/Category:OWASP_CAL9000_Project>`_
(a browser driver, ideal for testing XSS in several different browsers
using the same tool). Of course, there is the original HTTP/CGI attack
tool, which has recently made a comeback as `Nikto
2 <http://www.cirt.net/code/nikto.shtml>`_.

One tool is mentioned that I had not heard of before, and interestingly,
the approaches given to attack authentication, session management, and
access control are very different than the approaches that I propose
(and the tools that I use). The
`CookieWatcher <https://addons.mozilla.org/en-US/firefox/addon/1201>`_
add-on is proposed as a way of looking for session ID's in applications
under test. This is an excellent idea, and I've already integrated it
into my testing strategies, as it is easy to change which session ID
type you are looking for (it's the only tool option/preference, which
has a drop-down menu that shows a list of cookies seen), delete, or copy
(as well as view it in the status bar). While the lack of options is
somewhat aggravating, the add-on works well along with
`CookieSwap <https://addons.mozilla.org/en-US/firefox/addon/3255>`_ (to
have switchable cookie profiles),
`CookieSafe <https://addons.mozilla.org/en-US/firefox/addon/2497>`_ (to
turn first and third party cookies off on a case-by-case basis),
`CookieCuller <http://cookieculler.mozdev.org>`_ (to permanently protect
cookies), and `Add N Edit Cookies <http://addneditcookies.mozdev.org>`_
(to use the Cookie Editor to modify content, path, security, or expire
information, as well as to add completely new cookies). WebScarab,
`Stompy <http://lcamtuf.coredump.cx/stompy.tgz>`_, and the forthcoming
`Burp
Sequencer <http://blog.portswigger.net/2007/10/introducing-burp-sequencer.html>`_
are probably excellent tools for session ID analysis, and the book
covers how to do this in detail, while pointing to the excellent NIST
FIPS 140-2 standard, which has four levels of validation criteria.
Interesting characteristics that may affect authentication or session ID
randomization include IP address, BGP prefix, DNS forward or reverse
entries, time, and HTTP Referer or User-Agent. Tools such as
`RefControl <https://addons.mozilla.org/firefox/953/>`_, `User Agent
Switcher <http://addons.mozilla.org/firefox/addon/59>`_,
`Tor <http://www.torproject.org>`_, and
`pbounce <http://o0o.nu/%7Emeder/index.php?pg=pbounce>`_ should be used
when testing for authentication (IP, DNS, and Referer authentication
checks should also be configuration or source-code assisted if
possible).

A lot of the functionality of the Burp Suite is utilized rather
effectively in the book as well. However, the lack of inclusion of
certain web application security aspects, such as Ajax security,
automated DOM-based XSS scanning, and Web services security also happen
to be problems with the Burp Suite itself. For Ajax crawling, I suggest
checking out all the work done by `Shreeraj
Shah <http://shreeraj.blogspot.com>`_ (especially `Crawling Ajax-driven
Web 2.0
Applications <http://www.infosecwriters.com/texts.php?op=display&id=539>`_
and `Scanning Ajax for XSS entry
points <http://www.net-security.org/article.php?id=981>`_), including
his new `BlueInfy tools <http://blueinfy.com/tools>`_. For DOM-based
XSS, the W3AF tool has a
`module <http://w3af.sourceforge.net/features.php>`_ to support this
that is equivalent to Shreeraj's work. Web services security is also
best covered by Shreeraj Shah, although there will be a few books coming
out in the next month that should re-address the issues of Ajax and Web
services rather well. From my experience, the OWASP
`Interceptor <http://www.owasp.org/index.php/Category:OWASP_Interceptor_Project>`_
tool, as well as the commercial (free limited version)
`SOAPSonar <http://crosschecknet.com>`_ tool are good starting points
for Web services security testing outside of Shreeraj's tools already
mentioned. There are fuzzers, including the OWASP
`WSFuzzer <http://www.owasp.org/index.php/Category:OWASP_WSFuzzer_Project>`_,
`SIFT <http://www.sift.com.au/73/171/sift-web-method-search-tool.htm>`_,
and iSecPartner's `WSBang <http://www.isecpartners.com/wsbang.html>`_,
as well as generic XML fuzzers such as
`untidy <http://untidy.sourceforge.net>`_ and
`Schemer <http://www.fuzzware.net/Schemer/Schemer.htm>`_.

It is strange that without mentioning much about Ajax, XML, or Web
services that the authors included a very detailed section on JSON
Hijacking and CSRF. While I was familiar with both `CSRF
dorks <http://csrf.0x000000.com/csrfdb.php>`_ and `CSRF
Redirectors <http://shiflett.org/blog/2007/jul/csrf-redirector>`_, the
book contains excellent material on how to test (although does not
provide a tool reference). Most recently, OWASP released a new project
called
`CSRFTester <http://www.owasp.org/index.php/Category:OWASP_CSRFTester_Project>`_,
which looks promising. OWASP has a lot of great projects, but their
integration (`I agree with Ory
Segal <http://blog.watchfire.com/wfblog/2007/07/my-wish-for-ope.html#comment-75448386>`_
on this) could be vastly improved. There are very unique tools such as
`Pantera <http://www.owasp.org/index.php/Category:OWASP_Pantera_Web_Assessment_Studio_Project>`_
(Python extensible) and
`ProxMon <http://www.isecpartners.com/proxmon.html>`_ (also Python
extensible) that do passive analysis for web application security
testing, which can save countless hours of manual penetration-testing
using TamperData or Burp Suite. I often wish that other tools such as
the `THC releases <http://freeworld.thc.org/releases.php>`_ and
`Foundstone free
tools <http://www.foundstone.com/us/resources-free-tools.asp>`_ could
also be combined, as I often reference these tools for the SSL checking
support as well as a variety of other reasons.

Other tools such as
`DirBuster <http://www.sittinglittleduck.com/DirBuster/>`_,
`JBroFuzz <http://sourceforge.net/projects/jbrofuzz>`_, and `DFF
Scanner <http://security-net.biz/files/dff/DFF.zip>`_ can be used for
predictable resource locations (PRL) -- especially while using ProxMon
or Pantera passive analysis techniques (or by using these with
FileMon/RegMon/Process Monitor on the Windows IIS web server, or strace,
lsof, fstat, ktrace, or truss on the Apache/Unix web server). I expect
the w3af and Burp Scanner will both integrate full Javascript crawlers,
Flash walkers, and other advanced RIA features in the future -- which
could even surpass the CWE-Compatible web application security scanners
out there. In addition to this, they should add passive analysis tools
and work with "agents" available in "white-box assisted" tests, such as
the case with ImmunitySec's SQL Hooker as well as the PRL techniques
described at the beginning of this paragraph. There will probably be
four different types of agents: 1) the standard local proxy that sits in
between the browser and the web server, 2) an agent that monitors the
code/files/services/queries on the web server, 3) a proxy agent that
sits in between the web server and database server (or other external
services) and monitors like a testing spy (e.g. JDBC spy), and 4) an
agent that monitors the code/queries on a database server or other
external web service. Nobody has built this yet, but since we're on the
topic, this is what I'd like to see in modern web application scanning
tools. Maybe these agents or passive tools will also be able to measure
code coverage and web surface coverage in a similar way that the
commercial tools, `Fortify
Tracer <http://www.fortifysoftware.com/products/tracer/>`_ and `Chorizo
Scanner <http://chorizo-scanner.com>`_ (and the open-source
`Grabber/Crystal <http://rgaucher.info/b/index.php/post/2007/11/21/The-new-grabber>`_)
accomplish this through bytecode instrumentation or other hooks.

For the year 2008, I'd like to see replacement of standbys like RSnake's
XSS Cheat Sheet. While incredibly useful to me in 2006, it no longer
holds its weight compared to the WASC `Script
Mapping <http://www.webappsec.org/projects/scriptmapping/>`_ project and
tools such as .mario's `PHP Charset Encoder <http://h4k.in/encoding/>`_,
or Gareth Heyes'
`Hackvertor <http://www.businessinfo.co.uk/labs/hackvertor/hackvertor.php>`_.
One of the biggest lessons I learned about software weaknesses (SQLi and
XSS in particular) is that there is a concept of low-hanging fruit
(LHF), but at some point after the root-cause is found, more complex
attacks often work. However, this is largely true only when a security
tester has full source-code and framework knowledge. In this instance, a
spreadsheet such as the one found in the Microsoft Press' *Hunting
Security Bugs* `companion
content <http://www.microsoft.com/mspress/companion/0-7356-2187-X/>`_,
"Reference -- ASP.NET Control Encoding", can be used to figure out which
classes encode on a per HTML, Script, or URI basis. What I've been
describing for awhile now is what will be known as hybrid analysis, with
hybrid (static + dynamic) tools becoming more rapidly available to
security testers.

For web applications, there are some great open-source static analysis
tools that can get a penetration-tester started in using a source-code
assisted black-box testing method. For PHP there is
`Inspekt <http://code.google.com/p/inspekt/>`_,
`Pixy <http://www.seclab.tuwien.ac.at/projects/pixy/>`_,
`RATS <http://www.fortifysoftware.com/security-resources/rats.jsp>`_,
`SWAAT <http://www.owasp.org/index.php/Category:OWASP_SWAAT_Project>`_,
`PHP-SAT <http://www.program-transformation.org/PHP/>`_,
`PHPSecAudit <http://developer.spikesource.com/projects/phpsecaudit>`_,
`PSA3 <http://packetstormsecurity.org/filedesc/PSA3.zip.html>`_, and
`FIS <http://segfault.gr/projects/?lang=en&projects_id=11&secid=28>`_
(File Inclusion Scanner, with the extended tool,
`WebSpidah <http://webspidah.segfault.gr>`_). For Java, there is
`Milk <http://milk.sourceforge.net>`_ (based on
`Orizon <http://sourceforge.net/projects/orizon/>`_),
`LAPSE <http://www.owasp.org/index.php/Category:OWASP_LAPSE_Project>`_,
and SWAAT (only JSP). ASP classic and ASP.NET have `ASP
Auditor <http://michaeldaw.org/projects/asp-auditor-v2/>`_, SWAAT, and
`DN\_BOFinder <http://www.owasp.org/index.php/DN_BOFinder>`_. Javascript
has `JSLint <http://www.jslint.com>`_. There are also static code
analysis tools `specifically built for
browsers <http://wiki.mozilla.org/Static_Analysis>`_, such as
`Oink <http://www.cubewano.org/oink>`_ and
`DeHydra <http://wiki.mozilla.org/DeHydra>`_.

Speaking to browsers, I promised some information on fuzzing browsers
(to include ActiveX as well). First of all, we must mention Michal
Zalewski, who not only recently brought us `Bunny The
Fuzzer <http://code.google.com/p/bunny-the-fuzzer/>`_, but also started
a modern version of the Crusades to create a battle between browsers and
web applications when he wrote
`MangleMe <http://lcamtuf.coredump.cx/mangleme/mangle.cgi>`_. hdm
followed to create `a bunch of
tools <http://metasploit.com/users/hdm/tools/>`_: Hamachi, CSSDIE,
DOM-Hanoi, and AxMan (for ActiveX similar to iDefense's
`COMRaider <http://labs.idefense.com>`_). Before these guys, `PROTOS had
c05-http-reply <http://www.ee.oulu.fi/research/ouspg/protos/testing/c05/http-reply/index.html>`_,
and eEye was still thinking about
`TagBruteForcer <http://research.eeye.com/html/tools/RT20060801-3.html>`_.
Even the Mozilla team released a tool,
`jsfuzzfun <http://www.squarefree.com/2007/08/02/introducing-jsfunfuzz/>`_
this year, including
`collaboratively <http://my.opera.com/desktopteam/blog/2007/08/15/9-23-released>`_
with
`Opera <http://my.opera.com/desktopteam/blog/2007/08/03/fun-with-the-fuzzer>`_.
The latest comes from GNUCITIZEN as `WEB CLIENT
FUZZER.PY <http://www.gnucitizen.org/blog/web_client_fuzzer_py>`_ and
Ronald as `BrowserFry <http://browserfry.0x000000.com>`_.

Robert Hansen (RSnake) recently spoke at OWASP AppSec 2007 about Web
Browser (In)-Security (slides not available yet, so I don't know what he
covered). It's true that 89% of security vulnerabilities in browser
plug-ins from this year were in ActiveX applications. However, that
doesn't mean that you shouldn't keep your browser, `Adobe Flash
Player <http://www.adobe.com/products/flash/about/>`_, `Java
installation <http://java.com/en/download/installed.jsp>`_, `Adobe
Reader <http://www.adobe.com/products/acrobat/readstep2_allversions_nojs1.html>`_,
`QuickTime <http://www.apple.com/quicktime/>`_, `Windows Media
Player <http://www.microsoft.com/windows/products/winfamily/mediaplayer/default.mspx>`_,
and Mozilla `extensions
up-to-date <https://addons.mozilla.org/en-US/firefox/addon/2098>`_ at
all times. It also doesn't necessarily mean that
`IE <http://blogs.msdn.com/ie/archive/2007/06/22/from-microsoft-teched-2007-web-development-tools-for-internet-explorer.aspx>`_
is more insecure than Firefox, Opera, or Safari. They're all insecure
and it's your job to find out where and why. RSnake did release some
very cool code this year with the `Master Recon
Tool <http://ha.ckers.org/mr-t/>`_ (aka Mr.
T)\ ` <http://browserfry.0x000000.com>`_. Expect to see more available
at Jay Beale's `ClientVA <http://www.clientva.org>`_ website (and read
his presentation from Toorcon 9 on that same page).

Outside of regular security testing at home or in the lab, I'd like to
address the two commercial Software-as-a-Service (SaaS) solutions
available as outside security testing augmentation. `WhiteHat
Security <http://www.whitehatsec.com>`_ makes a product called Sentinel,
which embodies the `WASC Threat
Classification <http://www.webappsec.org/projects/threat/>`_ (i.e. a way
of understanding attack-paths against web applications). WhiteHat has a
mature understanding of web application vulnerabilities from an attacker
perspective, which is ideal for people that are learning how to think
like an attacker. `Veracode <http://www.veracode.com>`_ also provides a
service, SecurityReview, which also happens to be CWE-Compatible (and
the only commercial solution that has to-date formally passed the
criteria besides SofCheck, an Ada source code analyzer). CWE is
invaluable information that can be given back to developers in order to
fix security vulnerabilities and avoid software weaknesses in coding
efforts.

For embedded systems such as the iPhone, or routers such as those made
by Cisco Systems, there is plenty of research out there to get you
started. If the device has a web browser, try using `JS
Commander <http://jscmd.rubyforge.org>`_ to proxy a low-featured (but
working) Javascript debugger. FX has plenty of material in *The
Shellcoder's Handbook* (2nd Edition) to get someone started on writing
vulnerabilities or exploits for Cisco IOS. The BinNavi tool has support
for at least Cisco IOS and Juniper ScreenOS, as well as a few other key
architectures. If any area is in need of formal methods for security
testing - it's software that is burned into hardware - so consider
taking embedded hardware security to the next level by referencing my
previous blog entry on Formal Methods and Security.
