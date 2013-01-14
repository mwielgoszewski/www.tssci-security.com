author: dre
disqus_id: 2ff185a8-f018-446a-b9a5-3822f4630302
disqus_url: http://www.tssci-security.com/archives/2007/10/18/scraping-the-web-for-fun-and-profit/
mod_date: 2007-10-18 20:22:16
parent: 0
post_id: 319
post_type: post
pub_date: 2007-10-18 20:22:14
public: 'yes'
slug: scraping-the-web-for-fun-and-profit
tags:
- Security
template: post.html
title: Scraping the web for fun and profit

Scraping the web for fun and profit
###################################

Crawling and scraping rarely get discussed in a security context because
everyone is too busy creating cute mashups and messaging their MySpace
friends.
I recently read `Webbots, Spiders, and Screen
Scrapers <http://www.nostarch.com/webbots.htm>`_ from NoStarch Press.Â
The author uses PHP-CURL for all his examples, and provides interesting
ideas for scrapers.Â Most of these ideas can be replaced by two tools:
Google Alerts or Dapper.Net.
Google Alerts is one of my favorite web applications yet.Â I use it all
the time, because it is constantly sending me emails about things that I
am interested in.Â Choosing keywords for it is extremely important - a
skill that I believe is not only necessary, but will grow in experience
and have big end rewards.Â There is a limitation of 1,000 keywords - but
I figure you can open more GMail accounts if you want more Google
Alerts.
Another great aspect of Google Alerts in your GMail is not only
searching them, but sorting them into archived tags.Â Then you can
search on the tags as well.Â My personal favorite feature of Google
Alerts is to be notified immediately on certain keywords.Â I have
noticed a very low (within 1-2 minutes, possibly less) amount of lag
time between when the word first appears on a high traffic site to when
it drops into my GMail.
Marcin uses Dapper, and has run into the same legal issues that Pamela
Fox describes in her presentation on `Web 2.0 & Mashups: How People can
Tap into the "Grid" for Fun &
Profit <http://www.slideshare.net/wuzziwug/web-20-mashups-how-people-can-tap-into-the-grid-for-fun-profit-20924/>`_.Â
We talked about how the legality of this probably won't stand up -
unless you are actively leeching content, growing it as parasite
hosting, and/or making money off it somehow.Â It could be against an
AUP, and therefore your account could be disabled - but as long as you
can create a new account I think this sort of activity will continue.
Marcin also got me interested in scraping more when he pointed me
towards `iOpus <http://www.iopus.com>`_ and I found out about
`iMacros <https://addons.mozilla.org/en-US/firefox/addon/3863>`_.Â I had
used a few other similar scraping tools in the past, and wanted to put
together a collection of scraping tools for those who are unable to
benefit from Google Alerts or Dapper.Â For example, at home, locally, on
an Intranet, or other website that is otherwise unreachable by
Googlebots or Dapper scrapes.
Some say that everything started with Perl first, and in the case of
scraping - this is almost certainly the case.Â Randal Schwartz wrote an
article for Linux Magainze almost 5 years ago regarding
`WWW:Mechanize <http://www.linux-mag.com/id/1335/>`_.Â Perl has evolved
to include a few other parsing modules, including HTML::TokeParser,
HTML::PullParser, and [IMO best] XML::Smart::HTMLParser.Â However, most
scrapers in scripting languages evolved or copied from WWW::Mechanize.
In fact, Ruby's primary scraper is called exactly that,
`mechanize <http://mechanize.rubyforge.org/mechanize/>`_.Â It relies on
`Hpricot <http://code.whytheluckystiff.net/hpricot/>`_, an HTML parser
for Ruby, which Jonathan Wilkins also recently blogged about, while
trying to find a `Ruby equivalent to Python's
setattr <http://www.bitland.net/2007/09/17/#setattr_equiv-200709171535>`_.Â
Ruby also has another scraping toolkit, called
`scRUBYt <http://scrubyt.org>`_ that is most certainly worth checking
out, even for a novice.
One of the latest toolkits for parsing comes from the Python camp.Â
Called `pyparsing <http://pyparsing.wikispaces.com>`_, this appears to
be something Google would use to scrape the entire Internet.Â Of course,
other Python users will be familiar with
`BeautifulSoup <http://www.crummy.com/software/BeautifulSoup/>`_, which
has been a very popular and powerful parsing library over the past few
years, mostly because it handles invalid markup well, similarly to
XML::Smart from Perl.
So let's say you have malformed, unvalidated HTML.Â What's the best way
to handle it in the various languages besides Perl and Python?Â Well,
Ruby has `RubyfulSoup <http://www.crummy.com/software/RubyfulSoup/>`_
(same website).Â For language-dependent, one could also use `HTML
TIDY <http://tidy.sourceforge.net>`_ (and here are the
`bindings <http://rubyforge.org/projects/tidy/>`_ for Ruby).Â Sylvan von
Stuppe first mentioned
`NekoHTML <http://people.apache.org/%7Eandyc/neko/doc/html/>`_ on his
website, and then went on to go through his `ideas on scraping using
Groovy <http://sylvanvonstuppe.blogspot.com/2007/08/ive-said-it-before-but.html>`_.Â
In `this exhaustive list of MITM proxies and web application security
testing tool
ideas <http://sylvanvonstuppe.blogspot.com/2007/06/mitm-proxies-and-other-tools.html>`_,
he also mentions that `HTMLUnit <http://htmlunit.sourceforge.net>`_ uses
both the `Commons
HTTPClient <http://jakarta.apache.org/commons/httpclient/>`_ and
NekoHTML.Â We'll talk more about HTMLUnit and related utilities in a
future blog post.
I want to wrap this blog post up here because I'm on my way to San Diego
to speak at Toorcon.Â I'll be covering security testing as it relates to
the three phases of application lifetime: the programming phase, the
testing and pre-deployment phase, and operations/maintenance.Â Hope to
see you there!

