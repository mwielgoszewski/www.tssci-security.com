author: Marcin
disqus_id: 830dccf7-030d-4c56-bc89-821bab7b9f33
disqus_url: http://www.tssci-security.com/archives/2006/12/29/finding-a-middle-between-html-and-plain-text-e-mail/
mod_date: 2006-12-29 17:07:44
parent: 0
post_id: 103
post_type: post
pub_date: 2006-12-29 17:07:44
public: 'yes'
slug: finding-a-middle-between-html-and-plain-text-e-mail
tags:
- security
template: post.html
title: Finding a middle between HTML and plain text E-mail

Finding a middle between HTML and plain text E-mail
###################################################

In response to `Michael at
mcwresearch <http://mcwresearch.com/archives/370>`_ and `Michael (LV) at
terminal23 <http://www.terminal23.net/2006/12/html_in_email.html>`_, I'm
surprised there has been no middle-ground adoption that gives users
ability to format text (colors, bold, italic, underline, bullets, etc),
without the nastiness of HTML and without the plainness of plain text.
It looks like `enriched
text <http://en.wikipedia.org/wiki/Enriched_text>`_ (`RFC
1896 <http://www.rfc-editor.org/rfc/rfc1896.txt>`_) was supposed to do
this, but never seemed to catch on. I've been using the following for
"formatting" in plain text, and it has gotten the point across OK so
far:

#. STRONG = bold
#. \_underline\_ = underlined
#. /italic/ = italic
#. \* = bullet

