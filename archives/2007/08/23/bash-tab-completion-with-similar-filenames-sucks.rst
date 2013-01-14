author: Casey
disqus_id: 9030f1c5-0755-490c-bbba-9a0545f8e084
disqus_url: http://www.tssci-security.com/archives/2007/08/23/bash-tab-completion-with-similar-filenames-sucks/
mod_date: 2007-08-23 12:04:39
parent: 0
post_id: 293
post_type: post
pub_date: 2007-08-23 12:04:39
public: 'yes'
slug: bash-tab-completion-with-similar-filenames-sucks
tags:
- Linux
template: post.html
title: Bash Tab Completion with Similar Filenames Sucks

Bash Tab Completion with Similar Filenames Sucks
################################################

Add this to your .bashrc to make tab completion with bash more useful
when handling multiple files with similar names:

``bind '"\t":menu-complete'``

Ctrl-D can be used to exit Bash. This can be very convenient and then
again, almost too convenient. Specify it must be pressed twice before
exiting by adding to .bashrc:

``export IGNOREEOF=1``
