author: dre
disqus_id: 9835bf6f-ebf7-4735-9a7c-a149e7f34945
disqus_url: http://www.tssci-security.com/archives/2007/12/13/collaborative-systems-and-ajaxria-security/
mod_date: 2007-12-14 08:26:44
parent: 0
post_id: 340
post_type: post
pub_date: 2007-12-13 06:34:12
public: 'yes'
slug: collaborative-systems-and-ajaxria-security
tags:
- Defense
- Hacking
- Security
- Work
template: post.html
title: Collaborative systems and Ajax/RIA security

Collaborative systems and Ajax/RIA security
###########################################

**Office collaboration services look like 1985**

Microsoft Outlook and Exchange server have been the staple for office
collaboration for over 10 years, with a model that has been around since
Novell and Lotus in the mid-80's. Collaboration services are clunky,
bloaty, and every IT administrator and techie hates both of them with a
serious passion. Outlook Web Access... -- never mind, I'm not even going
to finish this sentence. When people say that Microsoft stifles
innovation this is exactly what they are talking about. I don't mean to
pick on Microsoft -- because Apple, IBM Lotus Notes, and the open-source
community (no CTO is going to approve anything with \`Squirrel' in the
name) have not stepped up to provide anything equivalent.

**SaaS makes collaboration worse**

Everyone and every organization does their mail, address-books,
calendaring, time management, conference-room reservations, and public
folder sharing a little different. Some people like to download
everything from the server and save it locally. Others keep all their
mail on the server. Some do both. Email retention and anti-spam are a
big deal for a lot of Enterprises, so much that people even outsource
these or all collaboration services.

Organizations are also moving their data more online, to Google
Analytics, Salesforce, NetSuite, et al. Do you trust your CRM or ERP to
a SaaS solution, even if you are a small business? Even if you do trust
them, how are you going to integrate these solutions, especially with
your Exchange server?

Google's answer is their GApps, an integration of GPages, GMail,
GTalk/Chat, GDocs, and all their GAPI's. Have you heard of an SMB or
Enterprise that has moved their collaborative efforts to GApps? My guess
is that not many have.

I've seen many businesses struggle with SaaS and outsourcing of
collaboration services. When considering outsourcing, a normal strategy
is to look at moving 20 to 40 percent of non-core business services to
managed services. Groupware should be considered a core business
service/need in a large majority of cases, as it really drives the
day-to-day business and contains much of the documented and hidden
processes that occur inside any organization.

**It's almost 2008. Stop using Exchange server already**

Enter Zimbra's Collaborative Suite (ZCS) -- a groupware server with
Outlook compatibility that was recently purchased by Yahoo for $345M.
Zimbra has been around for at least 2.5 years, so that fact that you
haven't heard of them is strange. Even Mike Rothman daily debates
`switching over everything to
Zimbra <http://securityincite.com/blog/mike-rothman/the-daily-incite-uune-26-2007>`_,
but his worry about costs shouldn't scare you.

Zimbra's ZCS Server runs on Linux (or Mac OS X). Linux can handle all of
your Windows clients, file sharing, and printing with Samba, can run
LTSP to PXE boot your environment into FreeNX/Windows-TS, and can
cluster it all for free. I've done so using Ubuntu LTSP inside Xen
guests on CentOS along with keepalived. The architecture becomes
lightweight if you have a 5U chassis (and cold, empty standby) with 24
spindles and 8 TB of hardware RAID-1 running CentOS and IET. Then you
have two powerful 1U or 2U machines running CentOS with cman/fencing,
clvmd, and iSCSI-initiators mounting filesystems as OCFS2. Xen guests
are booted from the shared storage. For an example without shared
storage, see `clustering
Zimbra <http://cuddletech.com/blog/pivot/entry.php?id=604>`_ from Ben
Rockwood.

Compare the above reference architecture to Exchange. You'll need NLB
for everything except Exchange clustering, which requires MCS because of
MS SQL Server. To get anywhere near the equivalent of the above, you'll
want VirtualIron or VMWare ESX Server. The enormous licensing costs are
building in my head as I think it through. There is no way to do this
with shared storage, and this is a heavyweight solution with lots of
overhead.

The differences in clients are very similarly disparate -- Zimbra is
lightweight and Exchange/Outlook is not. There are a few other solutions
such as
`OpenGroupware <http://en.wikipedia.org/wiki/Opengroupware>`_\ +\ `ZideLook <http://en.wikipedia.org/wiki/Zidelook>`_
or `DeskNow <http://www.desknow.com/>`_ that provide similar Outlook
compatibility as Zimbra. They have support for the DAV's, iCalendar, and
other good groupware features. Zimbra, however is especially unique in
many ways.

**Zimbra on Ajax security**

`The benefits and drawbacks to using
Ajax <http://www.computerworld.com/action/article.do?command=viewArticleBasic&taxonomyName=software_development&articleId=9051340>`_
are summarized very well in a ComputerWorld article by Paul Krill. Scott
Dietzen, president and CTO of Zimbra, elaborated very well to both
points in this excellent article. He says that he favors Ajax to Flash,
and Ajax frameworks to Flex2. I would say that any RIA framework is
capable of providing these sorts of services, but Ajax has been around
the longest.

The interesting part is when Dietzen talks about `Ajax
security <http://www.zimbra.com/blog/archives/2006/09/securing_ajax.html>`_:

    *Dietzen did cite AJAX security issues such as cross-site scripting
    attacks, in which user data can get interpreted in the browser,
    creating a breach. Also noted as a security concern was use of
    source code in the browser.*

    *[ ... ]*

    *Blocking execution of user JavaScript inside of an application is
    important for combating server-side scripting attacks, according to
    Dietzen. Obfuscation and minimization technologies to remove white
    space can be used as security measures, he said. On the positive
    side, there is no caching of user data on the desktop with AJAX.
    Dietzen also advised that sensitive code not be put in a browser.*

With the recent release of the book, *Ajax Security*, by Billy Hoffman
and Bryan Sullivan -- hopefully Ajax developers and CTO's such as
Dietzen will be able to be armed with the best resources for protecting
their applications and userbase.

**Collaborative systems need Web services support**

Zimbra has support for SOAP, REST, and JSON, but certainly Web services
will also need to be provided securely. I couldn't even imagine how
great it would be to combine my collaborative Office tools with my
collaborative personal research. If I could even import/export betwen my
Google Reader RSS feeds and my Office feeds (using OPML), that would be
extremely useful. Web services take this sort of technology to the next
level.

It would be great to combine XMethods and mashups into your groupware
system for a number of reasons. This level of customization is going to
be a driver for innovation in groupware products. I'd like to see some
of best mashups done with Enterprise data and shared as groupware.
ChicagoCrime and HousingMaps are great, but we can do many more
interesting things in the Enteprise.

The security of Web services and Ajax gateways/proxies for building
mashups comes into question here. The commercial version of SOAPSonar
only costs around seven-hundred dollars, and supports `XSD-Mutation, and
automated vulnerability
assessment/detection <http://www.crosschecknet.com/products/architecture.php>`_.
There are plenty of open-source tools for testing web services, such as
those mentioned in my post on `2007 Security Testing tools in
review <http://www.tssci-security.com/archives/2007/11/24/2007-security-testing-tools-in-review/>`_.
If well tested, Zimbra (and others like it) will be able to provide
mashups along with Web services support, and do so securely. JSON is
also vulnerable to API hijacking, and the *Ajax Security* book provides
interesting solutions to its defense that you absolutely have to check
out.

**Collaborative systems need offline applications support**

Exchange has beat out many open-source groupware services because of the
requirement for supporting offline applications. Users cite issues such
as travel and intermittent Internet connectivity, while others simply
prefer working both offline and on. Zimbra has amazing offline
application support, here are some quotes from the ComputerWorld
article:

    *"The answer for occasionally connected apps is to provide a cache
    on the client side that allows the application to interact locally
    with a data set, and then synchronize over the network when the
    network is available," said Dietzen.*

    *Offline AJAX systems can be developed by using a set of caching
    APIs in JavaScript that enable this. These are accessible via
    offerings such as Google Gears and the Dojo offline tool kit.*

    *[ ... ]*

    *But Zimbra used another approach. "What we did at Zimbra is we
    actually took Zimbra server code, which was written in Java, and we
    created a microserver that runs on my local client," said Dietzen.*

Zimbra also has a great PDF presentation called `Ajax
Unplugged <http://wiki.zimbra.com/images/eTech_2007_AJAX_Unplugged_Henrikson.pdf>`_,
where they compare their Zimbra Desktop offline technology, including
Zimlets, to Adobe Apollo, Dojo.Offline, Joyent Slingshot, and Mozilla's
Firefox 3 Offline support and XULRunner. The *Ajax Security* book
dedicates an entire chapter, but only details Google Gears and
Dojo.Offline, while minimally mentioning WHATWG (FF3 work), Joyent
Slingshot, and Adobe Apollo. I'm also partially surprised that there was
no mention of Zimbra, who has chosen to build their own solution.

However, Billy and Bryan's coverage of the attack surface for Ajax
offline applications is no joke. Apparently, Billy Hoffman plans to
release a new tool to take advantage of some of these attacks against
Google Gears in a tool called GGHOOK. GGHOOK is based on another tool
called HOOK (covered in an earlier chapter on Ajax function hijacking)
-- both of which will be released on `his
website <http://www.msblabs.org/>`_ shortly. The biggest take from the
book's chapter on offline applications is how client-side input
validation has become relevant again. The sad part is that the Ajax
frameworks aren't providing a lot in the way of client-side input
validation for this purpose.

One of the largest problems for a system like Zimbra is XSS for the
client-side data stores. We all know that XSS is capable of stealing
cookies and controlling the browser, but imagine the damage it would be
able to do in this scenario, especially as wormable. Thankfully, ZCS
Server is a local solution and doesn't even have to be Internet
accessible, which would minimize some of the damage from this
theoretical attack. In the case of Google Gears, all of the data can be
stolen using GGHOOK, which locates the Google Gears database object and
queries the local SQLite tables. Ajax security testing will also be
important to solve these sorts of issues.

**Zimbra innovations**

Besides providing Web services into the Zimbra/Zimlets API, providing a
`feed
reader <http://www.zimbra.com/blog/archives/2007/05/zimbras_built-in_rssatom_feed_reader.html>`_,
and `taking Zimbra
offline <http://www.zimbra.com/blog/archives/2006/11/taking_zimbra_offline.html>`_
-- they have also done some other notable things to increase
collaboration.

    *Dietzen mentioned the AJAX technique of **`AJAX Linking and
    Embedding
    (ALE) <http://www.zimbra.com/blog/archives/2006/04/zimbra_ale-ajax_linking_and_embedding.html>`_**,
    in which one document can be embedded inside another. This expands
    content-sharing.*
    *He also cited a technique called [ **`Lazy
    Loading <http://www.zimbra.com/blog/archives/2007/03/lazy_loading.html>`_**
    ] which cuts down loading time for Web pages. With lazy loading, the
    page loads but other parts of the application, such as calendaring,
    are loaded only as needed.*

Besides supporting various mail thick-clients, including Outlook and
Apple Mail -- Zimbra has their ZCS web client aka "clientless mode".
With the "lazy loading" support, this makes using Zimbra more powerful,
faster, and cleaner than using a fat application client. However, it
also exposes it to all of the web application and Ajax security
problems.

Documents embedded in documents and HTML/JS embedded in HTML/JS are
interesting concepts for web applications. The `ALE
specification <http://www.zimbra.com/blog/archives/images/zimbra_ajax_linking_embedding_0.2.pdf>`_
provided by Zimbra is a good way of engineering this type of technology.
Modern browsers have a concept known as "design mode" where the browser
becomes the HTML editor.

Similarly, there's design mode in GMail, GDocs, and other web
applications you may be familiar with. It has been argued between web
application security scanner vendors that if scanning Ajax is difficult
-- scanning "design mode" is nearly impossible. I'd like to see more
specifications such as ALE come out, possibly as a standard. If so,
testing Ajax-driven "design modes" could be much easier to automate.

**Issues with Ajax security testing** **tools**

Google has ways of automating their Ajax testing -- they use distributed
`Selenium <http://www.openqa.org/selenium/>`_ (using grid technology)
and `WebDriver <http://code.google.com/p/webdriver/>`_ in order to
accomplish these tasks. For commercial solutions, I like `froglogic's
Squish for
Web <http://www.froglogic.com/pg?id=Products&category=squish&sub=editions&subsub=web>`_
more than `PushToTest <http://www.pushtotest.com/>`_ or\ `HP Mercury
Interactive's QTP <http://en.wikipedia.org/wiki/QTP>`_ -- but all of
these are viable Ajax testing solutions. Combining security-driven
fault-injection tests into these data-driven frameworks is currently the
best way to test for Ajax security issues.

For theory, your best current bet is to read the *Ajax Security* book.
The authors fail to mention tools that test Ajax. Well, they mention
their own commercial scanner (nice, guys!) and one other open-source
tool. I haven't mentioned it before, avoiding it as a topic for several
reasons -- not even on my post about `Why crawling doesn't
matter <http://www.tssci-security.com/archives/2007/12/02/why-crawling-doesnt-matter/>`_.
Billy and Bryan are quick to point out that the tool not only requires
MS SQL Server, but also that the tool only tests the Microsoft ASP.NET
AJAX framework (possible future support of GWT is mentioned). Here's a
link to it anyways, as maybe the attacks in it are worth re-purposing --
the `OWASP Sprajax
Project <http://www.owasp.org/index.php/Category:OWASP_Sprajax_Project>`_.

The future of Ajax security testing tools is ripe for both the `Technika
Security
Framework <http://www.gnucitizen.org/blog/introducing-technika-security-framework/>`_
and the
`future-work <http://pypi.python.org/pypi/zope.testbrowser/3.4.2>`_ in
the w3af scanning tool, as each will be well-balanced browser-drivers.
Until such a time, we are stuck with either quality testing tools (which
lack the vulnerability and attack data), commercial web application
security scanners (which lack critical testing capabilities), and less
than a handful of open-source tools such as the
`Blueinfy <http://blueinfy.com/tools>`_ tools, `OWASP
Interceptor <http://www.owasp.org/index.php/Category:OWASP_Interceptor_Project>`_
tool, and `w3af's DOM-based XSS
module <http://w3af.sourceforge.net/features.php>`_.

The largest issue that I see with Ajax security testing is the lack of
secure static analysis techniques and tools.
`JSLint <http://www.jslint.com/>`_ and
`DeHydra <http://wiki.mozilla.org/DeHydra>`_ could be starting places
for work in this area. The recently released commercial tool, Fortify
SCA 5.0, just added some support for secure static analysis of
Javascript/Ajax issues, but this is largely limited to XSS, Javascript
function hijacking, and JSON API Hijacking (which was discovered by
Fortify).

**Ajax isn't the only security problem**

The issues presented in this post are only scratching the surface of the
overall problem. It appears that people who already place active
attention into Ajax security issues are failing to follow-through with
coverage of all the theories -- let alone running code. For example,
Zimbra may understand XSS and Javascript obfuscation. HP SPI Dynamics
and Fortify may support minimal Ajax testing for security issues. The
real problems begin when we combine Web services, offline applications,
and "design mode" HTML/JS editors. This becomes especially compounded
with multiple Ajax and RIA frameworks.

Other logical security-related issues and design flaws will creep out.
Using Firebug, it is incredibly easy to control the execution flow of
Javascript-based applications. Ajax improves performance and speed, so
surely timing and side-channel attacks will become relevant. Since
Javascript is embedded in HTML/CSS content and browsers -- affecting the
"presentation" of applications is a major attack vector that we will
need to supply a lot of attention to.

Yesterday, I spent a little while playing with `Dust-Me
Selectors <http://www.sitepoint.com/dustmeselectors/>`_, a Firefox
extension mentioned in the *Ajax Security* book for testing for unused
CSS rules. It has a "Run automatically" mode that I tried out, which
demonstrated the power of CSS data mining. Javascript on-demand
hijacking (or framework hijacking) involve problems with leaking
information about Javascript functions. In a similar way, CSS data
mining involves problems with leakage of CSS content resources.

I've also mentioned
`Flash <http://www.owasp.org/index.php/Category:OWASP_Flash_Security_Project>`_
and other `RIA
frameworks <http://www.owasp.org/index.php/RIA_Security_Smackdown>`_ in
the past, but I don't want to go too much in-depth in this post.
Hopefully, I've opened up your mind to a few of the problems with modern
applications and testing them for security.
