author: Marcin
disqus_id: 24e30765-39f5-476e-92f0-93314bb7d11d
disqus_url: http://www.tssci-security.com/archives/2007/05/31/disable-firefox-automatic-updates/
mod_date: 2007-05-31 14:39:45
parent: 0
post_id: 236
post_type: post
pub_date: 2007-05-31 14:26:45
public: 'yes'
slug: disable-firefox-automatic-updates
tags:
- Security
template: post.html
title: Disable Firefox automatic updates

Disable Firefox automatic updates
#################################

Christopher Soghoian has an excellent remote vulnerability
`disclosure <http://paranoia.dubfire.net/2007/05/remote-vulnerability-in-firefox.html>`_\ report
concerning Firefox Add-ons. More than several extensions from various
3rd parties are vulnerable to man-in-the-middle attacks.

    **Q: Who is at risk?**

    **A:** Anyone who has installed the Firefox Web Browser and one or
    more vulnerable extensions. These include, but are not limited to:
    `Google
    Toolbar <http://www.google.com/tools/firefox/toolbar/FT3/intl/en/>`_,
    `Google Browser
    Sync <http://www.google.com/tools/firefox/browsersync/>`_, `Yahoo
    Toolbar <http://toolbar.yahoo.com/firefox>`_, `Del.icio.us
    Extension <http://del.icio.us/help/firefox/extension>`_, `Facebook
    Toolbar <http://developers.facebook.com/toolbar/>`_, `AOL
    Toolbar <http://browser.cdn.aol.com/toolbar/download-firefox-toolbar.html>`_,
    `Ask.com Toolbar <http://dl.ask.com/toolbar/moz/eula/index.html>`_,
    `LinkedIn Browser
    Toolbar <http://www.linkedin.com/static?key=browser_toolbar_download>`_,
    `Netcraft Anti-Phishing Toolbar <http://toolbar.netcraft.com/>`_,
    `PhishTank SiteChecker <http://phishtanksitechecker.com/>`_.

    **Q: When am I at risk?**

    **A**: When you use a public wireless network, an untrusted Internet
    connection, or a wireless home router with the default password set.

He provides two fixes to the problem:

#. Disable extensions not obtained through https://addons.mozilla.org or
   through an authorized SSL enabled website. (Add-ons obtained through
   the official Mozilla add-on repository and/or secured, SSL enabled
   sites are not vulnerable to MITM attacks)
#. Disable automatic updates of Firefox Add-ons

I disable automatic updates for Firefox on my laptop through
Edit>Preferences>Advanced>Update tab (Tools>Options>Advanced>Update tab
for Windows users).

The thing that gets me about this vulnerability is it doesn't seem very
probable. Around 75% of my computer illiterate friends use Firefox, and
over 90% of them don't even know what an extension or add-on is, since
they were so used to IE and are accustomed to that level of
functionality. They still have the default news RSS feed in the bookmark
toolbar and all bookmarks are under the top directory). It would take an
attacker watching unsecured wifi networks or cafe hotspots all day long
to find someone vulnerable to exploit. Doesn't seem very economical to
me, when there are so many other vectors for attack.
