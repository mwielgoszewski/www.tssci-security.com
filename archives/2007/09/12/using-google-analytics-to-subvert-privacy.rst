author: dre
disqus_id: ec16bfca-51e7-4010-8b06-ed3132b949a7
disqus_url: http://www.tssci-security.com/archives/2007/09/12/using-google-analytics-to-subvert-privacy/
mod_date: 2007-09-12 21:50:24
parent: 0
post_id: 303
post_type: post
pub_date: 2007-09-12 18:09:09
public: 'yes'
slug: using-google-analytics-to-subvert-privacy
tags:
- privacy
- security
template: post.html
title: Using Google Analytics to subvert privacy

Using Google Analytics to subvert privacy
#########################################

Marcin decided to take the day off with pay and allow me to share with
you a guest blog post. Thanks, Marcin!

*Hello, my name is Andre and I'm a blogoholic. On with the post!*

With the popularity of MySpace also came the desire to track others who
look at one's profile. MySpace trackers came in mass, and much of the
world was introduced to web analytics.

Around the same time, Google made a purchase that would affect the
webiverse forever. The availability of Google Analytics allows anyone to
track almost any information on any visitors to their content. Free up
to 5M entries per day, with sampling also available as an option (plus
this goes unlimited if combined with a Google Adwords account) - GA is a
simple way for any web administrator to get statistics on their
eyeballs.

But what problems does GA introduce for privacy? Can it be abused? How
will regular users protect their identities and personal information in
light of such a Big Brother move? How bad is this problem?

I became interested in GA after seeing it pop-up in my NoScript alert
boxes constantly, on almost every website that I visit. I also see it in
CookieSafe (I've disabled cookies globally, i.e. all 1st and 3rd party
cookies). In this way, GA can't track my activity. Or can it?

One thing I learned recently is that anyone can download urchin.js (the
Javascript code that activates GA) and host it on their own website.

``<src="https://www.tssci-security.com/localurchin.js" type="text/javascript"> </script> <script type="text/javascript"></script> _uacct = "UA-12345-0"; urchinTracker(); </script>``

By forcing users to use Javascript (and 1st party cookies) to be able to
login to your website, you can then throw your localurchin.js file into
your web pages after login. I often turn on Javascript when I have to
login to a particular website so this would even catch the most careful
of users.

Worse, GA can be configured with their custom segmentation framework.
This allows one of the GA cookies, \_\_utmv, to be filled with any data
that the web administrator wants. In this example, using \_\_utmSetVar()
and HTML forms - the web administrator can store username, email
address, and the user's real name:

``function setSegment(f) { var s1 = f.username.options[f.username.selectedIndex].value; var s2 = f.email.options[f.email.selectedIndex].value; var s3 = f.realname.options[f.realname.selectedIndex].value; __utmSetVar(s1 + ':' + s2 + ':' + s3); return true; }``

``<form onSubmit="javascript:setSegment(this.form);"> User Name: <input name="username" type="text" /> Email: <input name="email" type="text" /> Full Name: <input name="realname" type="text" /> <input type="submit" /> </form>``

This code is certainly against the privacy policies of Google. In order
to maintain some sanity and comply with industry standards in privacy,
Google has restricted these cookies to a default of 6 months lifetime.
I'm not sure, but it appears that one can modify the \_ucto value before
starting \_urchintracker() and set \_ucto to something higher than 6
months (the default value, 15768000, is measured in seconds).

Certain obfuscation practices such as rot13, base64, or even encryption
of these fields could allow storage in the GA system. What will Google's
policymakers do to prevent this from happening? Other interesting fields
could also be stored, such as the actual HTTP referrer fields. You'll
likely want to turn these on in your logs as well. Here's how (in Apache
httpd.conf format):
``LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Accept}i\" \"%{Accept-Encoding}i\" \"%{Host}i\" \"%{Connection}i\" \"%{Referer}i\" \"%{User-Agent}i\"" combined LogFormat "%h %l %u %t \"%r\" %>s %b" common LogFormat "%{Referer}i -> %U" referer``

I'm not exactly sure how to prevent this kind of abusive behavior
(besides to `not use Google <http://scroogle.org/scraper.html>`_). I try
to be cautious about how I use the web, but this could make it very easy
for global abuse. It can put a lot of power into the wrong hands, so to
say. What is Google going to do about it? Not much because they stand to
benefit from it most (ever looked at your google.com cookies?).

A few weeks ago, Marcin posted a blog about `safe
browsing <http://www.tssci-security.com/archives/2007/08/15/8-firefox-extensions-towards-safer-browsing/>`_.
One of the best ways to prevent GA from tracking you is to prevent all
cookies using a toolset like CookieSafe (Marcin mentions CS Lite) and
block all cookies globally, allowing only those sites that you
implicitly trust. Using the Firefox `Web developer
toolbar <https://addons.mozilla.org/en-US/firefox/addon/60>`_ wth
Information -> View Javascript, you can look for potential
localurchin.js code insertions. Javascript obfuscation can make this
more complicated, but fortunately there are some writeups that cover
`decoding javascript <http://handlers.sans.org/dwesemann/decode/>`_.

By browsing with safety in mind, you can prevent your web activities
from being tracked and your personal information stored along with your
daily (and not so daily) web routines. It's trivial to add support of
click tracking and multi-site click tracking using GA. Most of the
material and code from this post was taken from a new "short cut" book
appropriately called `Google
Analytics <http://my.safaribooksonline.com/9780596514969>`_.
