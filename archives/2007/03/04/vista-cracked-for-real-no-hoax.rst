author: Marcin
disqus_id: bdd3a5a6-f91f-4501-a8eb-819b00651742
disqus_url: http://www.tssci-security.com/archives/2007/03/04/vista-cracked-for-real-no-hoax/
mod_date: 2007-03-04 21:46:42
parent: 0
post_id: 173
post_type: post
pub_date: 2007-03-04 21:46:42
public: 'yes'
slug: vista-cracked-for-real-no-hoax
tags:
- tech
- security
template: post.html
title: Vista cracked for real, no hoax

Vista cracked for real, no hoax
###############################

If you haven't heard, a keygen was released that brute-forced the
correct CD key for Windows Vista. Martin McKeay `did the
math <http://www.computerworld.com/blogs/node/5105>`_ and let's just
say, it'll take a really long time for anybody to brute force a key with
available processing power we have today. Fortunately, you don't have to
wait that long. PARADOX has figured a way to bypass activation in
Windows Vista.

It works like this: select manufacturers (Dell, etc) are granted the
right to embed certain license information in hardware, conveniencing
the user and not requiring activation. The mechanism, known as 'SLP 2.0'
('system-locked pre-installation 2.0') has three conditions, a
hardware-embedded BIOS ACPI\_SLIC information signed by Microsoft, a
certificate(an XML file) issued by Microsoft, and a special product key.

To use it, you first install Windows Vista without a product key and
then load a device driver to emulate the "embedded" BIOS, install the
certificate, and then finally a product key.

`The land of
Richard <http://www.uploadcrap.com/?subaction=showcomments&id=1172962283&archive=&start_from=&ucat=&>`_
has full instructions and more details, and finally the files you need.
(I have saved it all in case the site gets taken down...)

btw, md5 checksum for the file is af3bd1cf1d0d10a16a9c3871fda51135
