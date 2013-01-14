author: dre
disqus_id: 25644ad7-86a1-4c83-ba9f-7ce9eb740c5a
disqus_url: http://www.tssci-security.com/archives/2007/12/17/ajax-security-opens-up-a-whole-new-can-of-worms/
mod_date: 2007-12-17 20:04:01
parent: 0
post_id: 341
post_type: post
pub_date: 2007-12-17 10:42:17
public: 'yes'
slug: ajax-security-opens-up-a-whole-new-can-of-worms
tags:
- Hacking
- Security
template: post.html
title: Ajax Security opens up a whole new can of worms

Ajax Security opens up a whole new can of worms
###############################################

***Update on the TS/SCI Security Blog***

First of all, I would like to announce that I will be retiring the long,
diluted threads that have recently appeared on the TS/SCI Security Blog.
This is the last of the "longer" threads I've been saving up for our
readers before I embark on a new journey.

What should you expect? Well, I've decided to start a blogging theme
called "A Day-In-The-Life of an Enterprise Security Team". This theme
will consist of 20 short posts, all pertaining to what I see as the
future of Enterprise-class Information Security Management teams. The
posts will demonstrate how they should conduct their strategic,
operational, and tactical security measures. The primary focus will be
defense (hardening, protections) and security testing
(penetration-testing, inspections, audits).

These new posts will be available over the course of the next few weeks,
possibly bleeding into the new year. Be sure to tune in as we uncover
the latest in defense/testing trends! I know that Marcin is working on a
few upcoming posts as well, which will hopefully be staggered throughout
the "Day-In-The-Life" theme.

For this post, I'm excited to talk about the *Ajax Security* book by
Billy Hoffman and Bryan Sullivan. The last blog post, `Collaborative
Systems and Ajax/RIA
Security <http://www.tssci-security.com/archives/2007/12/13/collaborative-systems-and-ajaxria-security/>`_
uncovered some of the highlights of the book, but here are my last words
and review before moving on to bigger and better things.

***Ajax Security*: What was good**

The book, *Ajax Security*, covered a lot of new material that hadn't
been seen or talked about in the press or the security industry. The
authors introduced Ajax security topics with ease and provided greater
understanding of how to view Javascript malware, tricks, and the
aberrant Javascript worms from a security perspective.

Here are some of the "new" concepts that I enjoyed most:

-  Hijacking Ajax apps

Covered a great deal of material about how both Ajax frameworks and
on-demand Javascript cannot hide or obfuscate their internal
functionality. Some code to the tool, HOOK, was made available in one of
the chapters. I was able to test and verify that it works as prescribed.
The tool basically monitors new Javascript functions as they are
"lazy-loaded" (see the last blog post for more information on
"lazy-loading") with Javascript's use of browser interactivity.

-  Attacking Offline Ajax apps

Normally Ajax is worried about client-side code being changed (i.e.
function clobbering) by hijacking Ajax apps as described above. The
solution is to reduce trust of client-side problem domain logic before
it is brought back to the server-side. If input is taken, it should
always be processed through a whitelist filter (with an additional
blacklist to prevent specific-attacks) before being executed server-side
or passed on to another internal service. If client-side problem domain
logic is expected to follow a certain path of execution, the end result
of such flow execution should match expectations. The server-side should
therefore provide the input validation to support expectation-matching.
Client-side validation can be easily bypassed by changing the control
flow execution (that's what an in-browser debugger such as Firebug can
do when the code is easily available for viewing and editing).

In the case of offline application the reverse is true. Using a tool
such as GGHOOK (written to steal offline data created by the offline
Ajax application framework, Google Gears), the local database objects
are available to whatever code is resident in the Javascript Engine.
Injecting SQL queries to pull data back to the Internet (and send it to
a place you are certain to not want it to go) is one easy way to access
this offline data and defeat the integrity of the application.

In order to prevent this access and subsequent querying of local
objects, client-side code in the Ajax problem domain logic must be
validated for input. So, basically the reverse is now true for offline
applications! Instead of server-side input validation - a client-side
validation is necessary to keep data safe.

-  Ajax proxy exposure of third-party XML/JSON data

Ajax relies on XHR's (XmlHttpRequests) to send data back and forth
between client-server, but also server-server transactions. This is very
useful when information is not purposefully published via a Web Service
such as SOAP or REST. The server-to-server XHR traffic can be used to
send XML or JSON data between third-parties that expose their API's to
the public (or semi-privately).

Ajax proxies therefore allow creation of "mashups". The third-party
provides access to its data/API via another hosted site. Mashup access
for clients is now hosted by the web application of the first-party site
to the third-party site, where the first-party acts as a "go-between".
Often, the third-party also acts as a first-party to other sites -- and
sometimes regular clients as well (but possibly restricted by the number
of transactions per second or number of API calls a day).

A hostile client can attack this Ajax proxy infrastructure in a variety
of ways -- choosing to go direct to the third-party to attack the sites
that re-host data/content/API-access *or* attack the third-party via the
first-party site. Worst of all, "Aggregate Sites" will access all kinds
of API's and content (think: RSS) and bring it to one central location,
usually a home portal such as iGoogle. Hostile clients can then attack
any of the aggregated content before it gets to the home portal. The web
becomes a serious of interconnected transitive trust relationships that
can be exploited.

**Best parts about the book**

I really enjoyed the suggested defenses against "mashup" attacks as well
as JSON API Hijacking. Without going into detail (I don't want to ruin
the book and the authors' hard work), I can say that the explanations
are not only better than mine -- but that the imagination and creativity
for optimal solutions were clearly first and foremost in the authors'
intentions. This is really where their good intentions shined.

The authors also did a great job in the first few chapters, as well as
in two other chapters ("Request Origin" and "Worm" ones, specifically)
exposing all of the intricacies of Ajax, HTTP, HTML, and XHR abuse
issues. They showed that with great power comes great responsibility.
The level of attack capability that HTTP/XHR can muster is scary indeed.
Whether it's a simple HTML IFrame or a complex XHR -- the authors show
both the good and evil sides of the equation.

It's quite possible that many Star Wars Ajax security fans will be
calling Billy Hoffman, the great "Obi-Wan", and pdp "Lord Vader" to
represent the "light" and "dark" sides that is The Force behind the
power wielded by Ajax. Case in point is the IFrame, which is used to
"jail" the aforementioned "mashup" Ajax technology.

**What was missing** [and we'll hopefully see in a second edition!]

There was a lot missing, and I'm sure I can't remember all of it right
now. Let's start with what I gathered from my last blog post, which
covered Zimbra in rough detail.

Zimbra, GMail/GDocs, and many others have this "Design Mode" theme in
common where the site allows you to edit HTML (usually mail) content
inside the browser. Web spiders and crawlers have a difficult time
replaying this data, so it is currently impossible for web application
security scanners to test "Design Mode" portions of websites.

Web application security testing tools have these and other issues that
are being worked out as the tools come into maturity. The authors didn't
provide solutions or even discuss these sorts of problems, although they
did cover a lot of related "Presentation Layer" information. You
definitely don't want to miss out on what they have to say about
attacking that layer! There hasn't been a lot of research that I've
seen, and some of the attacks seem incredibly daunting.

For example, caching content locally for browsers to access could be
subverted (say, on a kiosk). The authors recommend "no-cache", but I
looked to the standards and there's a bit more to it than they cover in
the book. I'm working on a document that describes ways of handling this
particular issue, but clearly more research will need to come about in
this area. Hopefully more sites will be adding SSL and automatic HTTP
redirect to SSL (which is another fix for the "Aggregate Sites" problem
spoken to above).

**New can of Javascript Worms opened!**

Here comes the best part! I know that a lot of you are curious if the
book covers Samy. Of course it does! The book also covers the less
exciting but discussion-relevant Yammaner worm. I was very excited to
read this chapter, but also afraid of some of the "dark side"
prescriptions it gave.

However, it also leaves many of us in the dark about Javascript worms. I
have seen and heard complaints about the weak, "low-priority" aspects of
XSS. I have explained Rager's xss-proxy concept and it falls flat on the
weak attention span of most buffer-overflow obsessed pen-testers and
vulnerability researchers. For the few brave enough to listen to me talk
5 minutes about XSS, you'll eventually get the "XSS Tunneling" piece.
Even fewer will get to realize the full-picture.

XSS is the root-cause of a few advanced attack vectors, and Ajax makes
them turbo-speed. I discovered this on my own after viewing a disturbing
video about XSS worms, and `spoke up about
it <http://ha.ckers.org/blog/20070615/xss-irony/#comment-39258>`_ on the
ha.ckers.org blog. It's possible that I subconsciously read about the
basics of this new attack vector from Wade Alcorn, who introduced a less
complete concept a few months earlier. I also led a short discussion
(that same week) about these techniques at the OWASP Chicago chapter
meeting.

Wade Alcorn is the author of the browser exploitation framework (BeEF
for short), an iteration of the xss-proxy code. If you know about
"second-order" SQL Injection or "second-order" XSS (i.e. stored), then
think of BeEF as "second-order" Javascript malware. In this
`announcement on the bindshell
blog <http://www.bindshell.net/entry/36>`_, Wade introduces the concepts
of `Inter-Protocol Communication
(IPC) <http://www.bindshell.net/papers/ipc>`_ and `Inter-Protocol
Exploitation (IPE) <http://www.bindshell.net/papers/ipe>`_. In the IPE
paper, an example exploit that attacks an Asterisk server from what
begins as a simple XSS is the crux of this extremely innovative
research.

Clearly, Wade put two and two together to come up with this meta-level
concept. Before announcing his `Inter-protocol Exploitation and
Communication papers <http://www.bindshell.net/entry/38>`_, Wade had
announced a `vulnerability in the Asterisk
server <http://www.bindshell.net/advisories/astman>`_ two years earlier.
Combine BeEF with Metasploit, and you have yourself a nice hole through
any firewall. Even before
`RSnake <http://ha.ckers.org/blog/20070411/intra-protocol-exploitation/>`_,
`hackathology <http://hackathology.blogspot.com/2007/08/exploiting-ftp-clients-using-pasv.html>`_,
and\ `dk of
BlogSecurity/MichaelDaw <http://michaeldaw.org/news/news-220307-0/>`_
picked up on the Inter-protocol topic, there was already early
discussion on RSnake's blog related to `JS
Spam <http://ha.ckers.org/blog/20070325/javascript-spam/>`_ and
`IMAP+XSS <http://ha.ckers.org/blog/20060920/imap-vulnerable-to-xss/>`_.
Even earlier work had been done (much of it is now called OS Command
Injection, MX Injection, SMTP Injection, Mail Command Injection -- all
really the same thing) labeled as the `HTML Form Protocol
Attack <http://www.remote.org/jochen/sec/hfpa/>`_ and `Extended
version <http://eyeonsecurity.org/papers/Extended%20HTML%20Form%20Attack.htm>`_.

Two weeks after I envisioned the "new Web worm vector", Wade made `The
Register for an article on "Worms
2.0!" <http://www.theregister.co.uk/2007/06/27/wade_alcorn_metasploit_interview/>`_.
I wouldn't be surprised if he was the author behind the `Find, Exploit,
& Cure XSS w0rms <http://milw0rm.com/video/>`_ video on milw0rm that
inspired my delayed vision. Earlier that same month, two exploits were
released for the Yahoo messenger: one for the `Webcam
Viewer <http://osvdb.org/show/osvdb/37081>`_ and the other for its
`Uploader <http://osvdb.org/show/osvdb/37082>`_. The XSS w0rms video
demonstrated an attack against Meebo, where all meebo users could have
their YIM (or AIM, MSN, etc) buddies enumerated and attacked via an XSS
worm. Combine these concepts and the attack effectively crosses the
`Fourth Wall <http://en.wikipedia.org/wiki/Fourth_wall>`_ from a
XSS-based web application worm to a shellcode-based "fat applications"
worm.

Other interesting Javascript worm attack vectors include Exponential
XSS, including a more popular subset known as "Cross Webmail Worms".
This is no surprise given that webmail is most likely to be untested due
to "Design Mode" issues. A proof-of-concept of a XWW (cross webmail
worm) called `Nduja
connection <http://rosario.valotta.googlepages.com/home>`_ claimed the
ability to propagate between separate webmail providers, but work in a
similar way as Yammaner.

I found it odd and surprising that many of these attack vectors were not
discussed in the *Ajax Security* book, especially in the chapter on
Javascript worms. Maybe the popularity and interest in web application
worms has died down. One of the best resources on web application worms
(outside of the links already provided) is to read the bulk of posts by
pdp on the GNUCITIZEN blog.

pdp even uses some of Billy Hoffman's code, showing exactly how "Good
Javascript" can become "Javascript Malware" by simply re-purposing it.
The authors of *Ajax Security* demonstrate this concept in great detail
in the book. I'm curious as to what will happen with the release of
HOOK. Will the ultimate hack for Javascript de-obfuscation and function
monitoring also enable new Javascript malware strains or novel attack
vectors? Probably not, but I'm sure it will lead to exciting new
research in such a blossoming field. What's next for Javascript and the
web application Rich Internet Application frameworks such as Ajax? I
guess we'll soon find out!
