author: dre
disqus_id: ef859512-e0c1-4bb8-8594-d4dcfd339a27
disqus_url: http://www.tssci-security.com/archives/2007/12/05/client-side-attacks-protecting-the-most-vulnerable/
mod_date: 2007-12-09 14:52:03
parent: 0
post_id: 338
post_type: post
pub_date: 2007-12-05 21:44:32
public: 'yes'
slug: client-side-attacks-protecting-the-most-vulnerable
tags:
- defense
- hacking
- security
template: post.html
title: 'Client-side attacks: protecting the most vulnerable'

Client-side attacks: protecting the most vulnerable
###################################################

Chris Hoff published his `2008 Security
Predictions <http://rationalsecurity.typepad.com/blog/2007/12/2008-security-p.html>`_,
which offer a very dim future for the security industry.

His first attack vector is regarding the virtualization hypervisor
attacks. Didn't `Ptacek prove that this
vector <http://www.matasano.com/log/924/joannas-response-to-our-talk/>`_
is useless? I'm starting to see new work in this area, but it's not
focused on attacks - it's more on defense/analysis. Expect to see kernel
debuggers that get into the hypervisor, ready for CanSecWest and
BlackHat next year.

The second attack vector is listed as a major privacy breach of a social
networking site, which has already happened over and over and over
again. How much more major is it going to get?

His others I'm going to have to agree with, only that I'm a little more
positive-thinking about the future for 2008. Many of these are bound to
happen sooner or later, so preparing now really isn't a bad idea. Hoff
has a lot of insight into this, citing specific technology that works /
doesn't work.

All except his #8 prediction, "Expect to see compromise of the RF you
hold so dear". RF has already been compromised before. What exactly is
new about this sort of attack?

Hoff states, *you fire up that Verizon EVDO card plugged into your
laptop or tether to your mobile phone instead because it's "secure"*

I wonder if he is saying that EVDO's use of CAVE (128-bit AES) isn't
properly sophisticated in the same way that WEP or WPA-PSK are also
insecure? Or maybe Hoff is more forwarding thinking than I am. Could it
be that there will be even more advanced attacks on EVDO such as the
`forthcoming work by Josh Wright on
PEAP <http://www.willhackforsushi.com/Home/Entries/2007/11/12_Lining_Up_2008_Talks!.html>`_?

Now, if Hoff had used the words "GPRS, EDGE, UMTS, or HSDPA", I would be
more likely to believe about a viable RF attack. GSM has had numerous
problems in the past. I am not saying EVDO is flawless, but of all of
these RF-based technologies, I expect EVDO to hold out the longest and
have the least severe vulnerabilities of the bunch. WiFi and EDGE are
likely to continue to be the focus area of RF attacks, not only because
of their popularity (read: iPhone), but because of the existing work
already done to reverse engineer their protocols, `scan their
networks <http://thre.at/gsm/>`_, and provide `packet dumps in
Wireshark <http://wiki.thc.org/gsm/>`_.

I use EVDO to connect to the Internet whenever possible, with my
built-in WiFi turned off. When I use WiFi, I'm unable to bring myself to
login to anything sensitive unless I'm already using an SSL VPN
(`SSL-Explorer <http://www.3sp.com/showSslExplorer.do>`_ is an
open-source SSL VPN server) for the rest of my traffic. With attack
tools such as `WiFiZoo <http://community.corest.com/~hochoa/wifizoo/>`_
available for platforms such as the `Nokia
N800 <http://www.freedomcoder.com.ar/node/95>`_, I'm afraid that even
turning on wireless will immediately send "something" to later `WiFi
fingerprint <http://www.sandia.gov/news/resources/releases/2006/images/wireless-fingerprinting.pdf>`_
me or provide a source of sensitive information leakage.

At Toorcon 9 there was a talk about the `Caffe Latte
Attack <http://www.security-freak.net/toorcon/cafe-latte-wireless-attack.html>`_,
and there will be more to come at Shmoocon, judging by the recently
released `speaker lineup <http://shmoocon.org/speakers.html>`_. What I
find interesting about the Caffe Latte Attack is that they recommend
using a "wireless security agent" to protect yourself. This reminds me
of the Shmoo Group's `Hot Spot Defense
Kit <http://airsnarf.shmoo.com>`_, which was released at DefCon 12.

Haven't we shown that `agents are an insecure
approach <http://www.matasano.com/log/646/matasano-security-recommendation-001-avoid-agents/>`_
to the problem? If this had changed, then Cisco wouldn't be `announcing
a remote buffer overflow in their Cisco Security
Agent <http://www.cisco.com/warp/public/707/cisco-sa-20071205-csa.shtml>`_
product. This is a product which claims protection against zero-day
attacks. Does anyone have a problem with this besides moi?

It's uncanny how wireless attacks and browser attacks are so similar in
nature. Both are relatively new, almost everyone uses them everyday
without thinking about the consequences, and both have gaping huge
vulnerabilities that developers seemingly refuse to fix. When simple
solutions are provided (e.g. WPA-PSK) to fix the problem, stupid users
pick dictionary passwords that are cracked within seconds and developers
don't salt the passwords on the server-side. Everyone chooses usability
over security, especially when it comes to WiFi and Firefox/IE/Safari.
Don't forget the backwards compatibility!

Instead of solving these problems at the root-cause of the issue, we
rely on "agents" such as anti-virus, host intrusion-protection systems,
or WiFi-HIPS to provide the protection against wireless and browser
attacks. Millions of malware spreads everyday through web browsers,
while some of the largest data breaches like TJX were due to wireless
attacks. Yet nobody is willing to take the risk of slightly "changing"
the browser or wireless technology, lest face the wrath of the masses
that would be unwilling to "buy into / upgrade to" the more secure
solutions.

At least for wireless, there exists a `WVE <http://www.wve.org>`_, or a
single place to go to learn about the latest in wireless attacks.
There's no place to go for browser vulnerability information. Let me
repeat that. There is no place to go for browser vulnerability
information. One would have to enumerate all the `plugins, add-ons, and
extensions <http://hackademix.net/2007/12/05/plugin-security-plug-insecurity/>`_
for all of the browsers that one uses. This would only cover some of the
vulnerability management problems inherent with browser vulnerability
information. Patch management systems such as Lumension Security and
Configuresoft fail to provide vulnerability management for these sorts
of applications as well.

I've always been especially interested in the cross-over between browser
and wireless attacks, such as
`airpwn <http://www.evilscheme.org/defcon/>`_, `Ettercap
filters <http://www.irongeek.com/i.php?page=security/ettercapfilter>`_,
and `KARMA <http://www.theta44.org/karma/>`_. Imagine the consolidation
of attack tools such as W3AF, Metasploit, and
`Wicrawl <http://midnightresearch.com/projects/wicrawl/>`_. It is very
likely that all of these attacks tools will make it into the `upcoming
beta release of BackTrack 3 on December
14th <http://secmaniac.blogspot.com/2007/12/bt3-beta-eta-14th-dec-2007.html>`_.

I dislike solving problems with architectural recommendations and fixes
to operational process, as using development process such as my
recommended
`CPSL <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_
will eventually increase security above and beyond the recommendations I
give below. At the same time, people do need to know about ways to
protect themselves without asking their favorite `Anti-Virus vendor
whether or not they support Web
2.0 <http://searchsecurity.techtarget.com/originalContent/0,289142,sid14_gci1284845,00.html>`_.
If you know anything about Javascript or Flash security - and how this
influences/changes signature-based defense - then you'll know it's easy
to infect a web browser with only whitespace, completely randomized
alphanumerics, or whatever the attacker chooses. Nobody can build a
signature for this.

Who are you going to turn to next? Patch management vendors to make sure
that browsers and browser plug-ins are updated? How about protection
against zero-day attacks using anomaly detection? Let's just add more
agents that have inherent security weaknesses because they weren't
properly tested into the mix, why not? Add a DLP host agent as well!
That'll do the trick!

Protecting against the latest in browser attacks will mean providing
some sort of Browser Vulnerability Enumeration project (BVE). I recently
read from a few sources that OWASP (because of RSnake's talk at AppSec
2007 in San Jose) is going to start up a new project to concentrate on
browser-related vulnerabilities, a "browser security group".

Until such a platform and group exists, there are `a few ways in Firefox
to provide safer
browsing <http://www.tssci-security.com/archives/2007/08/15/8-firefox-extensions-towards-safer-browsing/>`_.
Usually these defenses aren't going to prevent a vulnerability in an
outdated version of your browser or plugin. Detecting these is normally
a job for vulnerability management, but since the OS and Patch
Management vendors leave this job up to the user, it's the user that
suffers when he/she doesn't know how/when to patch what. Operators or
inline devices must be able to provide this vulnerability management
themselves, usually by passive analysis (e.g. packet capture of browser
information) or via transparent proxy logs.

Jay Beale gave an extremely exciting presentation at Toorcon 9 that I
can't stop talking about. His defense strategies (and soon, running
code) are available on his `ClientVA <http://clientva.org>`_ website.
The basic idea behind the concept is to inject a once-a-day HTML iframe
that carries RSnake's `Master Recon Tool <http://ha.ckers.org/mr-t/>`_
to enumerate browser plugin versions. The iframe injection can be done
with airpwn, Ettercap filters, and/or a transparent proxy such as Squid.
He also alludes to using similar techniques just by sniffing, digging
through log files, and concepts for non-browser clients such as mail
clients, and office/productivity applications (although I would add
entertainment/creativity applications to this list). For office
applications, he suggests using file share scanning combined with
`Metagoofil <http://www.edge-security.com/metagoofil.php>`_, which will
scan documents for metadata (which contains MS-Office and similar
version numbers) along with MACE "last-modified" file times. Richard
Bejtlich presents some great concepts for `testing instead of using
these as
controls <http://taosecurity.blogspot.com/2007/11/controls-are-not-solution-to-our.html>`_
that would work well along with this concept.

I've always wondered why router, firewall, or proxy-server vendors
haven't `included such
functionality <http://searchsecurity.techtarget.com/originalContent/0,289142,sid14_gci1284924,00.html>`_
in their products. Palo Alto Networks is taking on some of the
client-side issues, but addressing them a bit differently. I have also
heard of Trusteer.com, but do not know of anyone using their products.
Some people claim to browse with multiple browser instances or run their
browsers in virtualized environments. Microsoft says you'll be fine if
you use IE7 under Vista in protected-mode. I think for 2008, we'll start
to see protections for client-side attacks start to catch on - but which
of these will emerge as the most viable (or money-making) solution is
not quite as easily predicted.
