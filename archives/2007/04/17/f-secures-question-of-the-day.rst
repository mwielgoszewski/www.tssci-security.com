author: Marcin
disqus_id: f7eac01a-2763-4212-9b96-212e333bea02
disqus_url: http://www.tssci-security.com/archives/2007/04/17/f-secures-question-of-the-day/
mod_date: 2007-04-17 01:14:21
parent: 0
post_id: 205
post_type: post
pub_date: 2007-04-17 01:14:21
public: 'yes'
slug: f-secures-question-of-the-day
tags:
- Security
template: post.html
title: F-Secure's Question of the day

F-Secure's Question of the day
##############################

From `F-Secure Weblog : News from the
Lab <http://www.f-secure.com/weblog/archives/archive-042007.html#00001170>`_,
(spoiler: answer below)

    Question of the day: How come you get over 160,000 hits when you
    search Google for
    "`d41d8cd98f00b204e9800998ecf8427e <http://www.google.com/search?q=d41d8cd98f00b204e9800998ecf8427e>`_\ "?

    |164000|

    Pretty much the same thing for
    "`da39a3ee5e6b4b0d3255bfef95601890afd80709 <http://www.google.com/search?q=da39a3ee5e6b4b0d3255bfef95601890afd80709>`_\ ".

    Answers on a self-addressed envelope to |weblog at f-secure.com|

The answer::

    marcin@thinker:~$ touch temp
    marcin@thinker:~$ md5sum temp
    d41d8cd98f00b204e9800998ecf8427e  temp
    marcin@thinker:~$ sha1sum temp
    da39a3ee5e6b4b0d3255bfef95601890afd80709  temp

.. |164000| image:: http://www.f-secure.com/weblog/archives/164000.gif
    :target: http://www.google.com/search?q=d41d8cd98f00b204e9800998ecf8427e
.. |weblog at f-secure.com| image:: http://www.f-secure.com/weblog/archives/Weblog@.gif
