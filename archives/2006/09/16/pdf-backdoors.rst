author: Marcin
disqus_id: 5f12dd24-1fa4-4c5b-a847-113b40fb0405
disqus_url: http://www.tssci-security.com/archives/2006/09/16/pdf-backdoors/
mod_date: 2006-09-23 03:21:35
parent: 0
post_id: 50
post_type: post
pub_date: 2006-09-16 22:48:54
public: 'yes'
slug: pdf-backdoors
tags:
- Security
template: post.html
title: PDF Backdoors

PDF Backdoors
#############

I've been following a discussion regarding backdooring PDF files on the
full-disclosure mailing list originally posted by David Kierznowski and
on `eWeek <http://www.eweek.com/article2/0,1895,2016606,00.asp>`_. At
his `site <http://michaeldaw.org/md-hacks/backdooring-pdf-files/>`_, he
discusses two techniques for exploiting Adobe Acrobat Reader and
Professional. Within the POC pdf, there's executable code that will
launch a new browser window when opened. This is just a
proof-of-concept, but it can be used to open web pages containg
malicious code for exploiting holes in IE or Firefox.

The exploit does not affect other PDF readers, like Foxit or xpdf. It
does seem to work on other os' as well, including Ubuntu and Fedora Core
5.
