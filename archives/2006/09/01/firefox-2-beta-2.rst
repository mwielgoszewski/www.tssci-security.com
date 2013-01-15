author: Marcin
disqus_id: afde0428-3aca-48ac-9980-4beb0b07c097
disqus_url: http://www.tssci-security.com/archives/2006/09/01/firefox-2-beta-2/
mod_date: 2006-11-07 17:22:30
parent: 0
post_id: 42
post_type: post
pub_date: 2006-09-01 21:30:43
public: 'yes'
slug: firefox-2-beta-2
tags:
- tech
template: post.html
title: Firefox 2 Beta 2

Firefox 2 Beta 2
################

The Firefox development team released `Firefox 2 Beta
2 <http://developer.mozilla.org/devnews/index.php/2006/08/31/firefox-2-beta-2-milestone-released/>`_
today. I have a couple visual gripes in version 2, like the inability to
easily remove red "X" on tabs through an options menu item, and the
addition of a green "go" arrow to the right of the address bar. I know,
picky picky.

I'll have to fully try it out later, this latest release is too beta for
me. In the mean time I'll be sticking with version 1.5.0.6. If you've
been using it, let me know what you think of it.

**edit: 11/06**

To remove the green "go arrow", go to about:config, and look for:

    browser.urlbar.hideGoButton

and set it to **True**

To remove the red x from individual tabs, and place it on the right hand
side, look for:

    browser.tabs.closeButtons

and set it to **3**

Check out
`http://kb.mozillazine.org/Browser.tabs.closeButtons <http://kb.mozillazine.org/Browser.tabs.closeButtons>`_
for more info on other options

To remove the "List all tabs" button, add this to userChrome.css:

    /\* Remove List Tabs button \*/ .tabs-alltabs-stack,
    .tabs-alltabs-box, .tabs-alltabs-box-animate, .tabs-alltabs-button {
    display: none !important; }
