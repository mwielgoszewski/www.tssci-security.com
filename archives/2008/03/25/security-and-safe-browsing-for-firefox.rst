author: dre
disqus_id: b2c30eb2-bac1-4a46-aebd-912293a49209
disqus_url: http://www.tssci-security.com/archives/2008/03/25/security-and-safe-browsing-for-firefox/
mod_date: 2008-03-25 11:30:12
parent: 0
post_id: 392
post_type: post
pub_date: 2008-03-25 01:20:28
public: 'yes'
slug: security-and-safe-browsing-for-firefox
tags:
- defense
- security
template: post.html
title: Security and safe browsing for Firefox

Security and safe browsing for Firefox
######################################

You installed Firefox. How do you make it more secure for daily use? How
do the Mozilla developers ensure that they are doing all the right
things? How do you safely browse the Internet?

These are not easy questions to answer, and some of the answers will be
system/OS-dependent.

**Security functionality in Windows versions of Firefox**

Using
`LookingGlass.exe <http://erratasec.blogspot.com/2008/03/new-lookingglass-version-1010.html>`_,
one can see a few issues with Firefox beta 3 on Windows Vista or XPSP2.

Clearly, some Firefox binaries (executables and DLL's) are safer now
that they support NX, and as seen using LookingGlass.exe -- Firefox 3 is
likely overall much safer than Firefox 2 (although adding new
functionality must also be taken into account).

I have already seen a few traversals in Firefox 3, although according to
the DVLabs PWN2OWN competition at CanSecWest, "simple directory
traversal style bugs are inadequate". In other words, they're only good
in the real world, not in a hacking competition. Just like XSS and CSRF,
right?

Almost anyone can get Firefox 3 betas to crash, which also worries me.
Yes, there's a lot more use of some protections e.g. NX, but not others
(ASLR would be nice, Mozilla!).

Take a look for yourself at this output from \`dumpbin.exe /headers
firefox.exe':

``100 DLL characteristics NX compatible``

If ASLR was available, the "100 DLL characteristics" would have the
second most-significant bit set to 4 to appear as "140 DLL
characteristics", or in many cases simply "40 DLL characteristics". Of
course, this hardly matters to those who are not running Vista, but who
wants to wait until Firefox 4 for this functionality?

**Safe browsing with Firefox**

I browse Firefox using multiple profiles for each web application that I
use. By setting the environmental variable, MOZ\_NO\_REMOTE=1, or by
running Firefox with\`-no-remote', `multiple profiles can be created,
named, and run individually as separate
processes <http://www.tssci-security.com/archives/2007/12/09/simultaneous-firefox-profiles-used-to-guard-against-csrf-attacks/>`_.

Additionally, NoScript can protect against some URI attacks and some
XSS. Most of these are blacklisted, but it helps if all Javascript,
Flash, PDF files, SilverLight, Java applets, and JAR files are
whitelisted on a per-case basis.

Most people will want to use cookies, and these cookies can be edited to
be secure using Add N Edit Cookies. They can be allowed on a
site-by-site basis using CookieSafe. One can also build multiple "cookie
profiles" using CookieSwap. Simply by using multiple Firefox profiles,
only the cookies allowed on a particular web application can be made to
be the only cookies allowed in that particular profile. For example, I
can search using Google's search functionality in one profile (with no
Google cookies allowed), while another separate profile allows Google
top-level domain cookies so that I can login/use GMail.

I think there are other URI abuse issues that can be prevented. Using
the guidelines at ush.it on a blog post called `Clientside security:
Hardening Mozilla
Firefox <http://www.ush.it/2007/07/25/clientside-security-hardening-mozilla-firefox/>`_,
I have setup my profiles to globally deny new URI's, as well as
explicitly whitelist only http, https, ftp, and javascript.

By default, Firefox provides some insecure and unsafe features.
Automatic form filling is one such feature, including saving passwords
for websites. I even think that some Firefox 3 features such as "safe
browsing" are not, in fact, "safe" -- and I turn them off. Most of the
URL's to get the "safe browsing" information don't even use SSL!

In the default Firefox permissions for Javascript, many of mine are
tweaked. All of the \`dom.disable\_window' about:config settings are set
to "true". Scripts cannot be made to raise/lower windows,
disable/replace context menus, hise the status bar, or change the status
bar text. Other features such as Java (security.enable\_java) and IDN
(network.enableIDN) are also turned off (i.e. set to "false"), unless
they are needed for a certain web application to work.

**Security assurance for Firefox**

Assurance is the critical missing piece. This is why some people that I
know use w3m, curl, and/or links/elinks to access web applications. Full
assurance would mean that every line of code has been verified as secure
by a significant majority of security code reviewers/testers in the
world. This may never be possible.

Looking at the source code for Firefox seems rather daunting, but I
would be willing to bet there are at least a handful of people dedicated
to this cause. Surely, most of them work for Mozilla, and therefore are
empowered to do something about it. However, when vulnerability research
from Michal Zalewski and others pop up -- often unannounced, with
full-disclosure, and on a semi-regular basis -- it is hard to envision a
future where Firefox is secure to the same degree as software such as
qmail.

The problem is not just the size of the code, but how often it is
changed. There have been almost 15k changes (and 2.5 MLOC) in a little
over 2 years. 900 changes were made in between Firefox 3 beta 3 and beta
4 alone! This is the primary problem facing discerning security code
review for this type of project. How often do you find yourself
updating?

The same issues have plagued Internet Explorer for years, which is why
these two browsers have become the vehicles of choice for any would-be
adversary. The only way to stop this madness is to stop changing code
and to stop adding features. It worked for Microsoft when they
implemented their SDL -- at least it worked with other products.

I'm not sure to what degree the size and rate of change in IE had on
security or if the SDL-forced change moratorium worked sufficiently.
There are and will continue to be security-related bugs in IE for quite
some time. In the past 9 Patch events that have had Vista
vulnerabilities, 7 of them were at least partially related to IE. Of the
36 vulnerabilities, almost 20 were related to IE.

Besides suggesting a change moratorium on the Mozilla source code (which
I still contend is a good idea), I can only recommend one other strategy
to improve this situation. I suggest better unit/component-level testing
of Mozilla code that asserts each defect's fix -- in the same way that I
have made recommendations for the `CPSL
process <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_
I described back in December.

Efficiencies in refactoring the Firefox source code might also help here
and there. I don't think that the Mozilla developers use Microsoft's
Visual Studio, but their development environment could probably stand to
use something like `ReSharper <http://www.jetbrains.com/resharper/>`_. I
have not seen a C++ equivalent, and would be interested in seeing other
tools in this class.

I've heard a lot of analogies thrown around in the security world
year-over-year. Here's a new one for you to think over:

Like an open front door, web browsers are the most common entry point
for attackers. Many spirited vulnerability researchers additionally
contend that the web browser is the most powerful weapon in an
attacker's arsenal. Until we can close and lock this door, the rest of
our protections will also continue to fail.
