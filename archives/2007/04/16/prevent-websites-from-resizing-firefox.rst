author: Marcin
disqus_id: e701d7f8-a550-49bd-8a8b-86d2cdc56af3
disqus_url: http://www.tssci-security.com/archives/2007/04/16/prevent-websites-from-resizing-firefox/
mod_date: 2007-04-16 18:50:29
parent: 0
post_id: 204
post_type: post
pub_date: 2007-04-16 18:50:29
public: 'yes'
slug: prevent-websites-from-resizing-firefox
tags:
- Tech
template: post.html
title: Prevent websites from resizing Firefox

Prevent websites from resizing Firefox
######################################

LonerVamp had a post yesterday on preventing Firefox from `sending
referrer
messages <http://www.terminal23.net/2007/04/disable_firefox_referer_option.html>`_.
I'll add to that and show how you can prevent websites from resizing the
browser window. In **about:config**, set the value of
**dom.disable\_window\_move\_resize** to **true**. Also, in
Tools>Options>Content>Advanced, make sure the checkbox for "Move or
resize existing windows" is unchecked.
