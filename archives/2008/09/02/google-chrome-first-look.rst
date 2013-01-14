author: dre
disqus_id: 20d70b88-b30b-470a-b76a-e605ec8a1426
disqus_url: http://www.tssci-security.com/archives/2008/09/02/google-chrome-first-look/
mod_date: 2008-09-02 15:09:05
parent: 0
post_id: 428
post_type: post
pub_date: 2008-09-02 15:06:55
public: 'yes'
slug: google-chrome-first-look
tags:
- Tech
- Security
- News
template: post.html
title: Google Chrome first look

Google Chrome first look
########################

The bad:

-  It's a front-end to WebKit much like Safari, with no
   bells-or-whistles
-  The only add-ons are Web Inspector (from WebKit), Chrome's own Task
   Manager, and Chrome's own Java Debugger (they could have at least
   used Drosera which comes with Web Inspector / WebKit)
-  The Google Updater software it installs runs as a separate process,
   is not a service, and installs itself into the registry to startup at
   boot
-  Privacy policy and default configuration should scare all of us worse
   than Mozilla
-  Appears to somewhat utilize the Google Desktop API
-  Wouldn't let me install Scroogle as the default search

The good:

-  It does separate tabs by process. It gives them different Windows
   PID's, but the parent is still a Chrome process. I am guessing this
   isn't secure for XP, but on Vista it might be fairly solid
-  Appears to support Flash, Java, QuickTime, et al out-of-the-box
   (note: this makes it just as secure as Internet Explorer 7 or Firefox
   on Vista, which we all know have at least a few variations of attacks
   and exposure to at least some vulnerabilities)
-  Does allow future search engines that conform to
   `opensearch.org <http://www.opensearch.org>`_

My analysis:

Google Chrome is DOA (dead on arrival). Nobody is going to use a browser
with such poor support and so completely unpolished. However, I agree
with others' assessments: hopefully Google Chrome will make Mozilla,
Microsoft, and Opera aware of the several features such as tab-process
separation (so that web application developers can also use this
functionality).

Why didn't Google just do a request-for-comments or a peer-reviewed
paper/presentation? What's the point of this loosely running code? I'm
not sure yet, but it is possible that Google has left something out in
their announcements and/or plans for this product.

From a risk assessment perspective, I can tell you that my
threat-modeling spider sense went off from the moment of the download,
was piercing my ears during the install, and became overstimulating
during runtime. If security is the goal of this product, I'm afraid that
Google has definitely failed.
