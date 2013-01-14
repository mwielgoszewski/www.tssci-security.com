author: Marcin
disqus_id: dd53c94d-fd73-496b-b7f7-1db275bcf263
disqus_url: http://www.tssci-security.com/archives/2007/08/15/8-firefox-extensions-towards-safer-browsing/
mod_date: 2008-03-24 22:36:06
parent: 0
post_id: 288
post_type: post
pub_date: 2007-08-15 10:59:38
public: 'yes'
slug: 8-firefox-extensions-towards-safer-browsing
tags:
- Privacy
- Security
template: post.html
title: 8 Firefox extensions towards safer browsing

8 Firefox extensions towards safer browsing
###########################################

Web 2.0 has (re)introduced a wide variety of attack vectors that can be
used against Internet users to steal sensitive information, control the
web browser, and more. The security industry has seen a shift from
concentrating on the servers that house data to protecting the data
itself. Many web applications and social-networking sites today exhibit
flaws that expose them to all sorts of attacks, with much focus on XSS,
CSRF, exploiting the same-origin policy and malicious code execution.

With insight from a couple of web security experts and some further
research, I've compiled a list of must-have Firefox extensions that help
ensure safer and more secure browsing with Firefox. Many of us have
agreed that the security "functionality" these extensions provide should
be built right into Firefox (\*cough\*Mozilla Security Team\*cough\*).
Below, I outline the risk and how each extension goes about mitigating
it.

`Adblock Plus <https://addons.mozilla.org/en-US/firefox/addon/1865>`_

-  **Risk:** Spammers and advertisers are increasingly using more
   malicious ways of getting advertisements to you. We saw in the past
   `hacked ads on
   MySpace <http://blog.washingtonpost.com/securityfix/2006/07/myspace_ad_served_adware_to_mo.html>`_
   and `other
   sites <http://news.netcraft.com/archives/2004/08/06/phishing_attacks_using_banner_ads_to_spread_malware.html>`_
   serving malicious code to infect users.
-  Use Adblock Plus to block advertisements. You can right-click an
   advertisement (or image) and add it to your blacklist. There are also
   subscription filters you can subscribe to that will remove almost all
   advertisements automatically. The subscription filters are maintained
   by individuals like you and I, who hates ads just as much.

`CS Lite <http://forum.softwareblaze.com/viewtopic.php?p=501>`_

-  **Risk:** Some sites set cookies for tracking browser behavior of
   their users across multiple sites. These are cookies usually set by
   third-party advertising companies that have banner ads on the site
   you visited. This can be a privacy risk for Internet users who accept
   cookies globally and are not more selective in which sites they allow
   to set cookies.
-  With CS Lite, you can easily control cookie permissions on a domain
   basis. You can allow, block, or termporarily allow a site to set
   cookies. Initially, set CS Lite to deny cookies globally, and then
   enable them on a per site basis. Using this method, you can eliminate
   all those pesky tracking cookies served by third-party advertisers.

`FoxyProxy <https://addons.mozilla.org/en-US/firefox/addon/2464>`_

-  **Risk:** When you visit a website, your IP address is recorded in an
   access log (unless the site specifically does not keep access logs).
   Sites such as Google tie your search records to your IP address. That
   means every search for information, be it medical remedies, hobbies,
   porn, etc, provides some piece of information about you. This poses
   an ever greater privacy threat than tracking cookies.
-  Use FoxyProxy to manage proxy settings within Firefox. FoxyProxy can
   also be used with Tor, which tunnels your browsing sessions through
   multiple servers around the world. It is much harder to trace your
   browsing habits back to your original IP when you proxy through
   multiple systems as you do on the Tor network.\*For more information
   on proxies, see the `Wikipedia
   entry <http://en.wikipedia.org/wiki/Proxy_server>`_.

`LocalRodeo <http://databasement.net/labs/localrodeo/>`_

-  **Risk:** Anti-DNS pinning (`explained
   here <http://christ1an.blogspot.com/2007/07/dns-pinning-explained.html>`_)
   is an attack vector that has seen been mentioned a lot recently in
   the press. Essentially what happens, is malicious JavaScript can tell
   a browser to connect back to a site with a different IP address than
   originally set. This is especially dangerous when launched against
   sites with areas that are non-public (corporate intranets).
-  Protect yourself from malicious JavaScript using LocalRodeo. You
   might be thinking, "but doesn't NoScript protect me?" See the section
   on NoScript below for more information.\*A more general anti-CSRF
   solution is being worked on
   `here. <http://www.nongnu.org/requestrodeo/>`_

`RefControl <https://addons.mozilla.org/en-US/firefox/addon/953>`_

-  **Risk:** When you click on a link or open a tab to a new site, that
   site can see what page referred you to them in their logs and
   analytics software. This can be a privacy risk since this site now
   knows where you were coming from. Some sites instruct users to post
   non-clickable links or disable HTML in posts to prevent their site
   from showing up in other sites' referrer logs. This could even be a
   liability for some sites, especially those that host links to
   questionable material.
-  Use an extension like RefControl to disable Firefox from sending
   information on the referring site. You can enable referrers on a per
   site basis, if you need too. I have enabled for just such an
   occasion, on digg.com, since clicking on a link to duggmirror.com
   relies on the referrer to redirect you to the appropriate site
   mirror.

`NoScript <https://addons.mozilla.org/en-US/firefox/addon/722>`_

-  **Risk:** Web sites using various scripting languages to increase
   functionality of their websites. Unfortunately, these scripting
   languages open us up to a wide range of attacks such as XSS, XSRF and
   CSRF. Since the script is executed locally versus server-side,
   malicious scripts can be used to compromise the web browser.
-  Use NoScript to block scripts globally. NoScript can be configured to
   allow scripts to run on a per domain basis. NoScript can also help
   prevent XSS attacks because it can identify when a non-trusted site
   tries to inject JavaScript into a trusted site and filters it. But
   what about LocalRodeo? Well, NoScript isn't perfect. It can't be. If
   you allow scripts to run on a domain basis, you risk running
   malicious code. If a site you "trust" is compromised (e.g. cnn.com),
   any code on that site is run. If an attacker has inserted malicious
   JavaScript into the site, you're pwned. With LocalRodeo, you are more
   protected against malicious attacks, such as anti-DNS pinning.
   \*See Andre Gironda's `Reflections on Trusting the Same-Origin
   Policy <http://www.owasp.org/images/9/91/Same-origin.pdf>`_ \*See
   `Same-Origin Policy Part 1: Why we're stuck with things like XSS and
   XSRF/CSRF <http://taossa.com/index.php/2007/02/08/same-origin-policy/>`_

`SafeCache <https://addons.mozilla.org/en-US/firefox/addon/1474>`_

-  **Risk:** Your browser caches various files when it visits a website
   to make subsequent visits load quicker. What we've seen though, are
   `ways of tracking users via
   caches <http://sourcefrog.net/projects/meantime/>`_ and `cache timing
   attacks <http://kuza55.blogspot.com/2007/02/better-web-cache-timing-attack.html>`_.
-  SafeCache segments browser cache by the originating document,
   preventing Site A from using a timing technique to determine if
   you've visisted Site B.\*

`SafeHistory <https://addons.mozilla.org/en-US/firefox/addon/1502>`_

-  **Risk:** CSS can set the color of a link based on whether you have
   clicked or visited the site previously. This can be used against you
   in a `CSS History
   Hack <http://jeremiahgrossman.blogspot.com/2006/08/i-know-where-youve-been.html>`_
   as demonstrated by Jeremiah Grossman.
-  Like SafeCache, SafeHistory segments the marking of visited links on
   the basis of the originating document.\* You might notice that
   NoScript protects you in the POC for both SafeCache and SafeHistory.
   That's true, but go ahead and disable NoScript for the site and
   you're not protected anymore. We need to be careful which sites we
   trust, because though the author may be ethical doesn't mean an
   attacker who compromises their site will be.

Further Reading: \*\ `Protecting Browser State from Web Privacy
Attacks <http://crypto.stanford.edu/sameorigin/sameorigin.pdf>`_

Edit: Changed No-Referrer extension to RefControl
