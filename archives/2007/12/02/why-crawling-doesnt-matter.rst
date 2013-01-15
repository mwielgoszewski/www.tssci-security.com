author: dre
disqus_id: e3304ff1-7ce3-4eaf-ac32-8bf387fa47fb
disqus_url: http://www.tssci-security.com/archives/2007/12/02/why-crawling-doesnt-matter/
mod_date: 2007-12-06 03:19:41
parent: 0
post_id: 337
post_type: post
pub_date: 2007-12-02 15:42:25
public: 'yes'
slug: why-crawling-doesnt-matter
tags:
- security
template: post.html
title: Why crawling doesn't matter

Why crawling doesn't matter
###########################

This post isn't intended to be a retort to Jeremiah Grossman's post last
month on `Why crawling
matters <http://jeremiahgrossman.blogspot.com/2007/10/why-crawling-matters.html>`_,
but more of a follow-up post to my latest blog entry on `Why pen-testing
doesn't
matter <http://www.tssci-security.com/archives/2007/12/02/why-pen-testing-doesnt-matter/>`_.
Hint: both pen-testing and crawling are still important/matter, but my
CPSL process described in my last post leans towards a new, idealistic
approach on the vulnerability problem.

I've covered web crawling before, in `Scraping the web for fun and
profit <http://www.tssci-security.com/archives/2007/10/18/scraping-the-web-for-fun-and-profit/>`_
as well as when I mentioned papers written by Shreeraj Shah in my
longest-yet post on `2007 Security Testing tools in
review <http://www.tssci-security.com/archives/2007/11/24/2007-security-testing-tools-in-review/>`_.
Ajax crawling was only partially covered, so we'll continue to expand on
that topic (as well as other topics) in this blog entry. Another
motivator for posting information about crawling is that I'm seeing some
repeated information over at blogs such as securitytechscience.com/blog
-- especially in their latest on `Screen
Scraping <http://securitytechscience.com/blog/?p=28>`_.

Securitytechscience is interesting, because they are trying to build a
web application security scanner. In their "Screen Scraping" article,
they mention a TBD release of sts-scanner, and the author hints at a
future solution for crawling Web 2.0. It will be interesting to hear
more about what their solution is, although judging by their language
(Ruby), library (Mechanize with Hpricot and/or RubyfulSoup), and
available `resources <http://www.securitytechscience.com/resources/>`_
(i.e. downloadable source code) -- we can make some assumptions.

Also in the "Screen Scraping" article, the author makes mention that
Wapiti is using RubyfulSoup? Maybe I took this out of context, but he
says, "Rubyfulsoup is also a very powerful Ruby screen scraping package,
offering similar parsing structures like HTree but without the complex
XPath query language. I noticed that Wapiti recently incorporated this
into its package". I think maybe he means BeautifulSoup, since Wapiti is
based on Python. I do fail to understand how XPath is complex, and it's
also very rarely slow (notable exception: Selenium Core's XPath
expressions in IE are incredibly slow because they are non-native, more
detail on this below).

Casey, a tssci-security local, brought up a comment in my post on
"Scraping the web for fun and profit" that pointed me to an article on
issues with XPath in the Firequark section entitled `XPath vs. CSS
Selector <http://www.quarkruby.com/2007/9/5/firequark-quick-html-screen-scraping#xpathcss>`_.
While Casey may be onto something using scrapi (even though it is
limited to using CSS expressions), this Firequark article appears to be
somewhat wrong when it comes to comparing XPath and CSS expressions.
Dealing with broken markup is simply something that needs to be dealt
with if you're using an application driver. However, it appears that
Firequark is browser driven, so while not wrong -- it still fails
forward thinking behavior. Firequark (having "fire" in the name, and
being based on Firebug) is
`likely <http://www.getfirebug.com/lite.html>`_ a Firefox add-on, so it
will only work in Firefox. Of course, CSS selectors are much slower than
the native DOM expressions built into Firefox version 3 (by a lot!) as
we'll come to see later in this post.

-  *Protocol driver* -- mimics the client-side aspect of browser-server
   interaction by speaking HTTP directly to the server, but has no
   understanding of plugins such as Javascript, Flash, et al (but may be
   able to "grep" Javascript/Flash for URL's). Scanning speed is usually
   fast
-  *Application driver* -- mimics the client-side aspect of
   browser-server interaction by using both HTTP, in addition to at
   least one other browser plugin such as Javascript or Flash. Requires
   a parser to convert HTML to XML or fixup bad markup. Scanning speed
   is moderate, depending on the JSE implementation
-  *Browser driver* -- drives the client-side aspect of browser-server
   interaction by forcing an actual browser to use its protocol and
   plugin awareness. Scanning speed is slow, especially if using
   non-native, external Javascript libraries

People who have no formal background in development or quality testing
usually refer to protocol drivers as Web 1.0 crawlers and application
drivers as Web 2.0 crawlers. Often, Web 1.0 crawlers are "good enough".
Assuming there is no Ajax or other active client-side logic, there
really isn't a need to crawl with an application driver. Protocol
drivers are much less overhead, and therefore can be much faster.
Building a speedy Web 1.0 crawler can be best accomplished by using
Perl's
`FEAR::API <http://search.cpan.org/dist/FEAR-API/lib/FEAR/API.pm>`_,
which can be even further enhanced by using
`larbin <http://larbin.sourceforge.net/index-eng.html>`_ to provide C++
parallel crawling. This would be nice functionality to include for any
web application security scanner.

As mentioned earlier, Shreeraj Shah has some articles on crawling Ajax
and Web 2.0. In one article, he uses
`RBNarcissus <http://idontsmoke.co.uk/2005/rbnarcissus/>`_ (an
application driver) for a basic example, and then moves into an extended
example using `Watir <http://wtr.rubyforge.org>`_. Watir is a browser
driver, but only for Internet Explorer, and only using the Ruby
language. Confusingly, I discovered at a Java Users Group meeting that
`Watij <http://www.watij.com>`_ and
`WatiN <http://watin.sourceforge.net>`_ both exist, to drive IE from
Java and .NET respectively. Firefox functional testers felt left out, so
some clever person wrote
`FireWatir <http://code.google.com/p/firewatir/>`_ (good name, too) to
drive Firefox browsers, but only using Ruby. The thought crossed my mind
that it would be better if somebody would write a browser driver that
worked with multiple-browsers using multiple-languages, because learning
four completely different tools that only drove one specific browser
seemed like quite a bit of a learning curve, and wasted time. This
doesn't appeal to lazy programmers, does it?

Watir is a part of the `OpenQA <http://www.openqa.org>`_ project,
refugee code that escaped `ThoughtWorks' <http://www.thoughtworks.com>`_
Agile and RoR mind-control. Strangely enough, a browser driver that
works with all browsers, `Selenium
Core <http://www.openqa.org/selenium/>`_ -- was also developed in a
similar path until OpenQA became its home. Not only that, but the
Selenium Remote Control project allows tests to be written in Java,
.NET, Perl, Python, and Ruby. While XPath expressions would be nice to
use, as they are typically faster and cross-language/cross-browser
compatible -- XPath using Selenium Core with IE is incredibly slow and
often interpreted incorrectly (because it has to rely on Javascript
libraries for support) -- so if XPath expressions are used between, say,
Firefox 1.5/2/3, Opera, Safari, Camino, etc -- then they must be
re-written as DOM expressions for IE3/4/5/6/7. Selenium is additionally
limited to support of XPath 1.0 only (no 2.0). Other limitations include
the fact that while Selenium groks Javascript, HTML, XML, and text -- it
has a problem with parsing other content, including Java applets.

Selenium was based on an older application driver called
`JWebUnit <http://jwebunit.sourceforge.net>`_, which in turn was
originally based on `HttpUnit <http://httpunit.sourceforge.net>`_.
JWebUnit and most other application drivers are now based on
`HtmlUnit <http://htmlunit.sourceforge.net>`_, and all of the history
and other detailed information can be read about on this wonderful blog
entry entitled `HtmlUnit vs.
HttpUnit <http://daniel.gredler.net/2007/10/04/htmlunit-vs-httpunit/>`_
(a must read!). That article has excellent information regarding support
of external Javascript libraries, and the author's blog also has updates
on `new HtmlUnit
features <http://daniel.gredler.net/2007/11/04/htmlunit-in-the-wild-new-features/>`_.

After playing with RBNarcissus, Watir, and Selenium Core -- it's hard to
pick up traction about where to go next (although Shreeraj and OpenQA
both led me towards Sahi, I skipped it over as it appeared too similar
in its approach to Selenium). HtmlUnit isn't exactly a functional
testing tool or approachable as an Ajax crawling solution (at least not
just yet). I really liked the Selenium IDE about a year ago, which is a
great little Firefox extension. After checking out the NIST SAMATE `Web
Application Vulnerability
Scanners <http://samate.nist.gov/index.php/Web_Application_Vulnerability_Scanners>`_
project page, I noticed a link that I hadn't seen before under
Free/OpenSource Tools:
`TestMaker <http://www.pushtotest.com/Downloads/features.html>`_ by
Pushtotest. After further exploration, I discovered that another tool,
`TestGen4Web <http://developer.spikesource.com/wiki/index.php/Projects:TestGen4Web>`_
(another Firefox extension, be sure to check out the picture on that
page), was capable of translating between HttpUnit, SimpleTest (i.e.
TestMaker), and Selenium test cases. Yet I was still looking for
something better.

After reading the Jason Huggins' blog (the author of Selenium) one day,
he pointed attention towards a new project,
`WebDriver <http://code.google.com/p/webdriver/>`_ -- which is basically
like using HtmlUnit as a standalone application. The biggest draw to
WebDriver is that it not only can act as a very powerful application
driver, but also has drivers specifically for Firefox and IE. This
provides all the benefits of both application drivers and browser
drivers: full browser JSE and plugin support through the browser
drivers, while the speed and extensibility of an application driver.
After exploring WebDriver, I later learned that Jason Huggins moved from
ThoughtWorks to Google, where he built a grid testing system using
Selenium RC. Apparently Selenium RC Grid is both very buggy and very
cool!

As we proceed through this blog post, I hope that you are following
along with what I've learned about crawling the web. The answer is that
there is no universal answer. Every web application and security test is
different: different size, different code requirements, different tests
require different and multiple crawls, etc. So using one method of
crawling, or one tool is by definition a bad approach. Crawling is not a
"one-size fits all" program that you build. Hence, web application
security scanners are inherently flawed because they fail to take
different scanning engines into account for different reasons. Note that
at least one commercial web application security scanner will allow
customization to change it from Depth-first search (DFS) mode to
Breadth-first search (BFS) mode, but this is only scratching the
surface.

Consider for a second that you are attempting to crawl the `"Dark
Web" <http://www.nsf.gov/news/news_summ.jsp?cntn_id=110040&org=NSF>`_.
You've been tasked as a security professional to scope out what the bad
guys are doing. First of all, you're going to want to protect yourself,
maybe get yourself your own hijacked IP and ASN from APNIC and announce
them out randomly changing BGP-speaking routers. Unlike phishers, you
probably won't need to bother with DNS, so you won't need fast-flux
networks except for maybe use in your proxy infrastructure. Your enemy
is likely to start figuring out that you are crawling his important
terrorist websites and will put up protections. So what works best, DFS
or BFS in this situation? Neither, the best answer is to crawl by making
yourself look like a legitimate dark guest. A few years ago I attended
the LayerOne conference in Pasadena, CA -- where I had the pleasure to
meet Billy Hoffman and attend his talk on `Covert
Crawling <http://www.layerone.info/archives/2006/presentations/Covert_Crawling-LayerOne-Billy_Hoffman.pdf>`_.

Covert crawling may not be enough, and if an after-thought may be "too
little; too late". Consider wily attackers such as Ronald, who would
consider strike-back attacks such as `Spidering the
Spiders <http://www.0x000000.com/?i=414>`_. One of my favorite web
application security blogs, Palisade, did a two part article on `Dodging
the spiders <http://palisade.plynt.com/issues/2006Jun/anti-spidering/>`_
and `More on dodging
spiders <http://palisade.plynt.com/issues/2006Jul/anti-spidering/>`_.
They also include a lot of great links and resources; I especially like
the PDF on Stopping automated attack tools. The legality of crawling
(especially crawling with attacks) comes into play, especially during
strike-back, but what if you are able to purposefully or `accidentally
delete an entire site's
content <http://worsethanfailure.com/Articles/Best_of_2006_0x3a__The_Spider_of_Doom.aspx>`_?
Can a spider enter into a binding contract? This case was debated in a
Colorado federal district court in *`Internet Archive v.
Shell <http://blog.ericgoldman.org/archives/2007/03/can_a_spider_en.htm>`_*.
Be especially careful when crawling financial institutions, especially
if you're verifying a vulnerability in a two-factor authentication
system in use for 13 million banking customers i.e. the `BofA
PassMark/SiteKey
service <http://paranoia.dubfire.net/2007/03/querying-bank-of-americas-sitekey.html>`_.

Many people I know cite the primary reason for crawling (outside of
search engines, which is everyone's obvious first answer) is to simply
get an idea of the size and layout of a website. David Kierznowski
discusses the benefits and drawbacks of `using Microsoft Visio to spider
a website <http://michaeldaw.org/news/news-120307/>`_ on his blog, while
Daniel Cuthbert always points people towards
`Freemind <http://freemind.sourceforge.net>`_, a mind-mapping tool. My
personal answer to this is to just ask the developers to do a
walkthrough of the application with you, as they usually have
understanding and comprehension of their application in ways that
diagrams and mind-maps may never elicit. I often use other tools,
services, and Firefox add-ons, such as `The Wayback
Machine <http://archive.org>`_, `Netcraft <http://www.netcraft.net>`_,
`AboutURL <http://www.abouturl.com>`_, `The
Scrutinizer <http://www.scrutinizethis.com/>`_,
`myIPNeighbors <http://digg.com/security/MyIPNeighbors_Find_Out_Who_Else_is_Hosted_on_Your_Site_s_IP_Address>`_,
`SpiderZilla <http://spiderzilla.mozdev.org/>`_,
`Slogger <https://addons.mozilla.org/en-US/firefox/addon/143>`_,
`Goosweep <http://www.mcgrewsecurity.com/projects/goosweep/>`_,
`Paterva <http://www.paterva.com>`_,
`Googlegath <http://www.nothink.org/perl/googlegath/>`_, and
`Fierce <http://ha.ckers.org/fierce/>`_. Sometimes I go really deep and
start digging through whois-servers.net, ARIN, RWhois, RADB, and trash
cans. Of course this list would not be complete without Johnny Long's
*`Google Hacking for Penetration
Testers <http://isbn.nu/9781597491761>`_*, which is about to release a
second volume/edition slated by the end of the year. I'm curious to find
out if they cover any material on `Using Google Analytics to Subvert
Privacy <http://www.tssci-security.com/archives/2007/09/12/using-google-analytics-to-subvert-privacy/>`_
or `Google Analytics: Now with Stolen Search
Queries <http://www.tssci-security.com/archives/2007/10/17/more-on-google-analytics-now-with-stolen-search-queries/>`_
-- and I also expect to follow up these posts with new material,
regardless of how it's covered in the new book.

One of the most impressive spider related hacks I've seen is the
`Javascript-spider <http://www.gnucitizen.org/projects/javascript-spider/>`_
work that pdp put together on his blog. Strangely, John Resig (author of
jQuery), thought this was a `joke and
laughable <http://ejohn.org/blog/javascript-spider/>`_. Apparently, John
Resig had not yet checked out pdp's jQuery extensions such as `jQuery
Include <http://www.gnucitizen.org/projects/jquery-include/>`_ and
`jQuery JSON <http://www.gnucitizen.org/projects/jquery-json/>`_. John
and pdp may even share a similar vision of the future, such as `The Next
Generation of Security Tools will Run from the
Browser <http://www.gnucitizen.org/blog/the-next-generation-of-security-tools-will-run-from-the-browser>`_.
For example, dk+pdp announced the `Technika Security
Framework <http://www.gnucitizen.org/blog/introducing-technika-security-framework/>`_
and continued the Javascript-spider research until it turned into the
`Yahoo Site Explorer
Spider <http://www.gnucitizen.org/blog/yahoo-site-explorer-spider>`_. If
only John knew that Javascript spiders could produce `stealth
XSS <http://sla.ckers.org/forum/read.php?2,12964,12964>`_, he probably
wouldn't have spent so much time `Hacking Digg with Firebug and
jQuery <http://ejohn.org/blog/hacking-digg-with-firebug-and-jquery/>`_.
Both are masters of this art, as pdp is spending time providing
Javascript hacks for `web servers in your
browser <http://www.gnucitizen.org/blog/plain-old-webserver>`_, while
John Resig is `Bringing the Browser to the
Server <http://ejohn.org/blog/bringing-the-browser-to-the-server/>`_ to
provide server-side Javascript (including some screen scraping
examples!).

pdp and John Resig have some advanced crawling techniques that are worth
additional mention. pdp posted the `Top 5 most popular Web2.0 services
hackers cannot live
without <http://www.gnucitizen.org/blog/the-top-5-most-popular-web20-services-hackers-cannot-live-without>`_
and followed up with another post on `5 generic Yahoo Pipes hackers
cannot live
without <http://www.gnucitizen.org/blog/5-generic-yahoo-pipes-hackers-cannot-live-without>`_.
John also posted information about `Selector
Speeds <http://jquery.com/blog/2007/01/11/selector-speeds/>`_ and
followed up with a post detailing the `getElementsByClassName Speed
Comparison <http://ejohn.org/blog/getelementsbyclassname-speed-comparison/>`_,
leading to `additional
comparisons <http://blog.isobaric.ca/2007/03/getelementsbyclassname-speed-comparison.html>`_
on the isobaric blog.

Outside of Javascript, Perl, Ruby, and the aforementioned RBNarcissus,
Watir, Selenium, TestMaker, and WebDriver crawling techniques -- there
are a few masters of the Python language that have put that language to
great use in open-source web application security scanning projects.
Romain Gaucher's `Grabber <http://rgaucher.info/beta/grabber/>`_ project
has presented a few innovations such as
`wwwCall <http://rgaucher.info/b/index.php/post/2007/07/23/Python-script-utility-called-wwwCall-and-Grabber-news>`_
and `Website functionalities
coverage <http://rgaucher.info/b/index.php/post/2007/07/10/Website-functionnality-coverage>`_
(et tu, Larry Suto?). Romain also wrote a source code search engine for
the NIST `SAMATE Reference Datasheet <http://samate.nist.gov/SRD>`_
(SRD) called the `Python File
Indexer <http://rgaucher.info/beta/pyIndex/>`_, or pyIndex. Andres
Riancho of the `W3AF <http://w3af.sourceforge.net>`_ project has
included one of the only automated Javascript crawlers to inject
DOM-based XSS. The `Confessions of a Penetration
Tester <http://pentesterconfessions.blogspot.com/>`_ blog has published
two W3AF tutorials (`Part
1 <http://pentesterconfessions.blogspot.com/2007/10/how-to-use-w3af-to-audit-web.html>`_,
`Part
2 <http://pentesterconfessions.blogspot.com/2007/10/w3af-tutorial-part-2.html>`_)
that go over some of its unique crawling features. Andres is also
currently working on new methods to execute and analyze Javascript/Ajax,
and he is looking at the following three Python modules to accomplish
this goal:
`zope.testbrowser.real <http://pypi.python.org/pypi/zope.testbrowser/3.4.2>`_
(a browser driver),
`PyXPCOM <http://developer.mozilla.org/en/docs/PyXPCOM>`_, and
`PyKHTML <http://paul.giannaros.org/pykhtml/>`_. He also appears to be
sold in the concepts of covert crawling and using multiple types of
crawls in the W3AF toolchain. I'm very much looking forward to the new
versions of both Grabber and W3AF!

This about covers the latest and greatest in web crawling technology.
Before you pick a language, scraping module, and begin writing security
checks -- let me point you towards one more resource. Courtenay of the
`Caboose <http://blog.caboo.se>`_ blog released a Ruby-based `spider
fuzz
plugin <http://blog.caboo.se/articles/2007/2/21/the-fabulous-spider-fuzz-plugin>`_
in February, along with three updates
(`April <http://blog.caboo.se/articles/2007/4/3/spider-integration-test-updated>`_,
`August <http://blog.caboo.se/articles/2007/8/13/in-brief-spider-integration-test-updated>`_,
and
`October <http://blog.caboo.se/articles/2007/10/31/spider-integration-test-updated>`_).
This work seems to go beyond that of what Romain Gaucher was working on
with his coverage tool, so be sure to take a look and integrate these
concepts into your own future crawlers.

I also have an interest in crawling/walking Flash and RIA apps, so if
you have any pointers, please do let us know! I know how to extract
links ("grep" with swfdump -D or similar), but any further
information/ideas would be very useful. Something like the opposite of
`hxASM <http://haxe.org/hxasm>`_ (for disassembling from memory) or at
least something better than
`Flare <http://www.darknet.org.uk/2007/09/flare-flash-decompiler-to-extract-actionscript/>`_
(for decompiling) would be very interesting. The `flashsec.org software
list <https://www.flashsec.org/wiki/Software>`_ is great, but I still
haven't found anything that works well for this (AMF logs from Charles,
maybe?). `Stefano Di Paola <http://www.wisec.it>`_ has also yet to
release the `JAMFProxy <https://www.flashsec.org/wiki/JAMFProxy>`_ and
SWFRTAnalyzer tools, but according to his OWASP AppSec presentation, the
SWF Runtime Analyzer will be made available on the `Minded
Security <http://www.mindedsecurity.com>`_ website. Looking forward to
this and any other innovations in web application crawling!
